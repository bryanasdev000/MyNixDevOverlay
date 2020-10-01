{ stdenv, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "kubectl-example";
  version = "1.0.1";

  src = fetchFromGitHub {
    rev = "v${version}";
    owner = "seredot";
    repo = "${pname}";
    sha256 = "18vp53cda93qjssxygwqp55yc80a93781839gf3138awngf731yq";
  };

  vendorSha256 = "0sjjj9z1dhilhpc8pq4154czrb79z9cm044jvn75kxcjv6v5l2m5";

  doCheck = false;

  meta = with stdenv.lib; {
    description = "kubectl plugin for retrieving resource example YAMLs";
    homepage = "https://github.com/seredot/kubectl-example";
    changelog =
      "https://github.com/seredot/kubectl-example/releases/tag/v${version}";
    license = licenses.asl20;
    maintainers = [ maintainers.bryanasdev000 ];
    platforms = platforms.linux;
  };
}
