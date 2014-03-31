#! /usr/bin/perl -l

use Tk;
use strict;

my $window = MainWindow->new( -title => "Ma fenêtre");
my $canvas = $window -> Canvas(-width => 500, -height => 500, -bg => "white") -> pack();

my $ordre = 0;
my @couleurs = ('red','green','blue');
my $coul = 0;

for(my $i=0; $i<500; $i+=50){
    for(my $j=0; $j<500; $j+=50){
	if($ordre % 2){
	    $canvas -> create('oval',$i,$j,$i+50,$j+50,-fill => $couleurs[$coul], -tag => $couleurs[$coul]);
	}
	else{
	    $canvas -> create('rectangle',$i,$j,$i+50,$j+50,-fill => $couleurs[$coul], -tag => $couleurs[$coul]);
	}

	$coul = ($coul+1) % 3;
    }
    if($ordre){
	$ordre = 0;
    }
    else{
	$ordre = 1;
    }
}

$canvas -> bind('red','<Button-1>' => sub{$canvas -> itemconfigure('red', -fill => 'green');});
$canvas -> bind('green','<Button-1>' => sub{$canvas -> itemconfigure('green', -fill => 'blue');});
$canvas -> bind('blue','<Button-1>' => sub{$canvas -> itemconfigure('blue', -fill => 'red');});

MainLoop();
