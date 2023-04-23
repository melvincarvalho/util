# Util

A collection of handy utility scripts to make your life easier.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
  - [getrepos.sh](#getrepossh)
  - [getlastrepos.sh](#getlastrepossh)
  - [getfileschanged.sh](#getfileschangedsh)

## Installation

1. Clone this repository to your local machine:

```
git clone https://github.com/yourusername/util.git
```


2. Add the `util/bin` directory to your system's `PATH`:

- For temporary use (resets upon closing the terminal):

  ```
  export PATH=$PATH:/path/to/util/bin
  ```

- For permanent use, add the above line to your shell profile (e.g., `~/.bashrc`, `~/.bash_profile`, or `~/.zshrc`).

## Usage

### getrepos.sh

`getrepos.sh` is a script that fetches the names and URLs of a given GitHub user's repositories, sorted by the most recently updated.

### getlastrepos.sh

`getlastrepos.sh` is a script that fetches the urls of the last updated repos for a given user.

### getfileschanged.sh

`getfileschanged.sh` gets the last files changed in a repo.

#### Usage

```bash
getrepos.sh <username>
```

This command will display the names and URLs of the user's repositories, sorted by the most recently updated.

```bash
getlastrepos.sh <username>
```

This command will display the URLs of the user's last committed repositories, sorted by the most recently updated.


```bash
getfileschanged.sh <username>
```

This command will get the last 10 files changed in a repo.

Please note that this script requires the jq command-line JSON processor to be installed on your system.