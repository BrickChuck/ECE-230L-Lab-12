# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Alessandro Rivera & Andrew Honcharenko
## Summary
In this lab we built one-hot and binary state machines, implemendting D-flipflops to do so. When the clock was set to high, we were able to change from one state to another depending on either w being 0 or 1. 

## Lab Questions

### Compare and contrast One Hot and Binary encodings
One-hot encoding is when only one D-Flipflop is asserted at any time. We need to have one D-Flipflop for every state we have in our machine. They are easier to look at the state logic and follow it since we are looking at our current state, w, and then the output and next state. The negative is that you need a lot of of D-flipflops. 
Binary encoding requires log2(Nstates) amount of D-Flipflops. They are more difficult as we need to look at the value of multiple D-flipflops and consider the value of all D-Flipflops before we make the next state decision. They also have have invalid representations that we do not have in our state machine. 

### Which method did your team find easier, and why?
Making a 6 bit k-map for the one-hot was not fun, so that immediately made the binary one more appealing. 

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.

