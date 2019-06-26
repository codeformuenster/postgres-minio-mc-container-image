FROM minio/mc:RELEASE.2019-06-19T22-39-53Z AS mc
FROM postgres:11-alpine

COPY --from=mc /usr/bin/mc /usr/bin/mc

RUN apk add --no-cache ca-certificates
