# ssh-over-tor

Tiny image that connects to TOR then opens an SSH client with torsocks. 

## Features

If a `private.ppk` file is placed at `/tmp/private.ppk` then the image will convert it into an `id_dsa` and use it to connect with SSH.

If a `id_dsa` file is placed at `/tmp/id_dsa`, then it'll be used to connect for SSH.

The image won't act as an exit-node for TOR.

# Usage

```
docker run -it --rm -v /c/temp/private.ppk:/tmp/private.ppk:ro moritonal/ssh-over-tor:latest {username}:{host}
```
