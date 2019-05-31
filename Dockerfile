#FROM testimage:latest as builder

FROM petronije2002/completed_builder:latest as builder


FROM  python:3.7-alpine as base

RUN apk add libstdc++=8.3.0-r0
COPY --from=builder /install /usr/local

ENV PYTHONPATH /usr/local

CMD ["python"]
