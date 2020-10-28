FROM rwynn/monstache:rel6

# Workdir
ENV WORK_DIR /usr/src/app
#WORKDIR ${WORK_DIR}

COPY config.toml ${WORK_DIR}/config.toml

ENTRYPOINT monstache -f ${WORK_DIR}/config.toml