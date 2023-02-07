pyenv-suffix
===========

pyenv-suffix is a [pyenv](https://github.com/pyenv/pyenv) plugin which allows you
to specify a 'version name suffix' when installing python.

Out of the box, pyenv does not allow you to install multiple copies of the same
python version. This can be limiting in situations where you want to have
different instances of python with, for example, different compile-time
configurations.

## Installation

```
git clone https://github.com/AdrianDAlessandro/pyenv-suffix.git $(pyenv root)/plugins/pyenv-suffix
```

## Usage

Specify the version suffix name using the `PYENV_VERSION_SUFFIX` environment variable
when performing a `pyenv install`

For example, building a version of python 3.10.9 with the shared `.so`:

```
PYENV_VERSION_SUFFIX="2.7.6_shared" PYTHON_CONFIGURE_OPTS="--enable-shared" pyenv install 2.7.6
```
