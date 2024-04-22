#include <Bela.h>
#include <libraries/AudioFile/AudioFile.h>
#include <libraries/Gui/Gui.h>
#include <libraries/GuiController/GuiController.h>
#include "chorus.h"
#include "debouncer.h"

#include <array>
#include <memory>

std::string gFilename = "guitarLoop.wav";
float gMixLevel = 0;
const unsigned int kButtonPin = 0;
int voiceNum = 4;
Debouncer gDebouncer;

// An array to store up to 14 Chorus instance for multi-voice chorus
std::array<std::unique_ptr<Chorus>, 14> chorusEffect;

bool setup(BelaContext *context, void *userData) {
	// Set button pin as an input
	pinMode(context, 0, kButtonPin, INPUT);
	
    // Create an instance of Chorus(sampleRate, delayTime, ModulationDepth, lfoFreqeuncy)
	for (int i = 0; i < 14; i++) {
	    chorusEffect[i].reset(new Chorus(context->audioSampleRate, 0.06, 0.003, 0.5));
	}
	
	gDebouncer.setup(context->audioSampleRate, .05);

    return true;
}

void render(BelaContext *context, void *userData) {
    for (unsigned int n = 0; n < context->audioFrames; n++) {
    	for (int ch = 0; ch < context->audioInChannels; ch++) {
    		float in = audioRead(context, n, ch);
	    	// Read from analog inputs
	    	float mixLevel = map(analogRead(context, n/2, 0), 0, 3.3 / 4.096, 0, 100) * 0.01;
			float baseDelayTime = map(analogRead(context, n/2, 1), 0, 3.3 / 4.096, 0.000, 0.05);
			float lfoFrequency = map(analogRead(context, n/2, 2), 0, 3.3 / 4.096, 0.00, 1.0);
			float voiceNumReciprocal = 1.0f / voiceNum;
			int buttonValue = digitalRead(context, n, kButtonPin);
			
			// Debounce the button
			gDebouncer.process(buttonValue);
			if( gDebouncer.fallingEdge() ) {
				switch (voiceNum) {
				    case 4:
				        voiceNum += 4;
				        break;
				    case 8:
				        voiceNum += 4;
				        break;
				    case 12:
				        voiceNum += 2;
				        break;
				    case 14:
				    	voiceNum = 4;
				    	break;
				    default:
				        voiceNum = 4;
				        break;
				}
	    	}  
			
			for (int i = 0; i < voiceNum; i++) {
			    chorusEffect[i]->setBaseDelayTime(baseDelayTime);
	        	chorusEffect[i]->setLFOFrequency(lfoFrequency * (1 + 0.05 * i));
	    	}	
	    	
	        float mixedSample = 0;
	
	        // Process each voice and mix the output
	        for (int i = 0; i < voiceNum; i++) {
	            mixedSample += chorusEffect[i]->process(in);
	        }
	        
	        // Mix the original and processed samples
	        float out = (1 - mixLevel) * in 
	                    + mixLevel * mixedSample * voiceNumReciprocal;
	      
	        for (unsigned int channel = 0; channel < context->audioOutChannels; channel++) {
	            audioWrite(context, n, channel, out);
	        }
	    }
    }
}

void cleanup(BelaContext *context, void *userData) {
    // Clean up the chorus effect instance
    for(auto& chorus : chorusEffect) {
        chorus.reset();
    }
}