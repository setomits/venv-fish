# venv-fish

venv-fish includes some wrapper commands for venv in Python3.
You can use it like [virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/).

## Install

With [fisherman](https://github.com/fisherman/fisherman)

```
fisher setomits/venv-fish
```

## Usage

By default, venv-fish uses `~/venv` for virtual environments.
You can change the directory with environment variable `$VENV`.


### Create a new envionment

```fish
mkvenv cool-flask-app
```

mkvenv creates an environment and change into the environment.
If you want to quit, run `deactivate`.

### Change working environment

```fish
workon cool-flask-app
```

If you are in the project directory whose name is same with the enviornment, you can run just `workon` like below:

```fish
cd /path/to/projects/cool-flask-app
workon
```

### Remove an environment

```fish
rmvenv cool-flask-app
```

### List all environments

```fish
lsvenv
```
