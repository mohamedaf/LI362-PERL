#! /usr/bin/perl -nla

@dig = grep {/\d+/} @F;
@autre = grep {/[^\d]+/} @F;

print @dig;
print @autre;

#print map($i + $_) ,@dig;
