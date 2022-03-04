# docker-gedit
A demonstration to run gedit in Docker GUI.

# Features

- Display gedit GUI on host display.
- Sync clipboard. (Default)
- Support dragging and dropping files into gedit. (Default)
- Support Chinese input methods. (Fcitx5 tested)
- Sync user's UID and GID with host.
- Sync user's home directory with host.
- Sync timezone with host.
- Cross-platform in theory: 
  * Linux: Ubuntu 21.10 tested.

# Build

1. cd [path-to-project]
1. docker-compose build
2. bash docker-compose-up.sh