#!/usr/bin/perl

use Test::More 'no_plan';

my $class  = 'Mac::OSVersion';
my $method = 'gestalt';

use_ok( $class );
can_ok( $class, $method ); 

$" = " | ";

my @list = $class->$method;
#diag( "Got @list" );

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Scalar context
my $version = $class->$method;
ok( defined $version, "Got something in version [$version] for scalar context" );

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Without specifying a method
my @list1 = $class->$method;
#diag( "Got @list1" );

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Explicitly specifying a method
my @list2 = $class->version( $method );
#diag( "Got @list2" );

is_deeply( \@list1, \@list2, "$method() and version() return the same thing" );