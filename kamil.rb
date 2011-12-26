10.times{p gets.chars.inject(1){|s,x|s*=x=~/[TDFL]/?2:1}}
