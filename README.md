This repository contains materials from workshops taught by [Jason Bryer](http://bryer.org).

### Intro to Propensity Score Analysis

Date: February 28, 2019, 6:00 to 8:30pm  
Location: University at Albany, School of Education, Room 335  
https://www.meetup.com/Albany-R-Users-Group/events/258674208/  
[Slides](http://htmlpreview.github.io/?https://github.com/jbryer/talks/blob/master/2018-01-IntroPredictiveModeling/IntroPredictiveModeling.pdf)

The use of propensity score methods (Rosenbaum & Rubin, 1983) for estimating causal effects in observational studies or certain kinds of quasi-experiments has been increasing in the social sciences (Thoemmes & Kim, 2011) and in medical research (Austin, 2008) in the last decade. Propensity score analysis (PSA) attempts to adjust selection bias that occurs due to the lack of randomization. Analysis is typically conducted in two phases where in phase I, the probability of placement in the treatment is estimated to identify matched pairs or clusters so that in phase II, comparisons on the dependent variable can be made between matched pairs or within clusters. R (R Core Team, 2012) is ideal for conducting PSA given its wide availability of the most current statistical methods vis-à-vis add-on packages as well as its superior graphics capabilities.

This talk will provide a theoretical overview of propensity score methods as well as illustrations and discussion of PSA applications. Methods used in phase I of PSA (i.e. models or methods for estimating propensity scores) include logistic regression, classification trees, and matching. Discussions on appropriate comparisons and estimations of effect size and confidence intervals in phase II will also be covered. The use of graphics for diagnosing covariate balance as well as summarizing overall results will be emphasized.


### Intro to Predictive Modeling

Date: January 22, 2019, 6:00 to 8:30pm  
Location: University at Albany, School of Education, Room 346  
https://www.meetup.com/Albany-R-Users-Group/events/257895605/  

This workshop will introduce the basic concepts and procedures for predictive modeling in R including:

* How to evaluate the quality of predictive models using confusion matrices and ROC curves
* Classification and regression trees (CART methods)
* Ensemble methods (e.g. random forests, boosting, bagging)
* Discussion of issues and limitations of "black box" predictive modeling
