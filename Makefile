install:
    pip install --upgrade pip &&\
    pip install -r requirements.txt

test:
    python -m pytest -vv --cov=hello  --cov=hellocli app test_hello.py

format:
    black *.py

lint:
    pylint --disable=R,C,W1203,E1101 hello.py hellocli.py
    #lint Dockerfile
    #docker run --rm -i hadolint/hadolint < Dockerfile
    
all: install lint test