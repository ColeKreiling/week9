# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Compare and contrast One Hot and Binary encodings
One hot encodings uses the number of states you need as d flip flops and only one is true at a given time. Binary encodings are simpler and smaller requiring less flip flops but requires splitting it into bits and solving the k maps.

### Which method did your team find easier, and why?
We found one hot to be much easier as it didn't require K Maps and the solution was fairly simple since it was only 5 states.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
You would use binary encoding to use the least amount of flip flops, but one hot uses more but is faster. One hot is faster than binary and is easier to implement

