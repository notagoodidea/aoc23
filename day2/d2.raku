my @lines = "input_d2.txt".IO.lines;
my %ts = <red 12 green 13 blue 14>;
my ($games_p1, $games_p2) = (0, 0) ;
for @lines -> $l {
    $games_p1 += $l.match(/\d+/) if (for %ts.kv -> $c, $lim {$l.match(/\d+<before \s$c>/, :global).split(" ").map({$_ <= $lim}).all.so;}).all.so;
    $games_p2 += [*] (for %ts.kv -> $c, $lim {$l.match(/\d+<before \s$c>/, :global).split(" ").map({Int($_)}).max});
}
say $games_p1; say $games_p2;
