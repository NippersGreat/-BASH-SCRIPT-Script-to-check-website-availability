#!/bin/bash

# URL веб-сайта для проверки
URL="http://example.com"

# Проверка доступности веб-сайта
STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")

# Проверка кода состояния
if [ "$STATUS" -ne 200 ]; then
    # Отправка уведомления по электронной почте
    echo "Веб-сайт $URL недоступен. Код состояния: $STATUS" | mail -s "Предупреждение: Недоступность веб-сайта" your-email@example.com
fi