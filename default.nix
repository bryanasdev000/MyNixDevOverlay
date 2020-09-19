self: super:
let callPackage = super.lib.callPackageWith super;
in {
  bryanasdev000 = {
    velero = callPackage ./pkgs/applications/networking/cluster/velero { };
    popeye = callPackage ./pkgs/applications/networking/cluster/popeye { };
  };
}
