{ stdenv, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "popeye";
  version = "0.8.10";

  src = fetchFromGitHub {
    rev = "v${version}";
    owner = "derailed";
    repo = "popeye";
    sha256 = "1cx39xipvvhb12nhvg7kfssnqafajni662b070ynlw8p870bj0sn";
  };

  vendorSha256 = "1scggvs88c80iwqalm3wrhq8vi58m7hj7ckb0c4rdppqbx4mad48";

  meta = with stdenv.lib; {
    description =
      "A Kubernetes cluster resource sanitizer";
    homepage = "https://github.com/derailed/popeye";
    license = licenses.asl20;
    maintainers = [ maintainers.bryanasdev000 ];
  };
}
