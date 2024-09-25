PYTHON_SYS ?= python
PYTHON_ENV ?= ./.venv/bin/python

.PHONY: *

venv:
	[ -e ./.venv/                ] || $(PYTHON_SYS) -m venv ./.venv/
	[ -e ./.venv/bin/pip-compile ] || $(PYTHON_ENV) -m pip install 'pip-tools >= 7, < 8'

clean:
	rm -fr build/ py_icap_server.egg-info/ dist/

build:
	$(PYTHON_ENV) -m build --wheel

deploy: clean build
	$(PYTHON_ENV) -m twine upload dist/*
