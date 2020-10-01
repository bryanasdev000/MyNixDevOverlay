{ stdenv, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "kube-capacity";
  version = "0.4.0";

  src = fetchFromGitHub {
    rev = "v${version}";
    owner = "robscott";
    repo = "${pname}";
    sha256 = "1h5afm8njaw8rbpzr7yha6036g5d1payjxyn9wig50aq7d9s7r1s";
  };

  vendorSha256 = "1z5k2l5q043pyxb494k951iv1ika5wifczxprwxica212s3bv8x8";

  doCheck = false;

  meta = with stdenv.lib; {
    description =
      "A simple CLI that provides an overview of the resource requests, limits, and utilization in a Kubernetes cluster";
    homepage = "https://github.com/robscott/kube-capacity";
    changelog =
      "https://github.com/robscott/kube-capacity/releases/tag/v${version}";
    license = licenses.asl20;
    maintainers = [ maintainers.bryanasdev000 ];
    platforms = platforms.linux;
  };
}
