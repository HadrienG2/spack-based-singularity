#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

# Build parameters
# TODO: Find a way to pass these down to singularity builds
IMAGES_ROOT="/home/hadrien/Software/singularity-images"
VERROU_VERSION="2.1.0"
ROOT_VERSION="6.16.00"

echo "*** Deleting old Singularity images ***"
rm -f ${IMAGES_ROOT}/tumbleweed.sif
rm -f ${IMAGES_ROOT}/spack.sif
rm -f ${IMAGES_ROOT}/verrou-${VERROU_VERSION}.sif
rm -f ${IMAGES_ROOT}/root-${ROOT_VERSION}-cxx17.sif

echo "*** Building base Tumbleweed image ***"
cd tumbleweed
singularity build ${IMAGES_ROOT}/tumbleweed.sif tumbleweed.def

echo "*** Building Spack image ***"
cd ../spack
singularity build ${IMAGES_ROOT}/spack.sif spack.def

echo "*** Building Verrou image ***"
cd ../verrou
singularity build ${IMAGES_ROOT}/verrou-${VERROU_VERSION}.sif verrou.def

echo "*** Building ROOT image ***"
cd ../root
singularity build ${IMAGES_ROOT}/root-${ROOT_VERSION}-cxx17.sif root.def