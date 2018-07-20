# Repository for regression and classification trees

This repository contains:
- Slides that give an introduction to regression and classification [trees.pdf](https://github.com/lancs-dsrg/Trees/blob/master/trees.pdf).
- A directory with the materials for a practical session.
  - The data used in the practical session was obtained from datailluminations available [here](https://github.com/datailluminations).

- We will use the **rpart** library in **R** to build a regression tree.
- I have only just installed this library and have prepared a quick demonstration of building a tree.
  - The tree needs to be pruned to avoid overfitting
  - I have been following the instructions on [this](https://www.statmethods.net/advstats/cart.html) page
  - I have got up to step2.


# demo.R
- We use the **ToyotaCorolla.csv** dataset to build a regression tree to predict the price of the car
- I plot the **KM** (kilometers car has travelled) against **Age**, against each other and colour the points according to the price of the car. This indicates what one may expect, **Age** and **KM** are correlated. Also, the most expensive cars tend to be new, and haven't travelled very far.


