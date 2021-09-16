# How to Use


## Run Server
```sh
docker run -it \
    -v "$(pwd)"/Worlds:/root/.local/share/Terraria/ModLoader/Worlds \
    -v "$(pwd)"/Mods:/root/.local/share/Terraria/ModLoader/Mods \
    --name=terraria \
    terraria
```