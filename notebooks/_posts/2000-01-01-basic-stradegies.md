---
layout: notebook
title: "Basic Causal Inference Strategies for Ignorable "
description: ""
category: research
tags: [S4]
---

**Stratification as a Special Case of Matching**

The most intuitive approach to causal inference is through matching on
predictors. By grouping observations by predictors $X$, we can get estimates of
causal effects within each groups, i.e., conditional average causal effects
\\(E(Y(1)-Y(0)|X=x)\\), and then weight the conditional causal effects by
\\(E(E(Y(1)-Y(0))|X))\\).

Strafitication, AFASIK, is basically equivalent to Matching, with possible
coarsening and approximating when exact matching is unachievable or gives rise to
problems such as sparsity and unbalance.

**Matching as a Special Case of Weighting**

In fact, matching can rearrange into a weighting problem.For example, an matching
estimate of Treatment on Treated effects can be defined as 
<div>
\\[
\hat \theta_{TT, \text{match}}=\frac{y_{i:T_i=1}-\sum_j w_{ij}
y_{j:T_j=0}}{\#{T=1\}}
\\]
</div>


**Non-parametric for Both**

Raw Matching

**Non-parametric for Outcome but Parametric for Missingness**

Propersity-Score based Weighting

**Parametric for Outcome but Non-parametric for Missingness**

Regression

**Parametric for Both**

Doubly Robust
