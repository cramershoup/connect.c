# connect.c


> Make socket connection using SOCKS4/5 and HTTP tunnel.

    Copyright (c) 2000-2006 Shun-ichi Goto
    Copyright (c) 2002, J. Grant (English Corrections)
    Copyright (c) 2010, Reini Urban (added realm to http_auth basic)
    Copyright (c) 2018, Cramer Shoup (accepts password from command line options)

## Building

### Building Windows Targets on Windows Host

1. Install the latest [Visual Studio
   2017](https://www.visualstudio.com/downloads/): The "Community" edition is
   sufficient (and free of charge). During installation, choose the "Desktop
   development with C++" workload.

2. Install [CMake 3.8.0](https://cmake.org/download/) or later. During
   installation, choose to "Add CMake to the system PATH for all users".

```
.\scripts\build-win-msvc.bat <ARCH> <CONFIG>

Arguments:
       ARCH:      x86, x64
     CONFIG:    Debug, Release, MinSizeRel, RelWithDebInfo
```

### Build Linux Targets on Linux Host

```bash
sudo apt-get install bash build-essential cmake
./scripts/build-linux
```

### Build Linux Targets with Docker

```
# For Unix
./scripts/build-linux-with-docker <ARCH>

# For Windows
.\scripts\build-linux-with-docker <ARCH>

Arguments:
       ARCH:      x86, x64
```

### Build MacOS Target on MacOS Host

1. Install the latest [Xcode](https://developer.apple.com/xcode/).

2. Install CMake e.g. `brew install cmake`

```bash
./scripts/build-mac
```

## Contributing

Please feel free to contribute to this project. But before you do so, just make
sure you understand the following:

1\. Make sure you have access to the official repository of this project where
the maintainer is actively pushing changes. So that all effective changes can go
into the official release pipeline.

2\. **IMPORTANT!** Using Git may expose your personal identity or private
information. Use
[git-privacy-setup](https://github.com/cramershoup/git-privacy-setup) to
properly configure your local git repository to protect your privacy.

4\. Make sure the path to the project doesn't contain any sensitive information
like your user name. Otherwise those info is likely to appear inside the
compiled binary. It's recommended to create a folder at `/projects` or
`C:\projects` and put the project in there. If you don't want to physically
store the project on that path, you can use symbolic links instead, and always
work under the link path not the original path.

5\. Make sure your editor has [EditorConfig](https://editorconfig.org/) plugin
installed and enabled. It's used to unify code formatting style.

6\. Use [Conventional Commits 1.0.0-beta.2](https://conventionalcommits.org/) to
format Git commit messages.

7\. Use [Gitflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
as Git workflow guideline.

8\. Use [Semantic Versioning 2.0.0](https://semver.org/) to tag release
versions.

## Contact

This project is currently maintained by
Cramer Shoup &lt;<cramershoup@gmail.com>&gt;. You can
also contact on
Discord &lt;cramershoup#7188&gt;, 
Reddit &lt;[cramershoup](https://www.reddit.com/user/cramershoup)&gt;, 
Keybase &lt;[shoup](https://keybase.io/shoup)&gt;, 
and P2P-Network &lt;cramer&gt;.

## License

Copyright (C) Cramer Shoup &lt;<cramershoup@gmail.com>&gt;

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
