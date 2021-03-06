# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/MooseX-ConfigFromFile/MooseX-ConfigFromFile-0.130.0.ebuild,v 1.1 2014/12/13 23:25:17 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=ETHER
MODULE_VERSION=0.13
inherit perl-module

DESCRIPTION="An abstract Moose role for setting attributes from a configfile"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# MooseX::Types::Moose -> MooseX-Types
RDEPEND="
	virtual/perl-Carp
	>=dev-perl/Moose-0.350.0
	dev-perl/MooseX-Types
	>=dev-perl/MooseX-Types-Path-Tiny-0.5.0
	dev-perl/namespace-autoclean
"
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-Tiny-0.30.0
	test? (
		virtual/perl-ExtUtils-MakeMaker
		virtual/perl-File-Spec
		virtual/perl-Scalar-List-Utils
		dev-perl/Moose
		dev-perl/Test-Deep
		dev-perl/Test-Fatal
		virtual/perl-Test-Simple
		dev-perl/Test-Requires
		dev-perl/Test-Without-Module
		virtual/perl-if
	)
"

SRC_TEST="do parallel"
mytargets="install"
