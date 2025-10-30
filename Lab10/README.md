# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
We can't just use structural Verilog to implement latches because with behavioral Verilog it would end in loops when you try to make the latches. This just isn't possible to run on an FPGA.

### What is the meaning of always @(*) in a sensitivity block?
It sends all of the inputs into the sensitivty list, meaning it will run when any of those are affected. It starts the block of combinational logic and makes it run.

### What importance is memory to digital circuits?
Memory is important to digital circuits because we need to have data persist. It is how we store and recall data that might need to be used somewhere else.
