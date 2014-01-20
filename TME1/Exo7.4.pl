#! /usr/bin/perl -nls

if($c){
    @b = split // ,$_;
    $n[3] += scalar @b + 1;      #le +1 pour le caractere de retour a la ligne
}
if($w){
    @b = split / / ,$_;
    $n[2] += scalar @b;
}
if($l){
    $n[1] += 1;
}

END{print "@n $ARGV"};

