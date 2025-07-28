# Nextcloud Server - Успешно запущен! 🎉

## Информация о доступе

- **URL**: http://localhost:8080
- **Админ пользователь**: admin
- **Пароль**: admin123

## Доступ к базе данных MySQL

- **Хост**: nextcloud-db (внутри Docker сети)
- **База данных**: nextcloud
- **Пользователь**: nextcloud
- **Пароль**: nextcloud_password
- **Root пароль**: nextcloud_root_password

## Управление сервером

### Просмотр статуса контейнеров:
```bash
sudo docker ps
```

### Остановка сервера:
```bash
sudo docker compose -f docker-compose.nextcloud.yml down
```

### Запуск сервера:
```bash
sudo docker compose -f docker-compose.nextcloud.yml up -d
```

### Просмотр логов:
```bash
sudo docker logs nextcloud-app
sudo docker logs nextcloud-mysql
```

### Перезапуск контейнеров:
```bash
sudo docker restart nextcloud-app
sudo docker restart nextcloud-mysql
```

## Файлы и настройки

- **Docker Compose файл**: docker-compose.nextcloud.yml
- **Данные Nextcloud**: хранятся в Docker volume `workspace_nextcloud_data`
- **Данные MySQL**: хранятся в Docker volume `workspace_nextcloud_db_data`

## Первый вход

1. Откройте браузер и перейдите по адресу: http://localhost:8080
2. Введите логин: admin
3. Введите пароль: admin123
4. Nextcloud готов к использованию!

## Важные замечания

- Сервер доступен только локально на порту 8080
- Для продакшена рекомендуется изменить пароли по умолчанию
- Для доступа извне потребуется настройка сети и безопасности