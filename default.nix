self: super: {
  bryanasdev000 = {
    velero =
      super.callPackage ./pkgs/applications/networking/cluster/velero { };
    popeye =
      super.callPackage ./pkgs/applications/networking/cluster/popeye { };
    kube-capacity =
      super.callPackage ./pkgs/applications/networking/cluster/kube-capacity
      { };
    kubectl-example =
      super.callPackage ./pkgs/applications/networking/cluster/kubectl-example
      { };
    gojsontoyaml = super.callPackage ./pkgs/development/tools/gojsontoyaml { };
    jsonnet-bundler =
      super.callPackage ./pkgs/development/tools/jsonnet-bundler { };
    jmeter = super.callPackage ./pkgs/applications/networking/jmeter/default.nix { };
  };
}
