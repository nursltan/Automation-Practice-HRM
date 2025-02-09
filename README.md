# 📘 Automation-Practice-HRM  

## 🔍 **Описание проекта**  
`Automation-Practice-HRM` — это учебный проект для практики автоматизации тестирования веб-приложений. Основной целью является создание набора автоматических тестов для платформы [OrangeHRM](https://opensource-demo.orangehrmlive.com/) с использованием **Selenium**, **pytest**, **Docker**, и генерация отчётов через **Allure**.  

---

## 🚀 **Технологии и инструменты**  
- **Python 3.12** – основной язык программирования.  
- **Selenium 4.28** – для автоматизации веб-интерфейсов.  
- **pytest** – для написания и запуска тестов.  
- **Allure** – для создания детализированных отчётов о тестировании.  
- **Docker** – для контейнеризации проекта и обеспечения изолированной среды.  
- **GitHub Actions** – для CI/CD процессов.  

---

## 📂 **Структура проекта**  
```plaintext
Automation-Practice-HRM/
│
├── base/                     # Базовые функции и вспомогательные классы
├── config/                   # Конфигурационные файлы
├── pages/                    # Page Object Model для различных страниц
├── tests/                    # Автоматические тесты
├── allure-results/           # Результаты тестов для Allure
├── allure-report/            # Сгенерированный отчёт Allure
├── Dockerfile                # Файл для сборки Docker-образа
├── docker-compose.yml        # Конфигурация для Docker Compose
├── pytest.ini                # Конфигурация pytest
└── requirements.txt          # Зависимости проекта
```

---

## ⚙️ **Как запустить проект**  

### 1. **Клонировать репозиторий:**  
```sh
git clone https://github.com/nursltan/Automation-Practice-HRM.git
cd Automation-Practice-HRM
```

### 2. **Запуск тестов через Docker:**  
```sh
docker compose up --exit-code-from regression
```

### 3. **Генерация Allure отчёта:**  
```sh
docker compose run regression /bin/sh -c "allure generate allure-results --clean -o allure-report"
```

### 4. **Просмотр отчёта Allure:**  
```sh
allure serve allure-results
```

---

