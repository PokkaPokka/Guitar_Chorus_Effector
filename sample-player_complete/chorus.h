/***** chrous.h *****/
#ifndef CHORUS_EFFECT_H
#define CHORUS_EFFECT_H

#include <vector>
#include <cmath>
#include <Bela.h>

class Chorus {
	private:
	    float gMixLevel;
	    float gBaseDelayTime;
	    float gModulationDepth;
	    float gLFOFrequency;
	    float gLFOPhase;
	
	    std::vector<float> gDelayBuffer;
	    int gDelayReadPointer;
	    int gDelayWritePointer;
	    float gSampleRate;
	    
	    void updateLFOPhase();
	    float calculateDelayTime();
    
	public:
	    Chorus(float sampleRate, float baseDelayTime, float modulationDepth, float lfoFrequency);
	
	    // Process one sample
	    float process(float inputSample);
	
	    // Set the mix level
	    void setMixLevel(float mixLevel);
	
	    // Set the base delay time
	    void setBaseDelayTime(float baseDelayTime);
	
	    // Set the LFO frequency
	    void setLFOFrequency(float lfoFrequency);
};

#endif
