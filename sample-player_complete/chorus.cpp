#include "chorus.h"
#include <cmath> // for sin and M_PI

Chorus::Chorus(float sampleRate, float baseDelayTime, float modulationDepth, float lfoFrequency)
    : gBaseDelayTime(baseDelayTime), gModulationDepth(modulationDepth),
      gLFOFrequency(lfoFrequency), gLFOPhase(0.0), gSampleRate(sampleRate)
{
    // Initialize delay buffer with maximum possible delay time
    gDelayBuffer.resize(sampleRate * (baseDelayTime + modulationDepth), 0.0);
    gDelayWritePointer = 0;
}

float Chorus::process(float inputSample)
{
    // Update the LFO phase
    updateLFOPhase();

   // Calculate the current delay time using LFO
    float currentDelayTime = calculateDelayTime();
    float delaySamples = currentDelayTime * gSampleRate;

    // Calculate read pointer position with wrap-around
    int readPointer = static_cast<int>(delaySamples);
    float frac = delaySamples - readPointer; // fractional part of delaySamples
    readPointer = (gDelayWritePointer - readPointer + gDelayBuffer.size()) % gDelayBuffer.size();

    // Calculate the next read pointer position
    int nextReadPointer = (readPointer + 1) % gDelayBuffer.size();

    // Write the incoming sample to the delay buffer
    gDelayBuffer[gDelayWritePointer] = inputSample;

    // Increment write pointer with wrap-around
    gDelayWritePointer = (gDelayWritePointer + 1) % gDelayBuffer.size();

    return (1 - frac) * gDelayBuffer[readPointer] + frac * gDelayBuffer[nextReadPointer];
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
        gLFOPhase -= 1.0; // Use phase wrapping
}

float Chorus::calculateDelayTime()
{
    return gBaseDelayTime + gModulationDepth * sin(2.0 * M_PI * gLFOPhase);
}