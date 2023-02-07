# pyenv-suffix

pyenv-suffix is a [pyenv](https://github.com/pyenv/pyenv) plugin which allows you
to specify a 'version name suffix' when installing python.

Out of the box, pyenv does not allow you to install multiple copies of the same
python version. This can be limiting in situations where you want to have
different instances of python with, for example, different compile-time
configurations or under different architectures.

`pyenv-suffix` is forked and adapted from [`pyenv-alias`](https://github.com/s1341/pyenv-alias).

## Installation

```
git clone https://github.com/AdrianDAlessandro/pyenv-suffix.git $(pyenv root)/plugins/pyenv-suffix
```

## Usage

Specify the version suffix name using the `PYENV_VERSION_SUFFIX` environment variable
when performing a `pyenv install`

For example, building a version of python 3.10.9 for ARM64 architecture (assuming you're running pyenv appropriately installed in an ARM64 terminal):

```
PYENV_VERSION_SUFFIX="arm64" pyenv install 3.10.9
```

Will install a version of python labelled `3.10.9arm64`. Which will be listed under your installed versions of python with pyenv when running `pyenv versions`.

Note: if you are installing a version number that already exists, you will be asked to confirm if you want to install it, this is fine.
