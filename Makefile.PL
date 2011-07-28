use ExtUtils::MakeMaker;

require 5.006;

unless( $^O =~ m/darwin/ )
	{
	warn "OS unsupported. This module only works on Mac OS X.\n";
	exit 0;
	}

eval "use Test::Manifest 1.14";

WriteMakefile(
	'NAME'	       => 'Mac::OSVersion',
	'ABSTRACT'     => 'Get the Mac OS X system version',
	'VERSION_FROM' => 'lib/OSVersion.pm',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	
	'PREREQ_PM'    => { 
		'Test::More'   => '0',
		'Mac::Gestalt' => '0',
		
		},

	'PM'           => {
		'lib/OSVersion.pm'         => '$(INST_LIBDIR)/OSVersion.pm',
		},

	'MAN3PODS'     => {
		'lib/OSVersion.pm' => '$(INST_MAN3DIR)/Mac::OSVersion.3',
		},

	clean  => { FILES    => q|Mac-OSVersion-*| },

	);
