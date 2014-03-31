#! /usr/bin/perl -l

use strict;
use CGI qw(:standard);

my $rob = CGI -> new();

if(defined $rob -> param('name')){
    my $nom = $rob -> pram('name');
    print $rob -> header,
          $rob -> start_html('Gestion Formulaire'),
          $rob -> h1('Gestion de formulaire'),
          $nom,
          $rob -> end_html;
}
else{
    print $rob -> header,
          $rob -> start_html('Gestion Formulaire'),
          $rob -> h1('Gestion de formulaire'),
          $rob -> start_form(-methode => "GET", -action => "form.pl"),
          "Nom?",
          $rob -> textfield('name'),
          $rob -> submit,
          $rob -> end_form,
          $rob -> end_html;
}
