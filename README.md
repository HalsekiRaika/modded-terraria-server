# How to Use


## Run Server
```sh
docker run -it \
    -v ./Worlds:/root/.local/share/Terraria/ModLoader/Worlds \
    -v ./Mods:/root/.local/share/Terraria/ModLoader/Mods \
    --name=terraria \
    terraria
```