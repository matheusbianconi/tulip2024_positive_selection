      seqfile = alignment_codons.fasta			* Path to the alignment file
     treefile = species_tree.nwk			* Path to the tree file
      outfile = codeml_results_model_M1a.txt		* Path to the output file
   
        noisy = 3              * 0,1,2,3,9: How much rubbish on the screen
      verbose = 1              * 0: concise; 1: detailed, 2: too much 

      seqtype = 1              * Data type 1:codons; 2:AAs; 3:codons-->AAs
        ndata = 1              * Number of data sets or loci
        icode = 0              * Genetic code 0:universal code
    cleandata = 0              * Remove sites with ambiguity data? (1:yes, 0:no)
		
        model = 0	       * Models for ω varying across lineages
			          * models for codons:
			          	* 0:one, 1:b, 2:2 or more dN/dS ratios for branches
			          * models for AAs or codon-translated AAs:
				  	* 0:poisson, 1:proportional, 2:Empirical, 3:Empirical+F
				  	* 6:FromCodon, 7:AAClasses, 8:REVaa_0, 9:REVaa(nr=189)
      NSsites = 1              * Models for ω varying across sites
				  * 0:one w;1:neutral;2:selection; 3:discrete;4:freqs;
				  * 5:gamma;6:2gamma;7:beta;8:beta&w;9:beta&gamma;
				  * 10:beta&gamma+1; 11:beta&normal>1; 12:0&2normal>1;
	                          * 13:3normal>0
    CodonFreq = 7              * Codon frequencies * 0:1/61 each, 1:F1X4, 2:F3X4, 3:codon table
    				  * 7 = Mutation-selection model with observed codon frequencies used 
    				  * as estimates (CodonFreq = 7, estFreq = 0) (Yang and Nielsen 2008). 
    				  * This model explicitly accounts for the mutational bias and selection 
    				  * affecting codon usage, and is preferable over the other models 
    				  * concerning codon usage (Yang and Nielsen 2008)
      estFreq = 0	       * Use observed freqs or estimate freqs by ML
        clock = 0              * 0:no clock, 1:clock; 2:local clock; 3:CombinedAnalysis
    fix_omega = 0	       * Estimate or fix omega * 1: omega or omega_1 fixed, 0: estimate 
        omega = 0.5	       * Initial or fixed omega, for codons or codon-based AAs
