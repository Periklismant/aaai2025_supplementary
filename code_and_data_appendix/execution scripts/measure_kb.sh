#!/bin/bash
FILE=$1
rm -f ${FILE}

swipl -l measure_kb.prolog -g "count_rules(caviar,input_event_description)." -g "halt." >> ${FILE}
swipl -l measure_kb.prolog -g "count_rules(caviar,optimised_event_description)." -g "halt." >> ${FILE}

swipl -l measure_kb.prolog -g "count_rules(maritime,input_event_description)." -g "halt." >> ${FILE}
swipl -l measure_kb.prolog -g "count_rules(maritime,optimised_event_description)." -g "halt." >> ${FILE}

swipl -l measure_kb.prolog -g "count_rules(ctm,input_event_description)." -g "halt." >> ${FILE}
swipl -l measure_kb.prolog -g "count_rules(ctm,optimised_event_description)." -g "halt." >> ${FILE}

swipl -l measure_kb.prolog -g "count_rules(symboleo,input_event_description)." -g "halt." >> ${FILE}
swipl -l measure_kb.prolog -g "count_rules(symboleo,optimised_event_description)." -g "halt." >> ${FILE}

swipl -l measure_kb.prolog -g "count_rules(cg,input_event_description)." -g "halt." >> ${FILE}
swipl -l measure_kb.prolog -g "count_rules(cg,optimised_event_description)." -g "halt." >> ${FILE}

swipl -l measure_kb.prolog -g "count_rules(multicloud,input_event_description)." -g "halt." >> ${FILE}
swipl -l measure_kb.prolog -g "count_rules(multicloud,optimised_event_description)." -g "halt." >> ${FILE}

swipl -l measure_kb.prolog -g "count_rules(kubernetes,input_event_description)." -g "halt." >> ${FILE}
swipl -l measure_kb.prolog -g "count_rules(kubernetes,optimised_event_description)." -g "halt." >> ${FILE}
