FROM ubuntu:18.04

WORKDIR /snpe-1.65

COPY requirements.txt /snpe-1.65

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get update && apt-get install -y --no-install-recommends python3.6 python3-pip libpython3.6 python3-dev python3-setuptools libatomic1 build-essential cmake && \
    python3 -m pip install --upgrade --force-reinstall pip --no-cache-dir && \
    pip3 install -r requirements.txt --no-cache-dir && \
    rm requirements.txt && \
    apt-get clean && rm -rf /var/lib/apt/lists/*