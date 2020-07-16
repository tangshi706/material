
   set verilog_reserved {"always" "always_com" "and" "assign" "automatic" 
"begin" "buf" "bufif0" "bufif1" "case" "casex" "casez" "cell" "cmos" "config" 
"deassign" "default" "defparam" "design" "disable" "edge" "else" "end" "endcase" 
"endconfig" "endfunction" "endgenerate" "endmodule" "endprimitive" "endspecify" 
"endtable" "endtask" "event" "for" "force" "forever" "fork" "function" 
"generate" "genvar" "highz0" "highz1" "if" "ifnone" "incdir" "include" "initial" 
"inout" "input" "instance" "integer" "join" "large" "liblist" "library" 
"localparam" "macromodule" "medium" "module" "nand" "negedge" "nmos" "nor" 
"noshowcancelled" "not" "notif0" "notif1" "or" "output" "parameter" "pmos" 
"posedge" "primitive" "pull0" "pull1" "pulldown" "pullup" "pulsestyle_onevent" 
"pulsestyle_ondetect" "rcmos" "real" "realtime" "reg" "release" "repeat" "rnmos" 
"rpmos" "rtran" "rtranif0" "rtranif1" "scalared" "showcancelled" "signed" 
"small" "specify" "specparam" "strong0" "strong1" "supply0" "supply1" "table" 
"task" "time" "tran" "tranif0" "tranif1" "tri" "tri0" "tri1" "triand" "trior" 
"trireg" "unsigned" "use" "vectored" "wait" "wand" "weak0" ""weak1" "while" 
"wire" "wor" "xnor" "xor"} 

   set dft_reserved {}   

   set cot_reserved {}

   set typ_reserved_words [concat $verilog_reserved $cot_reserved]

   set frontend_reserved_words [concat $verilog_reserved $cot_reserved 
$dft_reserved]

   set top_reserved_words [concat $verilog_reserved $cot_reserved]

   set backend_reserved_words [concat $verilog_reserved $cot_reserved]

#set bus_interence_style  "%s/[%d\]"
set bus_range_separator_style  ":"
set bus_multiple_separator_style  ","
set gen_dell_pin_name_separator  "_"


define_name_rules  hs_simple_rules \
-special verilog \
-first_restrict "0-9" \
-allow "a-z A-Z 0-9 _" \
-target_bus_naming_style {%s/[%d]} \
-check_internal_net_name \
-equal_ports_nets -inout_ports_equal_nets \
-dummy_net_prefix "SYN_NC_%d" \
-case_insensitive 

define_name_rules hs_subdesign_rules \
-special verilog \
-max_length 256 \
-first_restrict "0-9" \
-allow "a-z A-Z 0-9 _" \
-target_bus_naming_style {%s/[%d]} \
-check_internal_net_name \
-equal_ports_nets -inout_ports_equal_nets \
-dummy_net_prefix "SYN_NC_%d" \
-case_insensitive  \
-reserved_words {$typ_reserved_words}

define_name_rules hs_frontend_rules \
-special verilog \
-max_length 256 \
-first_restrict "0-9" \
-allow "a-z A-Z 0-9 _" \
-target_bus_naming_style {%s/[%d]} \
-check_internal_net_name \
-equal_ports_nets -inout_ports_equal_nets \
-dummy_net_prefix "SYN_NC_%d" \
-case_insensitive \
-reserved_words {$frontend_reserved_words}

define_name_rules hs_backend_rules \
-special verilog \
-max_length 256 \
-first_restrict "0-9" \
-allow "a-z A-Z 0-9 _" \
-target_bus_naming_style {%s/[%d]} \
-check_internal_net_name \
-equal_ports_nets -inout_ports_equal_nets \
-dummy_net_prefix "SYN_NC_%d" \
-case_insensitive \
-reserved_words {$backend_reserved_words}

define_name_rules hs_top_rules \
-special verilog \
-max_length 256 \
-first_restrict "0-9" \
-allow "a-z A-Z 0-9 _" \
-target_bus_naming_style {%s/[%d]} \
-check_internal_net_name \
-equal_ports_nets -inout_ports_equal_nets \
-dummy_net_prefix "SYN_NC_%d" \
-case_insensitive \
-reserved_words {$top_reserved_words}

define_name_rules hs_reducer_rules \
-special verilog \
-max_length 256 \
-first_restrict "0-9" \
-allow "a-z A-Z 0-9 _" \
-target_bus_naming_style {%s/[%d]} \
-check_internal_net_name \
-equal_ports_nets -inout_ports_equal_nets \
-dummy_net_prefix "SYN_NC_%d" \
-case_insensitive \
-reserved_words {$typ_reserved_words}
