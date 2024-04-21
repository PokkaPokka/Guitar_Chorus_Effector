#include <Bela.h>
#include <libraries/AudioFile/AudioFile.h>
#include <libraries/Gui/Gui.h>
#include <libraries/GuiController/GuiController.h>
#include "chorus.h"
#include "debouncer.h"
#include <libraries/Biquad/Biquad.h>

#include <array>
#include <memory>

std::string gFilename = "guitarLoop.wav";
std::vector<float> gSampleBuffer;
int gReadPointer = 0;
float gMixLevel = 0;
const unsigned int kButtonPin = 0;
const unsigned int kLedPin1 = 1;  // LED for voiceNum change
const unsigned int kLedPin2 = 2;  // LED when voiceNum is 4
int voiceNum = 4;
Debouncer gDebouncer;
float randomNum;

// An array to store up to 14 Chorus instance for multi-voice chorus
std::array<std::unique_ptr<Chorus>, 14> chorusEffect;

bool setup(BelaContext *context, void *userData) {
	// Set button pin as an input
	pinMode(context, 0, kButtonPin, INPUT);
	
    gSampleBuffer = AudioFileUtilities::loadMono(gFilename);

    // Create an instance of Chorus(sampleRate, delayTime, ModulationDepth, lfoFreqeuncy)
	for (int i = 0; i < 14; i++) {
	    chorusEffect[i].reset(new Chorus(context->audioSampleRate, 0.05, 0.005, 0.5));
	}
	
	gDebouncer.setup(context->audioSampleRate, .05);

    return true;
}

void render(BelaContext *context, void *userData) {
    for (unsigned int n = 0; n < context->audioFrames; n++) {
    	// Read from analog inputs
    	float mixLevel = map(analogRead(context, n/2, 0), 0, 3.3 / 4.096, 0, 100) * 0.01;
		float baseDelayTime = map(analogRead(context, n/2, 1), 0, 3.3 / 4.096, 0.002, 0.004);
		float lfoFrequency = map(analogRead(context, n/2, 2), 0, 3.3 / 4.096, 0.1, 0.8);
		float voiceNumReciprocal = 1.0f / voiceNum;
		int buttonValue = digitalRead(context, n, kButtonPin);
		
		// Debounce the button
		gDebouncer.process(buttonValue);
		
		bool increased = false;
		if( gDebouncer.fallingEdge() ) {
			if (voiceNum >= 14) {
				voiceNum = 4;
				printf("voice num is 4");
			} else {
				voiceNum += 2;
				increased = true;
				printf("voice num +2");
			}
    	}  
    	
    	digitalWrite(context, n, kLedPin1, increased ? HIGH : LOW);
        digitalWrite(context, n, kLedPin2, voiceNum == 4 ? HIGH : LOW);
		
		for (int i = 0; i < voiceNum; i++) {
			randomNum = (rand()%20)/50.0+0.01;
        	chorusEffect[i]->setBaseDelayTime(baseDelayTime);
        	chorusEffect[i]->setLFOFrequency(lfoFrequency * (1 + 0.05 * i));
    	}	
    	
        float mixedSample = 0;
        float originalSample = gSampleBuffer[gReadPointer];

        // Process each voice and mix the output
        for (int i = 0; i < voiceNum; i++) {
            mixedSample += chorusEffect[i]->process(gSampleBuffer[gReadPointer]);
        }
        
        // Mix the original and processed samples
        float out = (1 - mixLevel) * originalSample 
                    + mixLevel * mixedSample * voiceNumReciprocal;
                    
      
        for (unsigned int channel = 0; channel < context->audioOutChannels; channel++) {
            audioWrite(context, n, channel, out);
        }

        // Prevent the read pointer from going out of bound
        gReadPointer = (gReadPointer + 1) % gSampleBuffer.size();
    }
}

void cleanup(BelaContext *context, void *userData) {
    // Clean up the chorus effect instance and turn off LEDs
    for(auto& chorus : chorusEffect) {
        chorus.reset();
    }
    digitalWrite(context, 0, kLedPin1, LOW);
    digitalWrite(context, 0, kLedPin2, LOW);
}
