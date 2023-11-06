# Use uma imagem base do Python
FROM python:3.11.4

# Configuração do diretório de trabalho no contêiner
WORKDIR /app

# Copie os arquivos de código-fonte da sua aplicação para o contêiner
COPY . /app

# Instale as dependências
RUN pip install -r requirements.txt

# Exponha a porta em que a aplicação vai rodar
EXPOSE 8000

# Comando para iniciar a aplicação
CMD ["python", "manage.py", "runserver", "127.0.0.1:8000"]
