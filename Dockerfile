FROM debian:stable-slim as catter
ARG TAG
COPY gather.bash .
COPY *.yaml .
RUN /bin/bash gather.bash

FROM scratch
COPY --from=catter package.yaml .
