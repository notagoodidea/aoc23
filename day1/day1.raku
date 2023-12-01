# Part 1
my @lines = "input_d1.txt".IO.lines; 
@lines.map({$_.comb(/\d/)[0,*-1].join}).sum;

# Part 2
my @lines = "input_d1.txt".IO.lines;
my $conv = <one two three four five six seven eight nine> => <o1e t2o t3e f4r f5e s6x s7n e8t n9e>;
@lines.map({$_.trans($conv).comb(/\d/)[0,*-1].join}).sum;
