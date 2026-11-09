# Lab 1

- Je copie requirements.txt et je fais le pip install avant de copier le code, du coup quand je modifie app/main.py le pip install reste en CACHED et le build est beaucoup plus rapide.
- Avec python:3.12-slim et le .dockerignore (.git, .venv, output, tests, caches) l'image passe de 2.68 Go (naif) à 538 Mo. J'ai aussi mis --no-cache-dir et --no-compile au pip install pour pas garder le cache de pip et les .pyc.
- Le conteneur tourne avec un user app (id -u = 1000, pas root) et OUTPUT_DIR permet d'écrire dans un volume (-e OUTPUT_DIR=/out -v ...) ou dans output par défaut sans volume.
