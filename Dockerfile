FROM python:3.10

LABEL maintainer='Sergey Karpenko'

COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR .
COPY . .

# Запускаем бота при старте контейнера
CMD ["python", "Bot/Massage_bot.py"]
