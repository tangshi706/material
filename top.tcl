# souce the fsm_moore.tcl and print the process to terminal & compile.log
redirect -tee -file  ${WORK_PATH}/compile.log {source  -echo  -verbose  fsm_moore.tcl}
