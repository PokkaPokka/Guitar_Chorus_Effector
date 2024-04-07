#include <Bela.h>
#include <libraries/AudioFile/AudioFile.h>
#include <libraries/Gui/Gui.h>
#include <libraries/GuiController/GuiController.h>
#include <cmath>

Gui gui;
GuiController gGuiController;

std::string gFilename = "guitarLoop.wav";
std::vector<float> gSampleBuffer;
int gReadPointer = 0;

float gMixLevel = 0.5;
float gBaseDelayTime = 0.03;
float gModulationDepth = 0.01; // Maximum deviation from the base delay time
float gLFOFrequency = 0.5;     // Frequency of the LFO in Hz
float gLFOPhase = 0.0;         // Current phase of the LFO

std::vector<float> gDelayBuffer;
int gDelayReadPointer = 0;
int gDelayWritePointer = 0;

bool setup(BelaContext *context, void *userData)
{
    gSampleBuffer = AudioFileUtilities::loadMono(gFilename);

    if (gSampleBuffer.size() == 0)
    {
        rt_printf("Error loading audio file '%s'\n", gFilename.c_str());
        return false;
    }

    // Initialize delay buffer with maximum possible delay time
    gDelayBuffer.resize(context->audioSampleRate * (gBaseDelayTime + gModulationDepth), 0.0);

    rt_printf("Loaded the audio file '%s' with %d frames (%.1f seconds)\n",
              gFilename.c_str(), gSampleBuffer.size(),
              gSampleBuffer.size() / context->audioSampleRate);

    gui.setup(context->projectName);
    gGuiController.setup(&gui, "Chorus Controller");

    gGuiController.addSlider("Mix level", 50, 0, 100, 0);
    gGuiController.addSlider("Delay time", 0.02, 0.02, 0.03, 0);
    gGuiController.addSlider("LFO frequency", 0.1, 0.1, 3, 0);

    return true;
}

void render(BelaContext *context, void *userData)
{
    gMixLevel = gGuiController.getSliderValue(0) * 0.01;
    gBaseDelayTime = gGuiController.getSliderValue(1);
    gLFOFrequency = gGuiController.getSliderValue(2);

    for (unsigned int n = 0; n < context->audioFrames; n++)
    {
        float original = gSampleBuffer[gReadPointer];

        // Calculate the current delay time using the LFO
        float currentDelayTime = gBaseDelayTime + gModulationDepth * sinf(2.0 * M_PI * gLFOPhase);
        int delaySamples = currentDelayTime * context->audioSampleRate;
        int delayReadPointer = (gDelayWritePointer - delaySamples + gDelayBuffer.size()) % gDelayBuffer.size();

        float delayed = gDelayBuffer[delayReadPointer];
        gDelayBuffer[gDelayWritePointer] = original;

        gDelayWritePointer = (gDelayWritePointer + 1) % gDelayBuffer.size();
        gReadPointer = (gReadPointer + 1) % gSampleBuffer.size();

        // Update the LFO phase
        gLFOPhase += gLFOFrequency / context->audioSampleRate;
        if (gLFOPhase >= 1.0)
            gLFOPhase = 0;

        float mixed = (1.0 - gMixLevel) * original + gMixLevel * delayed;

        for (unsigned int channel = 0; channel < context->audioOutChannels; channel++)
        {
            audioWrite(context, n, channel, mixed);
        }
    }
}

void cleanup(BelaContext *context, void *userData)
{
}