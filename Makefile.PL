# $Id: Makefile.PL,v 1.4 2004/07/04 17:04:17 comdog Exp $
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
	'ABSTRACT'     => 'This is what the module does',
	'VERSION_FROM' => 'lib/OSVersion.pm',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	
	'PREREQ_PM'    => { 
		'Test::More' => '0',
		},

	'PM'           => {
		'lib/OSVersion.pm'         => '$(INST_LIBDIR)/OSVersion.pm',
		},

	'MAN3PODS'     => {
		'lib/OSVersion.pm' => '$(INST_MAN3DIR)/Mac::OSVersion.3',
		},

	clean  => { FILES    => q|Mac-OSVersion-*| },

	);
