# online-store
Проект "Интернет Магазин". Пользователи смогут просматривать каталог продуктов и добавлять продукты в корзину для покупок.

### Используемый стек технологий
Django, PostgreSQL, Docker, RabbitMQ, Celery

### Проект состоит из приложений:
* shop - основное приложение
* cart - для управления корзиной (карточкой) покупок
* orders - для управления заказами клиентов

### Функциональные возможности Интернет-магазина:

* Создание моделей каталога продуктов, добавление их на сайт администрирования и создание основных представлений для отображения каталога.
* Создание системы корзины для покупок с помощью сессий Django, чтобы пользователи могли сохранять выбранные продукты при просмотре сайта.
* Создание форм и функциональных возможностей для размещения заказов.
* Создание асинхронных задач для отправки писем по email пользователям при размещении заказа. Использование Django с Celery и RabbitMQ.
