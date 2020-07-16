set  NAME  zhangsan
set  var   0

#if {$var} {
#    echo "Good!"
#} else {
#    echo "Bad!"
#}

#switch -regexp -exact $NAME {
#    "zhangsan" {
#        echo "$NAME come to my office";
#    }
#    "lisi"     {
#        echo "Good morning!";
#    }
#    default    {
#        echo "Error! The option is not exist!"
#    }
#}

#set i 0
#
#while {$i < 10} {
#    echo "Current value of i is $i";
#    incr  i 1
#}


#for {set idx 0} {$idx < 10} {incr idx 1} {
#    if {$idx == 8} {
#        continue;
#    }
#    echo "Current value of idx is $idx";
#}

#set NAMES [list "zhangsan" "lisi" "wangwu" "zhaoliu"]
#
#foreach NAME $NAMES {
#    echo "$NAME is here!"
#}

#set   log_file_cnt   0
#set   pvl_file_cnt   0
#
#set   file_list      [glob  *.log  *.pvl]
#
#foreach  f_name  $file_list {
#    set  f_ext  [file extension $f_name]
#    switch  $f_ext {
#        ".log"  {incr  log_file_cnt}
#        ".pvl"  {incr  pvl_file_cnt}
#    }
#}
#echo "The total number of .log file is $log_file_cnt";
#echo "The total number of .pvl file is $pvl_file_cnt";

# Create a file and write info to it
#set   SRC          "Good night!"
#set   file_wr_id   [open data.txt  w+]
#puts  $file_wr_id  $SRC
#flush $file_wr_id
#close $file_wr_id

# Read from a file 
#set  DST  ""
#set  file_rd_id   [open data.txt r]
#gets $file_rd_id  DST
#echo "Read from file is {$DST}"
#
#close $file_rd_id

#set  data  10
#
#proc print_var {} {
#    global  data
#    echo "data is $data"
#}

proc max {a b} {
    if {$a > $b} {
        set  y  $a;
    } else {
        set  y  $b;
    }
    return   $y;
}

#proc  sum {args} {
#    set num_list  $args
#    set sum       0
#    foreach num $num_list {
#        set  sum  [expr ($sum + $num)]
#    }
#    return  $sum
#}

#array set AGES [list  zhangsan 23  lisi 24  wangwu 25 zhaoliu 26]

#proc  inc_age {name_age_list} {
#    #convert list to array
#    array set OLD_AGES  $name_age_list
#    set   name_list     [array names OLD_AGES]
#    foreach name $name_list {
#        incr OLD_AGES($name)  2
#    }
#    #convert array to list and output
#    return [array get OLD_AGES]
#}

# Just create a link to the variable outside
set   num     0

proc  inc_one {num} {
    upvar  $num  local_var
    incr   local_var 2
}


