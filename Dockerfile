FROM minio/mc:RELEASE.2019-10-09T22-54-57Z AS mc
FROM postgres:12-alpine

COPY --from=mc /usr/bin/mc /usr/bin/mc

RUN apk add --no-cache ca-certificates
