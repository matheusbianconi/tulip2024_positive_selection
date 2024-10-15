## Results

The main results of codeml are printed onto a plain text file. It contains a lot of information, and you will be able to find the meaning of each of these in the documentation of codeml.  

Here you will find the results of the four analyses performed in this practical:  
- model M0: `codeml_results_model_M0.txt`  
- model M1a: `codeml_results_model_M1a.txt`  
- model A0: `codeml_results_model_A0.txt`  
- model A1: `codeml_results_model_A1.txt`  
  
(see folder `parameter_files/` for more information about each of the models)  

The log-likelihood values can be found in the line of codeml's output that looks like this:  
`lnL(ntime: 76  np: 84): -12994.043582      +0.000000  `

In this example, the log-likelihood (lnL) is **-12994.043582** and the number of parameters estimated by the analysis (**np**) is 84.  

### Model comparisons  

The Likelihood Ratio Test (LRT) can be calculated as:  

**LRT** = 2 x (lnL1 – lnL0)  
  
lnL0 = Log-likelihood of the null model  
lnL1 = Log-likelihood of the alternative model  

The LRT statistic follows a chi-square distribution with k degrees of freedom, where k = number of extra parameters in the alternative model relative to the null model.  

Only models that are nested can be compared using LRT. In this exercise, the comparisons that can be made are: 

1) M1a vs M0 (k = 1) 
2) A1 vs A0 (k = 1)

