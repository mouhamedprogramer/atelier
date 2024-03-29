@echo off

rem Chemin vers le répertoire du projet
set PROJET_DIR=C:\Users\HP\Desktop\Atelier\

rem Démarrer le service Gateway
echo Démarrage du service Gateway...
cd "%PROJET_DIR%\gateway" || exit
mvn spring-boot:run

rem Attendre quelques secondes pour que le service Gateway démarre
timeout /t 20

rem Démarrer les autres services
echo Démarrage des autres services...
cd "%PROJET_DIR%\gir" || exit
mvn spring-boot:run

cd "%PROJET_DIR%\gp" || exit
mvn spring-boot:run

cd "%PROJET_DIR%\edt" || exit
mvn spring-boot:run
