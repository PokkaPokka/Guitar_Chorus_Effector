/***** debouncer.h *****/
#pragma once

class Debouncer {
private:
	// State machine states
	enum {
		kStateLow = 0,
		kStateJustHigh,
		kStateHigh,
		kStateJustLow
	};

public:
	// Constructor
	Debouncer();
	
	// Constructor specifying a sample rate
	Debouncer(float sampleRate, float interval);
	
	// Set the sample rate, used for all calculations
	void setup(float sampleRate, float interval);
	
	// Return the debounced state given the raw input
	bool process(bool rawInput);
	
	// Return whether the button is currently high or low
	bool currentValue();
	
	// Return whether the button just now went high
	bool risingEdge();
	
	// Return whether the button just now went low
	bool fallingEdge();
	
	// Destructor
	~Debouncer();

private:
	// State variables, not accessible to the outside world
	int   currentState_;
	int   previousState_;
	int   counter_;
	int   debounceInterval_;
};