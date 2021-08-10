
### Audio plugin company

musicians use filters to change how their tracks sound
  
build a band pass filter
  
inputs given: sound wave, min freq, max freq  
sound_wave: [array of frequencies]  
freq is an integer  
  
min default: 40  
max defualt: 1000  


  | tested | input                   |    output   |
  | ---- | ----|----|
 |[x] | [10], 10, 30            |  [10] |
|[x] | [10], 20, 30            |  [20] |
|[x] |[30], 10, 20            |  [20] |
|[x] |[10, 20, 30], 10, 30    | [10, 20, 30] |
|[x] |[10, 20, 30], 15, 30    | [15, 20, 30] |
|[x] |[10, 20, 30], 10, 20    | [10, 20, 20] |
|[x] |[10, 20, 30], 20, 25    | [20, 20, 25] |
|[x] | [] no soundwave             | raise error |
|[x] | [1010, 20, 30]            | [1000, 40, 40] |


------

more requirements:

  44,100 frequencies = 1 full second of music
  Filtered in under 100 ms

-----


research:
- testing against time




feedback:
- bias in tests... vary test cases
  -> change freq values in arrays
- commit every refactoring, not just in refactoring phase
  -> commit messages more descriptive
  -> don't talk about tests, only implementation
  -> unless grouping tests under context
- refactoring the if to ternary, too complicated not easy to change
- learn other matchers, time, exceptions
- debugging, use irb, test assumptions
