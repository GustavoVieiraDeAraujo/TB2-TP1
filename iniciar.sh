#!/bin/bash

# inciar banco_de_dados
sqlite3 ./database/database.db < ./database/start.sql

# compilar
g++ ./*.cpp ./bibliotecas/*.cpp ./controladoras/apresentacao/*.cpp ./controladoras/servico/*.cpp -l sqlite3 -o executar

# iniciar programa
./executar 
