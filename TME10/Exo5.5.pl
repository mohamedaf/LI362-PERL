#! /usr/bin/perl -l

use Tk;
use strict;

my $wind = MainWindow->new();
my $canv = $wind -> Canvas(-width => 300, -height => 300, -bg => "white") -> pack();

my @couleurs = ('grey','yellow','red','green','blue','cyan');

my ($x,$y,$c);

$x = (rand(269)%269);
$y = (rand(269)%269);

$canv -> create('oval',$x,$y,$x+30,$y+30,-fill => $couleurs[rand(8)], -tag => 'disque');

$wind -> repeat(200 => sub{ $canv -> bind('grey','<Button-1>' => sub{$canv -> delete('grey');});      #efface les diques affichés precedemment de meme couleur lors d'un clic sur un disk
			     $canv -> bind('yellow','<Button-1>' => sub{$canv -> delete('yellow');});
			     $canv -> bind('red','<Button-1>' => sub{$canv -> delete('red');});
			     $canv -> bind('green','<Button-1>' => sub{$canv -> delete('green');});
			     $canv -> bind('blue','<Button-1>' => sub{$canv -> delete('blue');});
			     $canv -> bind('cyan','<Button-1>' => sub{$canv -> delete('cyan');});

                             $x = (rand(269)%269);
			     $y = (rand(269)%269);
			     $c = $couleurs[rand(6)];
                             $canv -> create('oval',$x,$y,$x+30,$y+30,-fill => $c, -tag => $c);
		           }
               );

MainLoop;
