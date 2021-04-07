# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.8-slim-buster

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

WORKDIR /app
COPY . /app

# Creates a non-root user and adds permission to access the /app folder
RUN useradd appuser && chown -R appuser /app
USER appuser

ENV FLASK_APP=shrine/wsgi:app
# During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
CMD ["python", "-m", "flask", "run", "--host", "0.0.0.0"]
