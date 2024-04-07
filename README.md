Project Overview:
Our group propose to develop a guitar chorus effector, which enables user to enhance their guitar sounds with chorus effects, 
providing control over parameters such as mix, delay time, and number of voices via Bela’s physical electronic components control (mix and delay time using knobs, and number of voices using a button). 
The effector reads analog signals from the electric guitar and converts the mixed analog signals to digital signals. 
This project aims to create a user-friendly and customizable tool for musicians to add depth to their guitar tones. 

Resources:
We started from designing a basic chorus effector where there is only one delayed copy based on the function from the Audio Effect book: y[n] = x[n] + gx[n-M[n]].
For a basic chorus effector, the output is the sum of the original input and the delayed copy. The crucial part of the delayed input is the delay length(M[n]). 
The function to get the delay length is shown below:
M[n]=Mo+½MW[1+sin(2πfLFOn/fs)], where Mo is given by the delay control, MW is given by the sweep width.

With the successful implementation of the basic chorus effector, we will move on to expand to a multivoice chorus effector, 
that would be different from the base function as it has more delay voices, the formula is shown below: 
y[n] = x[n] + ∑gx[n-Mk(n)], where k is going from 0 to the number of voices wanted.

The block diagram of the multivoice chorus would have more LFO-delay blocks to implement different voices with different delay length M(n):
For the Low Frequency Oscillator, The frequency of signal rate would be generated between the range[0,3]. 
Each voice would have the effect of pitch shifting.  For the pitch shift calculation, the equation below would be used:
fratio[n] = 1-2πfWcos(2πfn/fs), where fratio[n] would be the ratio of the oscillator’s frequency  and the original signal’s frequency at n. 
When using the pitch shift formula to get the shifted pitch, three parameters would be used(frequency of LFO(sweep rate), sweep width and sample rate). 
