# Используем легковесный официальный образ Python
FROM python:3.12-slim

# Устанавливаем переменные окружения, чтобы Python не писал .pyc файлы 
# и не буферизировал вывод (полезно для логов в Docker)
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файл зависимостей и устанавливаем их
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь оставшийся проект в контейнер
COPY . /app/

# Открываем 80 порт, как сказано в задании
EXPOSE 80

# Команда для запуска сервера разработки Django на 80 порту
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]
