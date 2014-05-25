## Codebook

Codebook for tidy.txt dataset, produced by R script from this repository. Here is list of variables from the dataset:

|    | names                                             |
|----|---------------------------------------------------|
| 1  | activity                                          |
| 2  | subject                                           |
| 3  | timebodyacceleration.mean...x                     |
| 4  | timebodyacceleration.mean...y                     |
| 5  | timebodyacceleration.mean...z                     |
| 6  | timegravityacceleration.mean...x                  |
| 7  | timegravityacceleration.mean...y                  |
| 8  | timegravityacceleration.mean...z                  |
| 9  | timebodyaccelerationjerk.mean...x                 |
| 10 | timebodyaccelerationjerk.mean...y                 |
| 11 | timebodyaccelerationjerk.mean...z                 |
| 12 | timebodygyroscope.mean...x                        |
| 13 | timebodygyroscope.mean...y                        |
| 14 | timebodygyroscope.mean...z                        |
| 15 | timebodygyroscopejerk.mean...x                    |
| 16 | timebodygyroscopejerk.mean...y                    |
| 17 | timebodygyroscopejerk.mean...z                    |
| 18 | timebodyaccelerationmagnitude.mean..              |
| 19 | timegravityaccelerationmagnitude.mean..           |
| 20 | timebodyaccelerationjerkmagnitude.mean..          |
| 21 | timebodygyroscopemagnitude.mean..                 |
| 22 | timebodygyroscopejerkmagnitude.mean..             |
| 23 | frequencybodyacceleration.mean...x                |
| 24 | frequencybodyacceleration.mean...y                |
| 25 | frequencybodyacceleration.mean...z                |
| 26 | frequencybodyaccelerationjerk.mean...x            |
| 27 | frequencybodyaccelerationjerk.mean...y            |
| 28 | frequencybodyaccelerationjerk.mean...z            |
| 29 | frequencybodygyroscope.mean...x                   |
| 30 | frequencybodygyroscope.mean...y                   |
| 31 | frequencybodygyroscope.mean...z                   |
| 32 | frequencybodyaccelerationmagnitude.mean..         |
| 33 | frequencybodybodyaccelerationjerkmagnitude.mean.. |
| 34 | frequencybodybodygyroscopemagnitude.mean..        |
| 35 | frequencybodybodygyroscopejerkmagnitude.mean..    |
| 36 | timebodyacceleration.std...x                      |
| 37 | timebodyacceleration.std...y                      |
| 38 | timebodyacceleration.std...z                      |
| 39 | timegravityacceleration.std...x                   |
| 40 | timegravityacceleration.std...y                   |
| 41 | timegravityacceleration.std...z                   |
| 42 | timebodyaccelerationjerk.std...x                  |
| 43 | timebodyaccelerationjerk.std...y                  |
| 44 | timebodyaccelerationjerk.std...z                  |
| 45 | timebodygyroscope.std...x                         |
| 46 | timebodygyroscope.std...y                         |
| 47 | timebodygyroscope.std...z                         |
| 48 | timebodygyroscopejerk.std...x                     |
| 49 | timebodygyroscopejerk.std...y                     |
| 50 | timebodygyroscopejerk.std...z                     |
| 51 | timebodyaccelerationmagnitude.std..               |
| 52 | timegravityaccelerationmagnitude.std..            |
| 53 | timebodyaccelerationjerkmagnitude.std..           |
| 54 | timebodygyroscopemagnitude.std..                  |
| 55 | timebodygyroscopejerkmagnitude.std..              |
| 56 | frequencybodyacceleration.std...x                 |
| 57 | frequencybodyacceleration.std...y                 |
| 58 | frequencybodyacceleration.std...z                 |
| 59 | frequencybodyaccelerationjerk.std...x             |
| 60 | frequencybodyaccelerationjerk.std...y             |
| 61 | frequencybodyaccelerationjerk.std...z             |
| 62 | frequencybodygyroscope.std...x                    |
| 63 | frequencybodygyroscope.std...y                    |
| 64 | frequencybodygyroscope.std...z                    |
| 65 | frequencybodyaccelerationmagnitude.std..          |
| 66 | frequencybodybodyaccelerationjerkmagnitude.std..  |
| 67 | frequencybodybodygyroscopemagnitude.std..         |
| 68 | frequencybodybodygyroscopejerkmagnitude.std..     |

_

First two variables are distinct:

+ _activity_ refers to type of activity performed in a test
+ _subject_ refers to number of subject who performed an activity

The next 66 variables are results of different tests using smartphones. They can be separated into:

+ _averages_ - variables with word "mean" near the end
+ _standard deviations_ - variables with abbreviation "std" near the end.