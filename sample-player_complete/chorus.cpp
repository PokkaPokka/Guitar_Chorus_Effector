#include "chorus.h"
#include <cmath> // for sin and M_PI

Chorus::Chorus(float sampleRate, float baseDelayTime, float modulationDepth, float lfoFrequency)
    : gBaseDelayTime(baseDelayTime), gModulationDepth(modulationDepth),
      gLFOFrequency(lfoFrequency), gLFOPhase(0.0), gSampleRate(sampleRate)
{
    // Initialize delay buffer with maximum possible delay time
    gDelayBuffer.resize(sampleRate * (baseDelayTime + modulationDepth), 0.0);
    gDelayWritePointer = 0;
    gLastOutputSample = 0.0f;
    // Initialize the sine table
    for (int i = 0; i < 360; i++) {
        sineTable.push_back(sin(2.0 * M_PI * i / 360.0));
    }
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

    // Use linear interpolation to calculate the output sample
    float outputSample = (1 - frac) * gDelayBuffer[readPointer] + frac * gDelayBuffer[nextReadPointer];

    // Apply a small amount of smoothing to the output sample
    outputSample = gLastOutputSample * 0.9f + outputSample * 0.1f;

    // Store the current output sample for the next iteration
    gLastOutputSample = outputSample;

    return outputSample;
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
        gLFOPhase = 0.0; // Use phase wrapping
}

float Chorus::calculateDelayTime()
{
    float index = gLFOPhase * 360.0;
    int indexInt = static_cast<int>(index);
    float frac = index - indexInt; // fractional part of index

    // Calculate the next index position with wrap-around
    int nextIndex = (indexInt + 1) % 360;

    // Linearly interpolate between the values at the index and nextIndex positions
    float interpolatedValue = (1 - frac) * sineTable[indexInt] + frac * sineTable[nextIndex];

    return gBaseDelayTime + gModulationDepth * interpolatedValue;
}