# Lynpkgs

Some packages I'm working on that haven't been contributed to nixpkgs (yet) for any reason.

This uses [my-own-nixpkgs](https://github.com/drupol/my-own-nixpkgs)

### Integrating Your Repository as an Overlay

To use this repository as an overlay in another project, follow these steps:

1. **Add the Repository as an Input**:

   Add the following to your `nix` file to include this repository as an input:

   ```nix
   inputs = {
       lynpkgs.url = "https://github.com/lynatic1337/lynpkgs";
   };
   ```

2. **Include the Overlay in `pkgs`**:

   When constructing `pkgs`, include the overlay as follows:

   ```nix
   pkgs = import inputs.nixpkgs {
     overlays = [
       inputs.lynpkgs.overlays.default
     ];
   };
   ```

3. **Use Your Packages**:

   Access the packages in your project like this:

   ```nix
   buildInputs = [ pkgs.example1 pkgs.example2 ];
   ```

[RFC140]: https://github.com/NixOS/rfcs/pull/140
