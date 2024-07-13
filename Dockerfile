FROM python:slim-bookworm

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV VIRTUAL_ENV=/opt/venv

RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="${VIRTUAL_ENV}/bin:$PATH"

RUN apt-get update \
    && apt-get install -y vim-gtk3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set a default command for the container
CMD ["vim"]
