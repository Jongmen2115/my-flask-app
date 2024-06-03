# Użyj oficjalnego obrazu Pythona jako bazowego
FROM python:3.9

# Ustaw katalog roboczy
WORKDIR /app

# Skopiuj plik requirements.txt do katalogu roboczego
COPY requirements.txt .

# Zainstaluj wymagane pakiety, w tym Flaska
RUN pip install --no-cache-dir -r requirements.txt flask

# Skopiuj wszystkie pliki aplikacji do katalogu roboczego
COPY . .

# Ustaw zmienną środowiskową FLASK_APP
ENV FLASK_APP=app.py

# Uruchom aplikację Flask
CMD ["flask", "run", "--host=0.0.0.0"]
