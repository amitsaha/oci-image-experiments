test OCI image

### Build a OCI runtime bundle from scratch

```
$ <path-to-oci-image-tool> create-runtime-bundle image runtime-bundle
```

### Creating a OCI runtime bundle for a existing docker image

```
$ ~/work/golang/src/github.com/amitsaha/skopeo/skopeo copy docker://busybox oci:busybox-oci

$ tree busybox-oci/
busybox-oci/
├── blobs
│   ├── sha256-2b8fd9751c4c0f5dd266fcae00707e67a2545ef34f9a29354585f93dac906749
│   ├── sha256-3ca68bfc4a2b07c103848bc0de5ef47816fb06baef62632a2b5320dd2a2f7825
│   └── sha256-8ddc19f16526912237dd8af81971d5e4dd0587907234be2b83e249518d5b673f
├── oci-layout
└── refs
    └── latest

$ mkdir busybox-bundle
$ ~/work/golang/src/github.com/opencontainers/image-spec/oci-image-tool create-runtime-bundle --ref latest busybox-oci busybox-bundle
$ tree -L 1 busybox-bundle/
    busybox-bundle/
    ├── config.json
    └── rootfs
```




