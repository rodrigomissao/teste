# Use a imagem Python oficial como base
FROM python:3.8-slim

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copie os arquivos do projeto para o contêiner
COPY app.py requirements.txt /app/

# Instale as dependências
RUN pip install -r requirements.txt

# Comando para executar a aplicação
CMD ["python", "app.py"]
