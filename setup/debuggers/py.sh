function install_debugpy() {
    cd ~ && mkdir .virtualenvs && cd .virtualenvs
    python -m venv debugpy
    debugpy/bin/python -m pip install debugpy
}
