#!/usr/bin/env bash
#
# allows you to specify a PYENV_VERSION_SUFFIX which will append to the automatically
# generated PREFIX for the version of Python you are installing.
# This will allow you to install multiple versions of a given python version,
# perhaps built with different configure flags or under different architectures.

if [ -n "${PYENV_VERSION_SUFFIX}" ]; then
  before_install 'PREFIX="${PREFIX}${PYENV_VERSION_SUFFIX##*/}"; echo "Installing at ${PREFIX}"'
fi
