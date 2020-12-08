{ stdenv, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "jsonnet-bundler";
  version = "0.4.0";

  src = fetchFromGitHub {
    rev = "v${version}";
    owner = "${pname}";
    repo = "${pname}";
    sha256 = "0pk6nf8r0wy7lnsnzyjd3vgq4b2kb3zl0xxn01ahpaqgmwpzajlk";
  };

  vendorSha256 = null;

  meta = with stdenv.lib; {
    description = "A jsonnet package manager";
    homepage = "https://github.com/jsonnet-bundler/jsonnet-bundler";
    license = licenses.asl20;
    maintainers = [ maintainers.bryanasdev000 ];
  };
}
