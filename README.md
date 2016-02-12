# AlienCategorization

Data and Analysis Scripts pertaining to the "The social route to abstraction: interaction enhances category learning through increasing levels of complexity" manuscript.

### AlienData.txt

It contains the data from the experiment.

- condition: whether Individual (1) or Dyad (2)
- subject: Participant ID
- session: increasing level of complexity (1-3)
- cycle: within each session the same 32 aliens are presented three times (3 cycles)
- trial: the sequence of trials within each session
- test: whether the trial is part of the training (0) or test phase (1)
- stimulus: ID of the specific alien presented (file name of the image)
- category: ID of the category to which the alien belongs (1 is no-danger/no-nutrition, 2 is no-danger/nutrition, 3 is danger/no-nutrition, 4 is danger/nutrition)
- response: response provided by the participant (1 is ignore, 2 is tap, 3 is shoot, 4 is shoot and tap)
- dangerous: whether the alien is dangerous (1) or not (0)
- nutricious: whether the alien is nutricious (1) or not (0)
- correct: whether the response was correct (1) or not (0)
- cumulative: cumulative score of the participant
- RT: reaction time in millisecond (the time taken to respond to the stimulus)


### AlienSurvey.txt

It contains the data from the post-experiment questionnaire

- Pair: indicates the pair ID. Notice that also individuals have a pair number (to enable the analysis of pair random effect in the models)
- Subject: indicates the individual participant ID
- Condition: indicates whether Individual or Dyad (Pair)
- Effort: level of self-reported effort
- Motivation: level of self-reported motivation

### AnalysisReport.Rmd

Contains the R code to run the analyses reported in the manuscript and generate the plots. The R code is formatted and commented through RMarkDown.


### AnalysisReport.html

Contains the output of the R code, in html format
