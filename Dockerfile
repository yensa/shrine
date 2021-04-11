# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.8-slim-buster

ENV PORT="5100"

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

WORKDIR /app
COPY . /app

# Creates a non-root user and adds permission to access the /app folder
RUN useradd appuser && chown -R appuser /app
USER appuser

# During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
# FIXME: For some reason when using [] to specify the CMD, the $PORT doesn't work
CMD "python" "-m" "uvicorn" "shrine.asgi:app" "--reload" "--host" "0.0.0.0" "--port" "$PORT"
