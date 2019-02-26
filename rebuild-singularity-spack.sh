#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

# Build parameters
IMAGES_ROOT="/home/hadrien/Software/singularity-images/"

echo "*** Deleting old Singularity images ***"
rm -f ${IMAGES_ROOT}/tumbleweed.sif
rm -f ${IMAGES_ROOT}/spack.sif

echo "*** Building base Tumbleweed image ***"
cd tumbleweed
singularity build ${IMAGES_ROOT}/tumbleweed.sif tumbleweed.def

echo "*** Building Spack image ***"
cd ../spack
singularity build ${IMAGES_ROOT}/spack.sif spack.def

echo "*** Building Verrou image ***"
cd ../verrou
singularity build ${IMAGES_ROOT}/verrou.sif verrou.def