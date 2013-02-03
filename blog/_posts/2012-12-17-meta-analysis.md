---
layout: post
title: "Meta-analysis and Heterogeneity"
description: ""
category: memo
tags: [S4]
---

Meta-analysis is the synthesis of existing evidence to answer statistical questions. The most obvious advantage is that it increases sample size. However, the biggest obstacle in meta-analysis is the heterogeneity in the effects of different studies. Some of the studies might have significant results, while some might have non-significant results; and in a lot of cases, the existing evidences even point to opposite directions. In the presence of heterogeneity, there are conceptual and practical problems in ``synthesizing'' results from different studies. Ironically, this is exactly the situation where meta-analysis should lead us out of the mess.

** Random Effects Models**

 The common practice in meta-analysis in face of heterogeneity is using Random Effects Model, made popular by DerSimonian and Laird. <div> \\[\hat\theta(z,\tilde z;s)=\theta(z,\tilde z;s)+\varepsilon_s, \\] \\[ \theta(z, \tilde z;s)\stackrel{iid}{\sim} G(\theta(z, \tilde z), \cdot)\\] </div>

From a Bayesian perspective, this is a multilevel model, and can be fitted using JAGS or Stan. Admittedly, most people are familiar with the frequentist point of view and call this a Random Effects model. DerSimonian and Laird gave a simple non-iterative method of estimating \\(\theta(z, \tilde z)\\), which is essentially a compromise between taking average of the effect estimates and a weighted mean of the effect estimates with the weights reciprocally proportional to sample sizes of the studies. Random Effects model is considered an improvement over the so-called fixed effects model (warning: here the fixed effects model is not the same as in the panel data literature), which considers the true effects of the studies are the same. Note that the fixed effects estimate is exactly the sample-size-weighted mean. So what most applied researchers do when conducting a meta-analysis is first perform a test of heterogeneity of the estimated effect sizes, and if heterogeneity exists, then go with the random effects model, otherwise, go with the fixed effects model.

We feel uneasy with this standard practice. First, it is very common that the heterogeneity test is underpowered, such as when the number of trials is small or the events of interest are sparse. Second, in the presence of heterogeneity, we don't think brushing it off and throwing it in the bin known as the random effects tells us anything useful about the nature of the variability. Huge heterogeneity might undermine the relevance of the results of our analysis; and sometimes, the nature of the variation itself might be of substantive interest. 

** Ideal Situations **




