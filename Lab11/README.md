# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### What is different between edge and level sensitive circuits?

The difference between edge and level sensitive circuits is that in edge level circuits they only 
update when the input changes from 0 to 1. Level circuits care about the input at all times rather
than only on edges.

### Why is it important to declare initial state?

Its important to declare the initial state because the initial state of switch is unknown. If we don't
know our initial state then we wont be able to find out 'Q'.

### What do edge sensitive circuits let us build?

Edge sensitive circuits let us build things that require timing like counters.