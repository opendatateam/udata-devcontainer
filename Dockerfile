# [Choice] Python version: 3, 3.9, 3.8, 3.7, 3.6
ARG VARIANT="3.7"
FROM mcr.microsoft.com/vscode/devcontainers/python:0-${VARIANT}

# [Choice] Node.js version: none, lts/*, 16, 14, 12, 10
ARG NODE_VERSION="14"
RUN if [ "${NODE_VERSION}" != "none" ]; then su vscode -c "umask 0002 && . /usr/local/share/nvm/nvm.sh && nvm install ${NODE_VERSION} 2>&1"; fi

RUN mkdir -p udata/requirements udata-gouvfr/requirements 
COPY udata/requirements /tmp/udata/requirements
COPY udata-gouvfr/requirements /tmp/udata-gouvfr/requirements

RUN pip install -r /tmp/udata/requirements/all.pip \
                -r /tmp/udata-gouvfr/requirements/install.pip \
                -r /tmp/udata-gouvfr/requirements/test.pip
