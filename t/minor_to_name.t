use Test::More 'no_plan';

my $class  = 'Mac::OSVersion';
my $method = 'minor_to_name';

subtest setup => sub {
	use_ok( $class );
	can_ok( $class, $method );
	};

subtest minor_arg => sub {
	my $name = $class->$method( '4' );
	ok( defined $name, "Name is defined" );
	is( $name, 'Tiger', "Tiger is the right version" );
	};

subtest major_arg => sub {
	my $name = $class->$method( '4', '10' );
	ok( defined $name, "Name is defined" );
	is( $name, 'Tiger', "Tiger is the right version with explicit major version" );
	};

subtest macos => sub {
	my $name = $class->$method( '0', '11' );
	ok( defined $name, "Name is defined" );
	is( $name, 'Big Sur', "Big Sur is the right version with explicit major version" );
	};
