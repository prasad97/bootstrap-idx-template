
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-23.11"; 

  packages = [

    pkgs.nodejs_20
    pkgs.python3
  ];

  # Sets environment variables in the workspace
  env = {};
  idx = {

    # Enable previews
    previews = {
      enable = true;
      previews = {
        web = {
          command = ["python3" "-m" "http.server" "$PORT" "--bind" "0.0.0.0"];
          manager = "web";
        };
        
      };
    };

  };
}
