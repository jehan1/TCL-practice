puts "please enter number";
set data [gets stdin];
set index 1;

while { $data > 0} {
    set c [expr $data % 2]
    set binary($index) $c;
    incr index;
    set data [expr  $data/ 2];
}

for {set i [array size binary] }  { $i > 0}  {incr i -1} {
    puts  -nonewline $binary($i);
}