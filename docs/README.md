# problem-set

This is the repository of all the problems. Problems are specified using the [markdown syntax] and follow this structure.
```
problem-set
        |___<contest-name>
                        | README.md
                        |____<problem-name>
                                        | README.md
                                        |___inputs
                                        |       |___in0.txt
                                        |       |___in1.txt
                                        |___outputs
                                                |___out0.txt
                                                |___out1.txt
```

# Where are all the problems ?

[https://open-competitive-coding.github.io/problem-set/contests/](https://open-competitive-coding.github.io/problem-set/contests/)

## How to submit a problem ?
Create a new contest folder and add the problems in the specified format. We will take care of the rest.

Say you have made the above folder structure and you want to submit a problem :
```
make problem-name=1-A
```

The problem statement for an example contest say `1` with problem name `A` will be accessible at : https://open-competitive-coding.github.io/problem-set/1/A/

and similarly for other contest and problems.

## Current State
This project is at its very early stages and requires a lot of contribution from the open-source community. So feel free to send a Pull Request to enable any of the features.
- [x] Accepts basic problem set.
- [ ] Add validations on the problem-submitted.
- [ ] Add setter and tester solutions.
- [ ] Add Encryption.

[markdown syntax]: https://guides.github.com/features/mastering-markdown/
