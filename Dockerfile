FROM alpine:3.11

RUN apk add openjdk8 python3 python3-dev py3-pip gcc linux-headers musl-dev libxml2 libxml2-dev libxslt-dev inkscape=0.92.4-r5 g++ git make
RUN pip3 install lxml numpy pyclipper
RUN ["git", "clone", "https://github.com/jakubdybczak/psj-hill-editor"]

WORKDIR "/psj-hill-editor"

CMD ["sh", "-c", "cp -r /psj-hill user_hill && make userhill && cp output.psj /psj-output/output.psj"]