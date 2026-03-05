# Тестовое задание: Dockerfile для пустого Django-проекта

В данном репозитории представлено решение задачи по контейнеризации приложения. В качестве приложения выступает стартовый (пустой) проект на фреймворке Django.

## Пошаговая инструкция по запуску

### 1. Клонирование репозитория
Скачайте проект на свой локальный компьютер:
``` bash
git clone <ВСТАВЬ_СЮДА_ССЫЛКУ_НА_СВОЙ_РЕПОЗИТОРИЙ>
cd <НАЗВАНИЕ_ПАПКИ_РЕПОЗИТОРИЯ>
```

### 2. Сборка Docker-образа
Соберите образ из `Dockerfile` и присвойте ему тег `django-app:v1`:
``` bash
docker build -t django-app:v1 .
```

### 3. Запуск контейнера
Запустите приложение в фоновом режиме, пробросив 80-й порт контейнера на 80-й порт хоста:
``` bash
docker run -d -p 80:80 --name my-django-container django-app:v1
```



### 4. Проверка результата
Откройте браузер и перейдите по адресу: [http://localhost:80](http://localhost:80)

Вы должны увидеть стандартную приветственную страницу (заглушку) Django: "The install worked successfully! Congratulations!".

<img width="1912" height="1028" alt="image" src="https://github.com/user-attachments/assets/3c9e0df9-d7a9-449d-8901-94538bcb8b95" />
<img width="1226" height="292" alt="image" src="https://github.com/user-attachments/assets/530f0c94-bb33-46c9-a75f-2cf31a5f0551" />

---
