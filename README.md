# TODO

- [ ] Port all images from Docker to Singularity
    * [X] Tumbleweed
    * [X] Spack
    * [X] Verrou
    * [X] ROOT
    * [ ] Gaudi
    * [ ] ACTS
    * [ ] ACTS + Verrou
    * [ ] ACTSFW (désactivé)
- [ ] Once everything is ported, do a big test rebuild
- [ ] Reflect on produced images and update the following hack list
- [ ] Stop hardcoding image paths
- [ ] Stop hardcoding package versions
- [ ] Find a host for all these images
- [ ] Find a solution for tests which should run during the build process
      (e.g. running unit tests of ACTS before cleaning up)
- [ ] Find a solution for cases where we really want to build multiple variants
      of the same image (e.g. ACTS Debug vs RelDeb)
- [ ] A build/test failure currently requires restarting everything, unlike
      Docker whose layers provide nifty snapshots. Can this be helped?
- [ ] Find out a way to make the run-time environment available in tests.
- [ ] Find a workaround for "Help message already exists and force option is
      false, not overwriting"