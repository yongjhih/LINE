FROM thrift

RUN apt-get update && apt-get install -y git python python-pip && \
    git clone https://github.com/carpedm20/LINE.git && \
    cd LINE && \
    pip install ez_setup && \
    python setup.py install && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
