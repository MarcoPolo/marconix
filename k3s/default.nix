with (import <nixpkgs> {});
stdenv.mkDerivation {
  name = "k3s";
  nativeBuildInputs = [ bash ];
  src = ./.;
  installPhase = ''
    bash ./k3s_install.sh
    mkdir -p $out/bin
    cp k3s $out/bin/k3s
  '';
}