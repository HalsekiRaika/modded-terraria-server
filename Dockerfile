FROM ubuntu:14.04.4

ENV TMODLOADER_VERSION=v0.11.8.5
ENV TERRARIA_ZIP=terraria-server.zip
ENV TMODLOADER_ZIP=tmodloader.zip

WORKDIR /opt/terraria

RUN apt-get update -y \ 
    && apt-get upgrade -y \ 
    && apt-get install unzip -y

ADD https://github.com/blushiemagic/tModLoader/releases/download/${TMODLOADER_VERSION}/tModLoader.Linux.${TMODLOADER_VERSION}.zip ${TMODLOADER_ZIP}

RUN unzip ${TMODLOADER_ZIP} -d Linux/ \
    && rm ${TMODLOADER_ZIP} \
    && chmod -R a+rw ./Linux/* \
    && chmod a+x ./Linux/tModLoaderServer*

EXPOSE 7777

ENTRYPOINT ./Linux/tModLoaderServer -x64 -config /opt/terraria/Linux/serverconfig.txt