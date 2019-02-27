#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

# Build parameters
# TODO: Find a way to pass these down to singularity builds
IMAGES_ROOT="/home/hadrien/Software/singularity-images"
VERROU_VERSION="2.1.0"
ROOT_VERSION="6.16.00"

echo "*** Building base Tumbleweed image ***"
cd tumbleweed
singularity build --force ${IMAGES_ROOT}/tumbleweed.sif tumbleweed.def

echo "*** Building Spack image ***"
cd ../spack
singularity build --force ${IMAGES_ROOT}/spack.sif spack.def

echo "*** Building Verrou image ***"
cd ../verrou
singularity build --force ${IMAGES_ROOT}/verrou-${VERROU_VERSION}.sif verrou.def

echo "*** Building ROOT image ***"
cd ../root
singularity build --force ${IMAGES_ROOT}/root-${ROOT_VERSION}-cxx17.sif root.def

echo "*** Building Gaudi image ***"
cd ../gaudi
singularity build --force ${IMAGES_ROOT}/gaudi.sif gaudi.def

echo "*** Building ACTS image ***"
cd ../acts
singularity build --force ${IMAGES_ROOT}/acts.sif acts.def