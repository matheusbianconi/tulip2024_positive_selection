# Results

The main results of codeml are printed onto a plain text file. It contains a lot of information, and you will be able to find the meaning of each of these in the documentation of codeml.  

Here you will find the results of the four analyses performed in this practical:  
- model M0: `codeml_results_model_M0.txt`  
- model M1a: `codeml_results_model_M1a.txt`  
- model A0: `codeml_results_model_A0.txt`  
- model A1: `codeml_results_model_A1.txt`  
  
(see folder `parameter_files/` for more information about each of the models)  

The log-likelihood values can be found in the line of codeml's output that looks like this:  
`lnL(ntime: 76  np: 84): -12994.043582      +0.000000  `

In this example, the log-likelihood (lnL) is **-12994.043582** and the number of parameters estimated in the analysis (**np**) is 84.  

## Model comparisons  

The Likelihood Ratio Test (LRT) can be calculated as:  

**LRT** = 2 x (lnL1 – lnL0)  
  
lnL0 = Log-likelihood of the null model  
lnL1 = Log-likelihood of the alternative model  

The LRT statistic follows a chi-square distribution with k degrees of freedom, where k = number of extra parameters in the alternative model relative to the null model.  

Only models that are nested can be compared using LRT. In this exercise, the comparisons that can be made are: 

1) M1a vs M0 (k = 1) 
2) A1 vs A0 (k = 1)

## dN/dS estimates  
To extract the estimates of dN/dS, look for these lines in the results file:

- **Model M0:**  
`omega (dN/dS) =  0.10327`

- **Model M1a:**   
`MLEs of dN/dS (w) for site classes (K=2)`  
`p:   0.76579  0.23421`  
`w:   0.04254  1.00000`  
 
  Here, p = proportion sites in that site class. There are two site classes in this model, one under purifying selection (dN/dS on the left), and one under neutral evolution (dN/dS on the right). In this example, 76.6% of the sites are evolving under purifying selection with dN/dS = 0.04, and 23.4% of the sites are evolving neutrally (dN/dS = 1).  

- **Model A0:**  
`MLEs of dN/dS (w) for site classes (K=4)`  
`site class             0        1       2a       2b`  
`proportion       0.76644  0.10190  0.11621  0.01545`  
`background w     0.05305  1.00000  0.05305  1.00000`  
`foreground w     0.05305  1.00000  1.00000  1.00000`

  Here, there are four site classes (0, 1, 2a and 2b), and two types of branches (foreground and background). Note that class 2 in the foreground branches are fixed = 1 in this model.

- **Model A1**  
`MLEs of dN/dS (w) for site classes (K=4)`  
`site class             0        1       2a       2b`  
`proportion       0.77456  0.09330  0.11794  0.01421`  
`background w     0.05763  1.00000  0.05763  1.00000`  
`foreground w     0.05763  1.00000  2.56272  2.56272`  

  Same as above, with the difference that in site classes 2, the ratio dN/dS is allowed to be > 1 in the foreground branches, which happened to be the case in this analysis.

## Sites evolving under positive selection  

One of the most interesting results of codeml is the indication of sites in the protein that might be evolving under positive selection (dN/dS > 1). As you might have seen above, the maximum likelihood analysis report the dN/dS estimates for each of the site classes, and indicate the proportion of sites in each class. However, it does not tell which site(s) in the alignment belong to the class of sites evolving under positive selection. This is done a posteriori by codeml using a Bayesian method (Bayes Empirical Bayes, BEB), which computes the posterior probability of a site belonging to site class 2 in the foregroud branches. You will see that codeml also report the results of another method (NEB), but its use is discouraged by the developer.  
  
The sites evolving under positive selection (if any) will appear at the end of the results file:  
`Bayes Empirical Bayes (BEB) analysis (Yang, Wong & Nielsen 2005. Mol. Biol. Evol. 22:1107-1118)`  
`Positive sites for foreground lineages Prob(w>1):`  
`     5 L 0.992**`  
`    19 E 0.882`   
`    23 E 0.718`  
`    26 Q 0.937`  
`    28 W 0.866`  
`    41 G 0.954*`  
`    44 L 0.829`  
`    50 V 0.993**`  

In each line there are 3 columns, which indicate:  
- The position of the site in the alignment   
- The most common amino acid in that position  
- The posterior probability (0 < *PP* =< 1) that the site belongs to the site class under positive selection (asterisk indicates significance, * > 0.95, ** > 0.99).  

