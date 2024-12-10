### Requirements

To execute our compiler or RTEC, you need: 

- [SWI-Prolog 8.2+](https://www.swi-prolog.org/download/stable)

### File Structure

- "src" contains our compiler ("compiler.prolog") and the source code of RTEC (remaining files).
- "examples" contains the input and the compiled event descriptions for:
    - human activity recognition ("caviar" subfolder),
    - maritime situational awareness ("maritime" subfolder),
    - city transport management ("ctm" subfolder)
    - legal contract verification ("symboleo" subfolder),
    - clinical guideline monitoring ("cg" subfolder),
    - authorisation policy conflict identification ("multicloud" subfolder), and
    - redundant authorisation policy identification ("kubernetes" subfolder).

    For each application subfolder "x", you may find: 
    
    - the input event description with only simple fluents in "examples/x/resources/patterns/input_event_description.prolog".
    - the optimised event description in "examples/x/resources/patterns/optimised_event_description.prolog".

    For the CER applications, i.e., human activity recognition, maritime situational awareness and city transport management, we have measured the reasoning efficiency of RTEC over the event descriptions with only simple fluents and the optimised event descriptions, using windows of increasing size. For each subfolder "x" of these applications, you may find the corresponding input datasets in: "examples/x/datasets/csv".

- "execution scripts" contains the execution scripts for reproducing the results presented in the paper. We have: 
    - "measure_kb.sh": This script receives the name of a file F as input. The script writes to file F statistics concerning the number of rules and the total number of rule conditions in the input and the optimised event descriptions of our applications. The output contains the statistics we used to construct Figure 1 (top) of the paper.
    - "run_caviar_sfs.sh": Runs RTEC on the human activity recognition application with the corresponding event description with only simple fluents. After the execution, the results (log file and computed intervals for fluents) are present in "examples/caviar/results_sfs". This script reproduces the execution of RTEC we used to generate the blue line of the leftmost diagram of Figure 1 (bottom). **Scripts "run_maritime_sfs.sh" and "run_ctm_sfs.prolog" work in an analogous way for the maritime and the city transport applications**.
    - "run_caviar_sdfs.sh": Runs RTEC on the human activity recognition application with the corresponding optimised event description. After the execution, the results (log file and computed intervals for fluents) are present in "examples/caviar/results_sdfs". This script reproduces the execution of RTEC we used to generate the red line of the leftmost diagram of Figure 1 (bottom). **Scripts "run_maritime_sdfs.sh" and "run_ctm_sdfs.prolog" work in an analogous way for the maritime and the city transport applications**.
    - "compile_caviar.sh": Runs our compiler on the input event description for human activity recognition, containing only simple fluents. The output file is in "examples/caviar/resources/patterns" and is named "compiled_rules.prolog". **There is a corresponding compilation script for each one of our applications**.

#### Note:
    - We only provide the first half of the maritime dataset we used, in order to respect the space constraints of the submission platform. 