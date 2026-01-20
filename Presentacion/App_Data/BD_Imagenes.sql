use master;

if exists (SELECT * FROM sys.databases WHERE name = 'Imagenes')
begin
	DROP DATABASE Imagenes
end

go

CREATE DATABASE Imagenes
use Imagenes

go
CREATE TABLE Personas
(
	Cedula varchar(10) primary key,
	Nombre varchar(20),
	Miniatura varchar (100),
	Foto varchar (100)
)

go

CREATE PROCEDURE sp_Agregar 
@Cedula varchar(10),
@Nombre varchar(20),
@Miniatura varchar (100),
@Foto varchar (100)
AS
begin
	INSERT Personas VALUES (@Cedula, @Nombre, @Miniatura, @Foto)
	if @@ERROR <> 0
		return -1
	else
		return 1
end

go
CREATE PROCEDURE sp_Buscar
@Cedula varchar(10)
AS
begin
	SELECT * FROM Personas WHERE Cedula = @Cedula
end
