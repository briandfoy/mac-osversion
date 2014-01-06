use ExtUtils::MakeMaker 6.64;

require 5.006;

unless( $^O =~ m/darwin/ ) {
	die "OS unsupported. This module only works on Mac OS X.\n";
	}

eval "use Test::Manifest 1.21";

WriteMakefile(
	'NAME'	       => 'Mac::OSVersion',
	'ABSTRACT'     => 'Get the Mac OS X system version',
	'VERSION_FROM' => 'lib/Mac/OSVersion.pm',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	
	'CONFIGURE_REQUIRES' => {
		'ExtUtils::MakeMaker'   => '6.64',
		},

	'TEST_REQUIRES' => {
		'Test::More'   => '0',
		},

	'RECOMMENDS' => {
		# This needs Mac::Carbon, which doesn't work on 64-bit systems
		'Mac::Gestalt' => '0',
		},

	'META_MERGE' => {
        'meta-spec' => { version => 2 },
		resources => {
			repository => {
				type => 'git',
				url  => 'git@github.com:briandfoy/mac-osversion.git',
				web  => 'https://github.com/briandfoy/mac-osversion',
				},
			},
		},

	clean  => { FILES    => q|Mac-OSVersion-*| },
	);
