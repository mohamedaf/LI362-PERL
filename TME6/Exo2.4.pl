#! /usr/bin/perl -l

print;   #pour retour a la ligne

if($ARGV[0] =~ m!(.+?//)(.+?)(/.*)\?(.*)!){
    print "protocol: $1";
    print "server: $2";
    print "file: $3";
    print "arguments:";

    @tab = $4 =~ m/(?:(.*?)&)|(.*?$)/g;

    foreach(@tab){
      print $_ if(/[^\s]/);          #car contient des espaces
    }
}
else{
    print 'pas de correspondance !!';
}
