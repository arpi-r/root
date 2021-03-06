#!/bin/sh

AUTHORS="\n$(git shortlog -ns | head -n20 | cut -f2 | sed -e 's/^/\t"/; s/$/",/;')\n\t0\n"

cat >| ${1:-rootcoreteam.h} <<-EOF
#ifndef ROOT_ROOTCoreTeam
#define ROOT_ROOTCoreTeam

/* This file is automatically generated. Please do not edit. */

namespace ROOT {
namespace ROOTX {

const char *gROOTCoreTeam[] = { $(echo -e "$AUTHORS") };

} // namespace ROOTX
} // namespace ROOT

#endif
EOF
