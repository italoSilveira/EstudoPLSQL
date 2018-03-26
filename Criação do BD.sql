--Banco de dados do projeto LetrasTrocadas--

create tablespace tbs_letrastrocadas
datafile 'C:\oraclexe\app\oracle\oradata\tbs_letrastrocadas.dbf' size 100M reuse
autoextend on next 10M maxsize 200M
online;

--drop tablespace tbs_dados;

-- Cria usuario (dono das tabelas)
create user admin --usuario
identified by "Letras@2017"  --senha
default tablespace tbs_letrastrocadas
temporary tablespace temp;

-- Cria e define o perfil de privilegios
create role perfil_desenv;

grant
create cluster,
create database link,
create procedure,
create session,
create sequence,
create synonym,
create table,
create any type,
create trigger,
create view
to perfil_desenv;


grant alter session to perfil_desenv;

grant create trigger to admin;

grant perfil_desenv to admin;

grant unlimited tablespace to admin;