#!/usr/bin/env bash
echo -e "\e[1;36m[INIT- MacOS]\e[0m Installing python-buildenv tools for pyenv..."
echo -e "\e[1;32m[INFO - brew]\e[0m Updating packages using brew update..."
brew update
echo -e "\e[1;32m[INFO - xcode]\e[0m Installing Apple xcode CLI tools..."
xcode-select --install
echo -e "\e[1;33m[TASK - brew]\e[0m brew update complete, installing..."
brew install make wget curl llvm \
openssl@1.1 openssl@3 zlib bzip2 \
libreadline-java 
echo -e "\e[1;32m[INFO - brew]\e[0m Installation complete."
# Most of these packages are not working on brew, since some are preinstalled
# and some need to be installed manually.
# Working packages:
# make wget curl llvm
# Packages with other candidates:
# libsqlite3-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev
# libffi-dev liblzma-dev

# Removed + reinstalled xcode cli tools, reinstalled and then installed python version =<3.9.6
# Include a fix script for macos referencing the fix on Stackoverflow:
# https://stackoverflow.com/questions/51551557/pyenv-build-failed-installing-python-on-macos
