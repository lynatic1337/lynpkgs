{
  lib,
  fetchFromGitHub,
  rustPlatform,
}:
rustPlatform.buildRustPackage rec {
  pname = "wgautomesh";
  version = "unstable-20241130";

  src = fetchFromGithub {
    owner = "lynatic1337";
    repo = "wgautomesh";
    rev = "b1d45baa7dde667b22d0ed7f5241dcfb8b5615e3";
    hash = "sha256-0s1f5p6gbwgj1lz1hxnsxgklic24q3gmxd490wzgj4a033wl010v";
  };

  cargoHash = "sha256-HZ1VImsfxRd0sFN/vKAKgwIV2eio2GiEz+6c1+dCmdk=";

  meta = with lib; {
    description = "NON-PRODUCTION VERSION! Simple utility to help connect wireguard nodes together in a full mesh topology";
    homepage = "https://github.com/lynatic1337/wgautomesh";
    license = licenses.agpl3Only;
    maintainers = [maintainers.lyn];
    mainProgram = "wgautomesh";
  };
}
