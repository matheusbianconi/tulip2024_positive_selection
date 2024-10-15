## Defining codeml parameters  

Codeml requires the user to predefine the model and the set of parameters to be used for analysis. This is done using the codeml 'control files', which are plain text files with all parameter values that can be used by the program.  

Here you will find 4 control files corresponding to each of the 4 models tested in this class:  
- **model M0 ('one ratio')**: `codeml_parameters_model_M0.ctl`  
The simplest model, assumes one dN/dS for all sites and branches (homogeneous evolutionary pressure through the history of the gene).
     
- **model M1a ('nearly neutral')**: `codeml_parameters_model_M1a.ctl`  
Assumes two site classes (0 and 1), one under purifying selection (dN/dS < 1) and one under neutral evolution (dN/dS = 1) for all branches. This is often used as a null model for site models of positive selection.
  
- **model A0 (branch-site, null)**: `codeml_parameters_model_A0.ctl`  
Assumes four site classes (0, 1, 2a, 2b), with different w (dN/dS) for foreground and brackground branches. Here, site class 2 has dN/dS fixed = 1, and it is the adequate null model to test for positive selection using model A1.
  
- **model A1 (branch-site, alternative)**: `codeml_parameters_model_A1.ctl`  
Assumes four site classes (0, 1, 2a, 2b), with different w (dN/dS) for foreground and brackground branches.

=====================================================  
**Site classes**:  
- **Site class 0**: Sites in this class are under purifying selection (0 < dN/dS < 1) in both background and foreground branches.  
- **Site class 1**: In this class, sites are undergoing neutral evolution and dN/dS is fixed = 1.  
- **Site class 2a**: Sites in this class are under *positive selection (dN/dS >= 1) in the foreground branches*, and *under purifying selection (0 < dN/dS < 1) in the background branches*.  
- **Site class 2b**: Sites in this class are under *positive selection (dN/dS >= 1) in the foreground branches*, and *undergoing neutral evolution (dN/dS = 1) in the background branches*.
  
=====================================================
  
Note that the first 3 lines in each file contain the location of the files (alignment, tree and output). Remember to change this to the correct path to the file when running your own analyses! 

