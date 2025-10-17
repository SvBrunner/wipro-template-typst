{
  description = "Basic dev flake for Compilerbau";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      packages.${system} = {
        typst = pkgs.typst;
      };

      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          pkgs.typst
        ];
      };
    };
}
