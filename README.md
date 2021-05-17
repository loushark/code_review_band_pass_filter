
### Audio plugin company

musicians use filters to change how their tracks sound

build a band pass filter

inputs given: sound wave, min freq, max freq
sound_wave: [array of frequencies]
freq is an integer

44,100 frequencies = 1 full second of music
Filtered in under 100 ms


input                   |    output   
[10], 10, 30            |  [10]
[10], 20, 30            |  [20]
[30], 10, 20            |  [20]

[10, 20, 30], 10, 30    | [10, 20, 30]
[10, 20, 30], 15, 30    | [15, 20, 30]
[10, 20, 30], 10, 20    | [10, 20, 20]

[]                      | raise error

min default: 40
max defualt: 1000
