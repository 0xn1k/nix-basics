{
  description = "Simple Nix dev shell example";

  inputs = {
    nixpkgs = {
      url ="github:NixOS/nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      foo = 42;
      attrBt = {
        bar = "Hello, World!";
        intx = 1;
      };
      devShells.${system}.default = pkgs.mkShell {
        packages = [ pkgs.hello ];
      };
    };
}
