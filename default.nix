self: super:
let callPackage = super.lib.callPackageWith super;
in {
  bryanasdev000 = {
    velero = callPackage ./pkgs/applications/networking/cluster/velero { };
    popeye = callPackage ./pkgs/applications/networking/cluster/popeye { };
    kube-capacity =
      callPackage ./pkgs/applications/networking/cluster/kube-capacity { };
    kubectl-example =
      callPackage ./pkgs/applications/networking/cluster/kubectl-example { };
    #kubepug = callPackage ./pkgs/applications/networking/cluster/kubepug { };
    #octant = callPackage ./pkgs/applications/networking/cluster/octant { };
  };
}
