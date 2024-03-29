FROM localstack/localstack

RUN apk add --no-cache \
        bash \
        bash-completion \
        python \
        py-pip

RUN pip install awscli-local

COPY init.sh /docker-entrypoint-initaws.d/1.init.sh
