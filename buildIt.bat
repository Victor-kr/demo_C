echo .. Start gcc Build ..

if exist managerDriver.exe del managerDriver.exe

if exist manager_driver.c echo .. Exist file : manager_driver.c
if exist database.c echo .. Exist file : database.c
if exist whitebox.c echo .. Exist file : whitebox.c

rem This compile command builds an executable that needs stdin
gcc -g manager_driver.c manager.c database.c whitebox.c -o managerDriver.exe

rem This compile command builds an executable that does not need stdin
rem gcc -g -DORDER manager_driver.c manager.c database.c whitebox.c -o managerDriver.exe

if exist managerDriver.exe echo .. Complete build file : managerDriver.exe

echo .. End gcc Build ..