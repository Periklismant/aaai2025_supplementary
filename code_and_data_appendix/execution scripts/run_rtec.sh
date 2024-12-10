#!/bin/bash

# Author: XXXX
# Run rtec on an event description.

# Load the functions in 'auxiliary/utils.sh'
. $(dirname "$0")/auxiliary/utils.sh

# Parse parameters provided by the user
input_parser $@
# The parameters provided by the user are now stored in the variables with the corresponding names (see auxiliary/utils.sh).
# The variables of the parameters that were not provided by the user do not have a value yet.

# validate input here.
# Exit if no application name has been provided.
[ -z $application ] && exit_func "noApp" # no application provided
# Exit if their is no entry in the toml file for the given application.
check_if_app_in_toml $application || exit_func "wrongApp" $application
#AppPath=../examples/${application}
# Check if the provided input mode is supported
[ ! -z $input_mode ] && [ "$input_mode" != "csv" ] && [ "$input_mode" != "fifo" ] && [ "$input_mode" != "socket" ] && exit_func "wrongInputMode" $input_mode 

# After the following command, all parameters of RTEC are set. 
get_all_defaults $application

# These are the parameters of RTEC. Uncomment to see the value assigned to a parameter.
echo "Window size: $window_size"
echo "Step: $step"
echo "Start time: $start_time"
echo "End time: $end_time"
echo "Input stream providers: $input_providers"


# if the input mode is fifo and the input providers are not named pipes, 
# then we write the records of each input provider incrementally, by interpretting each time-stamp as a number of seconds, in a seperate new fifo. 
[ $input_mode == "fifo" ] && [ ! -p $input_providers ] && start_fifos
# Start socket writers as soon as 
[ $input_mode == "socket" ] && [ ! -S $input_providers ] && start_socket_writers

set_prolog_command
#echo "Not Executing: $prolog_command"
$prolog_command 

[ $input_mode == "fifo" ] && delete_fifos
