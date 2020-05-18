The .rxn file contains the code written using Stochastic Simulation Complier (SSC). SSC is freely availble for download from 
http://web.mit.edu/irc/ssc/. The .rxn (e.g., test_f.rxn) file is complied using SSC as, 
prompt> ssc test_f.rxn <enter> 
which creates an executable file test_f. The executable test_f is run using the input parameters contained in the .cfg file (e.g., param.cfg) 
to generate the output data. 

The specific commands to run the executable file (e.g., test_f) can be found in our child.sh where the output is stored in the file std.txt. Additional details regarding generation and execution of SSC codes can be found in the manual at the website, http://web.mit.edu/irc/ssc/. Once the SSC executable file (e.g., test_f) is created then child.sh can be execute using 
prompt> qsub -cwd child.sh.

The following files are included in the directory

1. eOD_GT8_1D_dimer.rxn  (SSC code for stimualtion by the eOD-GT8 1D dimer where the antigens are sepereted by 14nm).
2. eOD_GT8_1D_dimer_parameters.cfg  (parameters for eOD_GT8_1D_dimer.rxn)

3. eOD_GT8_1D_pentamer.rxn (SSC code for stimualtion by the eOD-GT8 1D pentamer where the antigens are sepereted by a minimum interantigen distance of 14nm).
4. eOD_GT8_1D_pentamer_parameters.cfg  (parameters for eOD_GT8_1D_pentamer.rxn)

5. eOD_GT8_2D_pentamer.rxn (SSC code for stimualtion by the eOD-GT8 2D pentamer where the antigens are sepereted by a minimum interantigen distance of 14nm).
6. eOD_GT8_2D_pentamer_parameters.cfg (parameters for eOD_GT8_2D_pentamer.rxn)

In the .rxn files 1 unit of distance equals 10nm physical distance. The subvolume size (0.5 in the codes) is  equal to 5nm of physical distance. The rate constant values for on rates (or any other second order reaction rate) or off-rates (or any other first order reaction rate) in the .cfg files are given in the units of (#of molecules)^(-1)sec^(-1) or sec^(-1), respectively.  
