#include "chorus.h"

Chorus::Chorus(float sampleRate, float baseDelayTime, float modulationDepth, float lfoFrequency)
    : gMixLevel(0.5), gBaseDelayTime(baseDelayTime), gModulationDepth(modulationDepth), gLFOFrequency(lfoFrequency), gLFOPhase(0.0), gSampleRate(sampleRate)
{
    // Initialize delay buffer with maximum possible delay time
    gDelayBuffer.resize(sampleRate * (baseDelayTime + modulationDepth), 0.0);
    gDelayReadPointer = 0;
    gDelayWritePointer = 0;
}

float Chorus::process(float inputSample)
{
    // Calculate the current delay time
    float currentDelayTime = calculateDelayTime();
    int delaySamples = currentDelayTime * gSampleRate;
    // Prevent the read pointe from going out of bound
    gDelayReadPointer = (gDelayWritePointer - delaySamples + gDelayBuffer.size()) % gDelayBuffer.size();

    // Get delayed sample and update the delay buffer
    float delayedSample = gDelayBuffer[gDelayReadPointer];
    gDelayBuffer[gDelayWritePointer] = inputSample;

    // Update pointers
    gDelayWritePointer = (gDelayWritePointer + 1) % gDelayBuffer.size();

    // Calculate the mixed sample
    float mixedSample = (1.0 - gMixLevel) * inputSample + gMixLevel * delayedSample;

    // Update LFO phase
    updateLFOPhase();

    return mixedSample;
}

void Chorus::setMixLevel(float mixLevel)
{
    gMixLevel = mixLevel;
}

void Chorus::setBaseDelayTime(float baseDelayTime)
{
    gBaseDelayTime = baseDelayTime;
}

void Chorus::setLFOFrequency(float lfoFrequency)
{
    gLFOFrequency = lfoFrequency;
}

void Chorus::updateLFOPhase()
{
    gLFOPhase += gLFOFrequency / gSampleRate;
    if (gLFOPhase >= 1.0)
        gLFOPhase = 0.0;
}

float Chorus::calculateDelayTime()
{
    return gBaseDelayTime + gModulationDepth * sinf(2.0 * M_PI * gLFOPhase);
}
