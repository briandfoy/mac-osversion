use Test::More 'no_plan';

my $class  = 'Mac::OSVersion';
my $method = 'kernel';

use_ok( $class );
can_ok( $class, $method );

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# What does default think?
my ($major, $minor, $point, $name, $build, $kernel ) = $class->version;

is( $class->$method, $kernel, "Kernel matches [$kernel]" );
