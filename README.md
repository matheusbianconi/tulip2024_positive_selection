# Using comparative genomics to study adaptive evolution in plants  
** TULIP 1st Year of International Master of Functional Biology & Ecology  **  
16 October 2024 - LRSV/LIPME, Toulouse  

## Exercise: detecting positive selection using codeml (PAML)  
In this practical we use a modified version of the dataset of Christin et al. (2007) to test for the occurrence of positive selection in a gene related to C4 photosynthesis in grasses.  

The paper:  
- <b>Christin P-A, Salamin N, Savolainen V, Duvall MR, Besnard G</b>. 2007. C4 Photosynthesis Evolved in Grasses via Parallel Adaptive Genetic Changes. Current Biology 17: 1241–1247. (https://doi.org/10.1016/j.cub.2007.06.036)  

  
Material:  
- Phylogenetic tree: `data/species_tree.nwk`
- Protein alignment: `data/alignment_protein.fasta`
- Codon alignment: `data/alignment_codons.fasta`
- Metadata: `metadata.tsv`
- Codeml parameter files: `parameter_files/`
- Results: `results/`
- Lecture slides: `lecture_comparative_genomics.pdf`

-----------------------------------------------------------------------------------------------------  
  
The program <b>codeml</b> is part of a suite of programs named <b>PAML</b> and was developed by Prof. Ziheng Yang (University College London).   
You can download PAML at https://github.com/abacus-gene/paml or http://abacus.gene.ucl.ac.uk/software/paml.html  
  
The current version of the program is described in this paper:  
  
- <b>Yang Z</b>. 2007. PAML 4: Phylogenetic Analysis by Maximum Likelihood, Molecular Biology and Evolution, 24:1586–1591 (https://doi.org/10.1093/molbev/msm088)  
  
The program codeml is not the most user-friendly, and there is a learning curve for you to get familiar with it. There are some tutorials available online, and there is one paper recently published by Yang's group that can be particularly useful:  
  
- <b>Álvarez-Carretero S, Kapli P, Yang Z</b>. 2023. Beginner’s Guide on the Use of PAML to Detect Positive Selection. Molecular Biology and Evolution 40(4):msad041 (https://doi.org/10.1093/molbev/msad041)  

  
Some key references:  
- Goldman N, Yang Z. 1994. A codon-based model of nucleotide substitution for protein-coding DNA sequences. Molecular Biology and Evolution 11: 725–736.  
- Yang Z, Bielawski JP. 2000. Statistical methods for detecting molecular adaptation. Trends in Ecology & Evolution 15: 496–503.  
- Yang Z, Nielsen R. 2002. Codon-Substitution Models for Detecting Molecular Adaptation at Individual Sites Along Specific Lineages. Molecular Biology and Evolution 19: 908–917.
- Yang Z, Wong WSW, Nielsen R. 2005. Bayes Empirical Bayes Inference of Amino Acid Sites Under Positive Selection. Molecular Biology and Evolution 22: 1107–1118.
- Yang, Ziheng. Molecular Evolution: A Statistical Approach (Oxford, 2014; online edn, Oxford Academic, 21 Aug. 2014).

Contact: `matheus-enrique.bianconi at univ-tlse3.fr`
