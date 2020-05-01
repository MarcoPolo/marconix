with (import <nixpkgs> {});
stdenv.mkDerivation {
  name = "git-repo-watcher";
  nativeBuildInputs = [ unzip ];
  src = fetchurl {
    url = "https://github.com/kolbasa/git-repo-watcher/archive/280dae9a6.zip";
    sha256 = "2801fa79ed2e585305cb96e756b151aa6b8d132857ab4fa51082c01a3b6ccebf";
  };
  installPhase = ''
    mkdir -p $out/bin
    cp git-repo-watcher $out/bin/git-repo-watch
  '';
}