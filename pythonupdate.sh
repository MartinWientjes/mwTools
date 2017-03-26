conda update -y conda
conda update -y anaconda
conda update -y --all --no-update-deps 
pip install --upgrade pip
pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U
