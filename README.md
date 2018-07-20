# Repository for regression and classification trees

## This repository contains:
- Slides that give an introduction to regression and classification [trees.pdf](https://github.com/lancs-dsrg/Trees/blob/master/trees.pdf).

- A directory with the materials for a practical session.
  - The data used in the practical session was obtained from datailluminations available [here](https://github.com/datailluminations). It contains data on the number of Toyota Corolla cars. 
  - In the R script I:
    - Give a very brief exploratory analysis of the data.
    - Build a regression tree with two of the possible 9 predictors.
    - Plot the regression tree fitted.

  - I use the **[rpart](https://www.statmethods.net/advstats/cart.html)** library for regression trees.
    It can be installed with
    '''r
    install.packages("rpart")
    '''