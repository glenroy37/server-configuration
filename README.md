# teier.eu server-configuration
This is the configuration for my private server.

It's a basic Ansible + Docker-Compose setup with Minecraft, Starbound, Nextcloud and Nummus, the latter of both behind an nginx reverse proxy.  

Maybe it can help you setting up your own server, you're free to copy and modify my files.

## Usage
Most functionality is achieved through ansible playbooks. If you want to use them for your own server, install Ansible on your management machine (e.g. your desktop computer), add your server to `/etc/ansible/hosts` and change the host in the playbook files.

Mariadb, Nextcloud and Nummus need Database passwords, therefore copy the template.env file to .env, enter your passwords and run one of the shell files (e.g. `start-mariadb.sh`)

## Minecraft
To use the minecraft server, just copy the `server.jar` from `minecraft.net` to the minecraft directory and run `ansible-playbook minecraft/start.yml`

## Starbound
My Starbound container only works with the **GOG version!**
After installing Starboud on your gaming machine, archive all files from `~/GOG Games/Starbound/game/` into `starbound/binaries/binaries.tar.gz` and then run `ansible-playbook starbound/start.yml`

## Matrix Synapse
Before using Synapse you have to copy the file synapse/homserver.template.yaml to `synapse/config/homserver.yaml` and insert all missing values (like Shared registartion key)
Secondly you have to generate the signing key by running the `generate-signing-key.py` script and placing it in `synapse/config/matrix-signing.key`. Please not that signedjson python module has to be installed.
Thanks to Abel Luck for putting that script on GitHub Gist: [https://gist.github.com/abeluck/bb7b28fa75872212839e6fb3f07000d3]()
After that you can just start Synapse by `ansible-playbook starbound/start.yml`