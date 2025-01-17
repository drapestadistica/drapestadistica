@echo off
color 3
title Menu Principal - Execute Process
::Variable de conexion a base de datos
Set Cnn=(local)

::partici๓n del disco duro, donde se ubica
Set disco=D:\

::Podemos redimensionar podemos usar
::mode ancho,alto ej: 
mode 110,30

:home
echo. ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo. บ                                                                                                         บ
echo. บ                   Elija una de las opciones de ejecuciขn                                                บ
echo. บ                                                                                                         บ
echo. ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo. บ                                                                                                         บ 
echo. บ                                                                                                         บ
echo. บ                                                                                                         บ
echo. บ    1) Crear Bae de datos Promociขn de la Salud                                                          บ
echo. บ                                                                                                         บ
echo. บ    2) Por Implementar                                                                                   บ
echo. บ                                                                                                         บ
echo. บ    3) Por Implementar                                                                                   บ
echo. บ                                                                                                         บ
echo. บ    4) Por Implementar                                                                                   บ
echo. บ                                                                                                         บ
echo. บ    5) Por Implementar                                                                                   บ
echo. บ                                                                                                         บ
echo. บ    6) Por Implementar                                                                                   บ
echo. บ                                                                                                         บ
echo. บ    7) Salir                                                                                             บ
echo. บ                                                                                                         บ
echo. บ                                                                                                         บ
echo. ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p menu= Ingrese Opciขn : 
 if "%menu%"=="1" goto opcion1
 if "%menu%"=="2" goto opcion2
 if "%menu%"=="3" goto opcion3
 if "%menu%"=="4" goto opcion4
 if "%menu%"=="5" goto opcion5
 if "%menu%"=="6" goto opcion6
 if "%menu%"=="7" goto opcion7
cls
 echo Opcion no valida, Presione cualquier tecla e intente nuevamente.
 pause>nul
cls
goto home

::Script que crea la base de datos del MINSA - OJO Descargando del nivel Nacional
 :opcion1
:: Limpiar pantalla
 cls
 goto submain 
::Salir del programa
 :opcion7
 cls&exit

::Sub Menu 
 :submain
	echo.ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
	echo.บ                                                                                                         บ
	echo.บ                   Elija una de las opciones de Promociขn de la Salud                                    บ
	echo.บ                                                                                                         บ
	echo.ฬออออออออออออออออออออออออออออออออออออออหออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
	echo.บ                                                                  บ ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ บ
	echo.บ                                                                  บ ณ  Criterios a Considerar          ณ บ
	echo.บ                                                                  บ ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู บ
	echo.บ    1) Crear Directorio Data                                      บ                                      บ
	echo.บ                                                                  บ                                      บ
	echo.บ    2) Crear base de datos                                        บ  ฎ Eliminar y crea toda la BD        บ
	echo.บ                                                                  บ                                      บ
	echo.บ    3) Poblar base de Datos                                       บ  ฎ Se inserta informaciขn requerida  บ
	echo.บ                                                                  บ                                      บ
	echo.บ    4) implementar                                                บ                                      บ
	echo.บ                                                                  บ                                      บ
	echo.บ    5) implementar                                                บ                                      บ
	echo.บ                                                                  บ                                      บ
	echo.บ    6) implementar                                                บ                                      บ
	echo.บ                                                                  บ                                      บ
	echo.บ    7) implementar                                                บ                                      บ
	echo.บ                                                                  บ                                      บ
	echo.บ                                                                  บ                                      บ
	echo.ศออออออออออออออออออออออออออออออออออออออสออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
set /p sbmenu= Ingrese Opciขn : 
 if "%sbmenu%"=="1" goto subopcion1
 if "%sbmenu%"=="2" goto subopcion2
 if "%sbmenu%"=="3" goto subopcion3
 if "%sbmenu%"=="4" goto subopcion4
 if "%sbmenu%"=="5" goto subopcion5
 if "%sbmenu%"=="6" goto subopcion6
 if "%sbmenu%"=="7" goto subopcion7
:subopcion1
 if exist d:\Data (echo "Existe una carpeta con el mismo nombre ") else (MKDIR D:\Data)
 pause
 cls
 goto submain

:subopcion2
 sqlcmd -S %Cnn% -E -i "%disco%Query_SedeRed\01_BasesDatos\01_1PROMSA\Create_database_promsa.sql" -t 0
 pause
 cls
 goto submain

:subopcion3
 sqlcmd -S %Cnn% -E -i "%disco%Query_SedeRed\01_BasesDatos\01_1PROMSA\inserccion_datos.sql" -t 0
 pause
 cls
 goto submain

:subopcion7
 cls&exit
goto home


::cls
:: echo Opcion no valida, Presione cualquier tecla e intente nuevamente.
 pause>nul
 cls
::goto submain 
