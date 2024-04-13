#include <Bela.h>
#include <libraries/AudioFile/AudioFile.h>
#include <libraries/Gui/Gui.h>
#include <libraries/GuiController/GuiController.h>
#include "chorus.h"

Gui gui;
GuiController gGuiController;

std::string gFilename = "guitarLoop.wav";
std::vector<float> gSampleBuffer;
int gReadPointer = 0;

// A pointer to the Chrous instance
Chorus* chorusEffect;

bool setup(BelaContext *context, void *userData)
{
    gSampleBuffer = AudioFileUtilities::loadMono(gFilename);

    if (gSampleBuffer.size() == 0)
    {
        rt_printf("Error loading audio file '%s'\n", gFilename.c_str());
        return false;
    }

    rt_printf("Loaded the audio file '%s' with %d frames (%.1f seconds)\n",
              gFilename.c_str(), gSampleBuffer.size(),
              gSampleBuffer.size() / context->audioSampleRate);

    gui.setup(context->projectName);
    gGuiController.setup(&gui, "Chorus Controller");

    // Add GUI controls
    gGuiController.addSlider("Mix level", 50, 0, 100, 0);
    gGuiController.addSlider("Delay time", 0.02, 0.02, 0.05, 0);
    gGuiController.addSlider("LFO frequency", 0.1, 0.1, 3, 0);

    // Create an instance of Chorus(sampleRate, delayTime, ModulationDepth, lfoFreqeuncy)
    chorusEffect = new Chorus(context->audioSampleRate, 0.05, 0.01, 0.5);

    return true;
}

//*********************************************************************************//
//*********************************************************************************//


void render(BelaContext *context, void *userData)
{
	// Set parameter values
    chorusEffect->setMixLevel(gGuiController.getSliderValue(0) * 0.01);
    chorusEffect->setBaseDelayTime(gGuiController.getSliderValue(1));
    chorusEffect->setLFOFrequency(gGuiController.getSliderValue(2));

    for (unsigned int n = 0; n < context->audioFrames; n++)
    {
        float mixedSample = chorusEffect->process(gSampleBuffer[gReadPointer]);

        for (unsigned int channel = 0; channel < context->audioOutChannels; channel++)
        {
            audioWrite(context, n, channel, mixedSample);
        }

		// Prevent the read pointer from going out of bound
        gReadPointer = (gReadPointer + 1) % gSampleBuffer.size();
    }
}

void cleanup(BelaContext *context, void *userData)
{
    // Clean up the chorus effect instance
    delete chorusEffect;
}
