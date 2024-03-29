@echo off

rem Chemin vers le répertoire du projet
set PROJET_DIR=C:\Users\HP\Desktop\Atelier\


cd "%PROJET_DIR%\gateway" || exit

rem Démarrer le consul
echo Démarrage du consul...
start docker-compose -f src/main/docker/consul.yml up

rem Démarrer le keycloak
echo Démarrage du keycloak...
start docker-compose -f src/main/docker/keycloak.yml up

timeout /t 10

rem Démarrer le service Gateway
echo Démarrage du service Gateway...
start mvn

rem Démarrer les autres services
echo Démarrage des autres services...
cd "%PROJET_DIR%\gir" || exit
start mvn

cd "%PROJET_DIR%\gp" || exit
start mvn

cd "%PROJET_DIR%\edt" || exit
start mvn
