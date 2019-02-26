#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

# Build parameters
IMAGES_ROOT="/home/hadrien/Software/singularity-images/"

echo "*** Generating base Tumbleweed image ***"
cd tumbleweed
singularity build ${IMAGES_ROOT}/tumbleweed.sif tumbleweed.def

echo "*** Generating Spack image ***"
cd ../spack
singularity build ${IMAGES_ROOT}/spack.sif spack.def