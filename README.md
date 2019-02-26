# TODO

- [ ] Port all images from Docker to Singularity
    * [X] Tumbleweed
    * [X] Spack
    * [X] Verrou
    * [ ] ROOT
    * [ ] Gaudi
    * [ ] ACTS
    * [ ] ACTS + Verrou
- [ ] Stop hardcoding image paths
- [ ] Stop hardcoding package versions
- [ ] Find a host for all these images
- [ ] Find a solution for tests which should run during the build process
      (e.g. running unit tests of ACTS)
- [ ] Find a solution for cases where we really want to build multiple variants
      of the same image (e.g. ACTS Debug vs RelDeb)