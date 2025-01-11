@echo off
Set Version=2.0
title Darkyy Acuatic v2.0

:: Codigo de Colores
set "g=[38;2;47;247;179m" 
set p=[95m  
set "w=[0m"  
set "b=[38;2;0;210;255m"
set "r=[0m"                        
%B%

:: Activar caracteres especiales
Reg.exe add "HKCU\CONSOLE" /v "VirtualTerminalLevel" /t REG_DWORD /d "1" /f  > nul

:: Activar Delayed Expansion
setlocal EnableDelayedExpansion > nul
cls 

::Viendo permisos de administrador
chcp 65001 >nul 2>&1
cls 
echo.
echo. %g%╔═════════════════════════%b%═══════════════════════════╗%r%
echo. %g%║                                                    %b%║%r% 
echo  %g%║   %w% Viendo permisos de administrador...           %b%  ║%r%
echo. %g%║                                                    %b%║%r%
echo. %g%╚═════════════════════════%b%═══════════════════════════╝%r%
timeout /t 1 /nobreak > NUL

rmdir %SystemDrive%\Windows\system32\adminrightstest >nul 2>&1
mkdir %SystemDrive%\Windows\system32\adminrightstest >nul 2>&1
if %errorlevel% neq 0 (   
cls 
echo.
echo. %g%╔═════════════════════════%b%═══════════════════════════╗%r%
echo. %g%║                                                    %b%║%r%     
echo  %g%║  %w% Corriendo Darkyy Acuatic como administrador...  %b% ║%r%          
echo. %g%║                                                    %b%║%r%
echo. %g%╚═════════════════════════%b%═══════════════════════════╝%r%
timeout /t 1 /nobreak > NUL
chcp 437 >nul 2>&1
powershell -NoProfile -NonInteractive -Command start -verb runas "'%~s0'" >nul 2>&1
chcp 65001 >nul 2>&1

if !errorlevel! equ 0 exit /b


echo.
echo      Acuatic no esta corriendo como administrador!
echo     Algunas optimizaciones no iran, Ejecutar igualmente?
echo.
choice /c:"CQ" /n /m "%BS%               [C] Continue  [Q] Quit" & if !errorlevel! equ 2 exit /b
)


chcp 65001 >nul 2>&1

set THREADS=%NUMBER_OF_PROCESSORS% > nul
for /f %%i in ('wmic path Win32_UserAccount where name^="%username%" get sid ^| findstr "S-"') do set "USER_SID=%%i"


::Activar punto de restauracion
chcp 437 >nul 2>&1
powershell -NoProfile Enable-ComputerRestore -Drive 'C:\' >nul 2>&1
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f  >nul 2>&1
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "DisableConfig" /f >nul 2>&1
Reg.exe add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f >nul 2>&1
chcp 65001 >nul 2>&1
%b%

CLS
echo. 
echo. 
echo.
echo.                                   %b%███   ▄█ ▄███▄      ▄       ▄   ▄███▄      ▄   ▄█ ██▄   ████▄ %r%
echo.                                   %b%█  █  ██ █▀   ▀      █       █  █▀   ▀      █  ██ █  █  █   █ %r%
echo.                                   %b%█ ▀ ▄ ██ ██▄▄    ██   █ █     █ ██▄▄    ██   █ ██ █   █ █   █ %r%
echo.                                   %b%█  ▄▀ ▐█ █▄   ▄▀ █ █  █  █    █ █▄   ▄▀ █ █  █ ▐█ █  █  ▀████ %r%
echo.                                   %b%███    ▐ ▀███▀   █  █ █   █  █  ▀███▀   █  █ █  ▐ ███▀        %r%
echo.                                   %b%                 █   ██    █▐           █   ██                %r%
echo.                                   %b%                           ▐                                  %r%
echo.                 %g%"══════════════════════════════════════════════════════════════════════════════════════════════════"%r%                                                                                                  
echo.                                %r%  Hecho por Darkyy® 2024 %g%║%r% Version 2.0 %g%║%r% actualizado 17 septiembre 2024 %r%        
echo.                                                                                                   
echo.
echo.                           No soy responsable de los daños hechos a tu equipo (no suele pasar muy amenudo)
echo.
echo.                            Todos estos tweaks son buenos y en ningun momento estoy usando overclocking.
echo.
echo.                                  Esta prohibido re-vender mis utilidades gratis y de pago.
echo.
echo.                 %g%"══════════════════════════════════════════════════════════════════════════════════════════════════"%r%
echo.
echo.                     Presiona un numero en las diferentes opciones segun lo que quieras hacer o de lo que dispones
echo.
echo.                             Porfavor lee todas las advertencias, opciones y recomendaciones.
echo.
echo.                 %g%"═══════════════════════════════════════════════════════════════════════════════════════════════════"
echo.
echo.
echo.
echo.                                  %b%[═══════════════════════════════════════════════════════]
echo.                                        %r%   Presiona una tecla para continuar...
echo.                                  %b%[═══════════════════════════════════════════════════════]
echo.
echo.

echo. 
pause > nul
CLS

:: Punto de Restauracion
:restauracion
cls
echo.
echo.
echo.                                     %b%█▄▄▄▄ ▄███▄     ▄▄▄▄▄      ▄▄▄▄▀ ██     ▄   █▄▄▄▄ ██   ▄█▄    ▄█ ████▄    ▄   
echo.                                     %b%█  ▄▀ █▀   ▀   █     ▀▄ ▀▀▀ █    █ █     █  █  ▄▀ █ █  █▀ ▀▄  ██ █   █     █  
echo.                                     %b%█▀▀▌  ██▄▄   ▄  ▀▀▀▀▄       █    █▄▄█ █   █ █▀▀▌  █▄▄█ █   ▀  ██ █   █ ██   █ 
echo.                                     %b%█  █  █▄   ▄▀ ▀▄▄▄▄▀       █     █  █ █   █ █  █  █  █ █▄  ▄▀ ▐█ ▀████ █ █  █ 
echo.                                     %b%  █   ▀███▀               ▀         █ █▄ ▄█   █      █ ▀███▀   ▐       █  █ █ 
echo.                                     %b% ▀                                 █   ▀▀▀   ▀      █                  █   ██ 
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%r%
echo.                                                 %r% Quieres crear un punto de restauracion? 
echo.                                                                                                                                                                      
echo.                                                                                                                                       
echo.                                                      %b%[%r%1%b%]%r% Hacer         %b%[%r%2%b%]%r% Saltar          
echo.                                                                                                                                       
echo.      
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%r%
echo.                                           %p%* %r% Permite cambiar los cambios hacia antes de usar la utilidad
echo.                                           %p%* %r% Puedes usar el punto de restauracion en el menu de la utilidad
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%r%
echo. 
 
set /p input=%g%:%r%
if /i %input% == 1 goto rON
if /i %input% == 2 goto res

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error de escritura detectado!
timeout 2
goto RedirectMenu

:RedirectMenu
goto restauracion

:rON
chcp 437 >nul
echo - Haciendo punto de restauracion  %b%
powershell -Command "Checkpoint-Computer -Description 'Darkyy Acuatic v2.0' -RestorePointType 'MODIFY_SETTINGS'" 
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Punto de restauracion completado.', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 
echo.
echo.
echo.
cls
goto :res

:res 
md C:\acuatic
cls
echo %b%
chcp 437 >nul 2>&1
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Descargando recursos...', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"

::Descargando recursos
curl -g -k -L -# -o "%temp%\acuatic.zip" "https://www.dropbox.com/scl/fi/vqgcysys7jh8r2rmvre1k/recursos.zip?rlkey=kmmfb3ns4kcz5unubhr7zwmyf&st=zfj9t1xp&dl=1" 
powershell -NoProfile Expand-Archive '%temp%\acuatic.zip' -DestinationPath 'C:\acuatic' >nul 2>&1 
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Recursos Descargados correctamente !', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1

cls
goto menu


:pronto
echo.
echo.
echo.
echo.                                              %b%"═══════════════════════════════════════════════════════"
echo.                                                %w%                    Proximamente...  
echo.                                                %w%        Presiona cualquier tecla para volver al menu
echo.                                              %b%"═══════════════════════════════════════════════════════"
pause > nul
cls
goto menu

:restaurar
cls
rstrui.exe
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu


:Menu
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.
echo.                                 %b% ██▄   ██   █▄▄▄▄ █  █▀ ▀▄    ▄ ▀▄    ▄ ██   ▄█▄      ▄   ██     ▄▄▄▄▀ ▄█ ▄█▄ ©   
echo.                                 %b% █  █  █ █  █  ▄▀ █▄█     █  █    █  █  █ █  █▀ ▀▄     █  █ █ ▀▀▀ █    ██ █▀ ▀▄  
echo.                                 %b% █   █ █▄▄█ █▀▀▌  █▀▄      ▀█      ▀█   █▄▄█ █   ▀  █   █ █▄▄█    █    ██ █   ▀  
echo.                                 %b% █  █  █  █ █  █  █  █     █       █    █  █ █▄  ▄▀ █   █ █  █   █     ▐█ █▄  ▄▀ 
echo.                                 %b% ███▀     █   █     █    ▄▀      ▄▀        █ ▀███▀  █▄ ▄█    █  ▀       ▐ ▀███▀  
echo.                                 %b%         █   ▀     ▀                      █          ▀▀▀    █                    
echo.                                 %b%        ▀                                ▀                 ▀                     
echo.       %g%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
echo.       %g%                                                                %b%[%r%0%b%]%r% Tutorial                       
echo.       %r%                                                                                                                                                      
echo.       %r%                  %b%[%r%1%b%]%r% Tweaks Generales              %b%[%r%2%b%]%r% Teclado y Mouse                    %b%[%r%3%b%]%r% Tweaks Windows                      
echo.       %r%                                                                                                                    
echo.       %r%                  %b%[%r%4%b%]%r% Limpiar pc                    %b%[%r%5%b%]%r% Tweaks Memoria                     %b%[%r%6%b%]%r% Desactivar apps inicio
echo.       %r%                                                                                                                 
echo.       %r%                  %b%[%r%7%b%]%r% Tweaks GPU                    %b%[%r%8%b%]%r% Tweaks CPU                         %b%[%r%9%b%]%r% Tweaks USB
echo.       %r%                                                                                                                                                                 
echo.       %r%                  %b%[%r%10%b%]%r% Tweaks Energia               %b%[%r%11%b%]%r% Debloat                           %b%[%r%12%b%]%r% Tweaks Disco   
echo.       %r% 
echo.       %r%                  %b%[%r%13%b%]%r% Arreglar Archivos            %b%[%r%14%b%]%r% Darkyy Net v1.0                   %b%[%r%15%b%]%r% Proximamente
echo.       %r%                                                                                                                      
echo.       %g%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
echo.       %r%                                                                                                                      
echo.       %r%                  %b%[%r%R%b%]%r% Revertir                      %b%[%r%W%b%]%r% Apoyar mi trabajo                  %b%[%r%P%b%]%r% Usar punto de restauracion  
echo.       %r% 
echo.       %r%                  %b%[%r%F%b%]%r% Refrescar recursos            %b%[%r%X%b%]%r% Salir de la utilidad               %b%[%r%E%b%]%r% Discord          
echo.       %r%                                                                                                                                          
echo.       %r%                                                                                                                                                                           
echo.       %r%                         %r%  Hecho por Darkyy® 2024 %g%║%r% Version 2.0 %g%║%r% actualizado 17 septiembre 2024 %r%                                     
echo.       %r%                                                                                                                  
echo.       %g%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"



set /p input=%g%:%r%
if /i %input% == 1 goto 0 start https://youtu.be/rjgWJFPAL3U
if /i %input% == 1 goto 1
if /i %input% == 2 goto 2
if /i %input% == 3 goto 3
if /i %input% == 4 goto 4
if /i %input% == 5 goto 5
if /i %input% == 6 goto 6
if /i %input% == 7 goto 7
if /i %input% == 8 goto 8war
if /i %input% == 9 goto 9
if /i %input% == 10 goto 10war 
if /i %input% == 11 goto 11war
if /i %input% == 12 goto 12
if /i %input% == 13 goto 13
if /i %input% == 14 goto 14
if /i %input% == 15 goto pronto

if /i %input% == R goto revertir
if /i %input% == P goto Restaurar
if /i %input% == F goto Refrescar
if /i %input% == X goto Salir
if /i %input% == W start https://youtube.com/@darkyyfn?sub_confirmation=1 
if /i %input% == E start https://dsc.gg/darkyytweaks

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error de escritura detectado!
timeout 1 
goto RedirectMenu

:RedirectMenu
cls
goto menu

:Refrescar
echo %w% - Cargando ...%b%
cls 
md C:\acuatic >nul 2>&1
echo %w% - Refrescando carpeta de recursos %b%
timeout /t 1 /nobreak > NUL
del /s /q C:\acuatic  >nul 2>&1

goto :res 


:net
:14
CLS
echo.
echo.                                                                                                   
echo. 
echo.                                   %b%███   ▄█ ▄███▄      ▄       ▄   ▄███▄      ▄   ▄█ ██▄   ████▄ %r%
echo.                                   %b%█  █  ██ █▀   ▀      █       █  █▀   ▀      █  ██ █  █  █   █ %r%
echo.                                   %b%█ ▀ ▄ ██ ██▄▄    ██   █ █     █ ██▄▄    ██   █ ██ █   █ █   █ %r%
echo.                                   %b%█  ▄▀ ▐█ █▄   ▄▀ █ █  █  █    █ █▄   ▄▀ █ █  █ ▐█ █  █  ▀████ %r%
echo.                                   %b%███    ▐ ▀███▀   █  █ █   █  █  ▀███▀   █  █ █  ▐ ███▀        %r%
echo.                                   %b%                 █   ██    █▐           █   ██                %r%
echo.                                   %b%                           ▐                                  %r%
echo.                 %g%"══════════════════════════════════════════════════════════════════════════════════════════════════"%r%                                                                                                  
echo.                                %r%  Hecho por Darkyy® 2024 %g%║%r% Version 1.0 %g%║%r% actualizado 17 septiembre 2024 %r%        
echo.                                                                                                   
echo.
echo.                           No soy responsable de los daños hechos a tu equipo (no suele pasar muy amenudo)
echo.
echo.                            Todos estos tweaks son buenos y en ningun momento estoy usando overclocking.
echo.
echo.                                  Esta prohibido re-vender mis utilidades gratis y de pago.
echo.
echo.                 %g%"══════════════════════════════════════════════════════════════════════════════════════════════════"%r%
echo.
echo.                     Presiona un numero en las diferentes opciones segun lo que quieras hacer o de lo que dispones
echo.
echo.                             Porfavor lee todas las advertencias, opciones y recomendaciones.
echo.
echo.                 %g%"═══════════════════════════════════════════════════════════════════════════════════════════════════"
echo.
echo.
echo.
echo.                                  %b%[═══════════════════════════════════════════════════════]
echo.                                        %r%   Presiona una tecla para continuar...
echo.                                  %b%[═══════════════════════════════════════════════════════]
echo.

echo. 
pause > nul
CLS


:: Punto de restauracion
:puntorestauracion
chcp 437 >nul 2>&1
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Te recomendamos hacer un punto de restauracion, dale ok para seguir', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.                                     %b%█▄▄▄▄ ▄███▄     ▄▄▄▄▄      ▄▄▄▄▀ ██     ▄   █▄▄▄▄ ██   ▄█▄    ▄█ ████▄    ▄   
echo.                                     %b%█  ▄▀ █▀   ▀   █     ▀▄ ▀▀▀ █    █ █     █  █  ▄▀ █ █  █▀ ▀▄  ██ █   █     █  
echo.                                     %b%█▀▀▌  ██▄▄   ▄  ▀▀▀▀▄       █    █▄▄█ █   █ █▀▀▌  █▄▄█ █   ▀  ██ █   █ ██   █ 
echo.                                     %b%█  █  █▄   ▄▀ ▀▄▄▄▄▀       █     █  █ █   █ █  █  █  █ █▄  ▄▀ ▐█ ▀████ █ █  █ 
echo.                                     %b%  █   ▀███▀               ▀         █ █▄ ▄█   █      █ ▀███▀   ▐       █  █ █ 
echo.                                     %b% ▀                                 █   ▀▀▀   ▀      █                  █   ██ 
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%r%
echo.                                                 %r% Quieres crear un punto de restauracion? 
echo.                                                                                                                                                                      
echo.                                                                                                                                       
echo.                                                      %b%[%r%1%b%]%r% Hacer         %b%[%r%2%b%]%r% Saltar          
echo.                                                                                                                                       
echo.      
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%r%
echo.                                           %p%* %r% Permite cambiar los cambios hacia antes de usar la utilidad
echo.                                           %p%* %r% Puedes usar el punto de restauracion en el menu de la utilidad
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%r%
echo. 
 
set /p input=%g%:%r%
if /i %input% == 1 goto RestoreP
if /i %input% == 2 goto :NMenu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error de escritura detectado!
timeout 1
goto RedirectMenu

:RedirectMenu              
goto puntorestauracion

:RestoreP
chcp 437 >nul 
echo %w%- Haciendo un punto de restauracion... %b%
powershell -Command "Checkpoint-Computer -Description 'Darkyy Net v1.0' -RestorePointType 'MODIFY_SETTINGS'" 
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Punto de restauracion completado...', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 
echo.
echo.
echo.
cls
goto :NMenu


:NMenu
cls
echo.
echo.
echo.                                                                                             
echo.
echo.                                 %b%██▄   ██   █▄▄▄▄ █  █▀ ▀▄    ▄ ▀▄    ▄        ▄   ▄███▄     ▄▄▄▄▀ 
echo.                                 %b%█  █  █ █  █  ▄▀ █▄█     █  █    █  █          █  █▀   ▀ ▀▀▀ █     
echo.                                 %b%█   █ █▄▄█ █▀▀▌  █▀▄      ▀█      ▀█       ██   █ ██▄▄       █       
echo.                                 %b%█  █  █  █ █  █  █  █     █       █        █ █  █ █▄   ▄▀   █      
echo.                                 %b%███▀     █   █     █    ▄▀      ▄▀         █  █ █ ▀███▀    ▀        
echo.                                 %b%        █   ▀     ▀                        █   ██   
echo.                                 %b%       ▀                                                               
echo.       %g%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
echo.       %r%                                                                              
echo.       %r%                  %b%%r%%b%%r%                       %b%[%r%A%b%]%r% Aplicar todos (1-6)
echo.       %r%                                                                      
echo.       %r%                  %b%[%r%1%b%]%r% Desactivar limite de red                    %b%[%r%2%b%]%r% Activar On-Board Network Adapter Processor                 
echo.       %r%                                                                                                           
echo.       %r%                  %b%[%r%3%b%]%r% Poner Network Throttoling Index             %b%[%r%4%b%]%r% Activar modo MSI en red           
echo.       %r%                                                                                                               
echo.       %r%                  %b%[%r%5%b%]%r% Activar TCP No Delay                        %b%[%r%6%b%]%r% Poner prioridad DNS
echo.       %r%
echo.       %r%                  %b%[%r%7%b%]%r% Optimizar opciones NIC                      %b%[%r%8%b%]%r% Poner policita QOS 
echo.       %r%
echo.       %r%                  %b%%r%%b%%r%                        %b%[%r%9%b%]%r% Abrir opciones NIC
echo.       %r%                             
echo.       %g%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
echo.       %r%
echo.       %r%                  %b%%r%%b%%r%                        %b%[%r%X%b%]%r%  Volver al menu                          
echo.       %r%
echo.       %r%                  %r%  Hecho por Darkyy® 2024 %g%║%r% Version 1.0 %g%║%r% actualizado 17 septiembre 2024 %r%        
echo.       %r%
echo.       %g%"════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
echo.                                                                 
echo.

set /p input=%g%:%r%
if /i %input% == A goto ntodo
if /i %input% == 1 goto n1
if /i %input% == 2 goto n2
if /i %input% == 3 goto n3
if /i %input% == 4 goto n4
if /i %input% == 5 goto n5
if /i %input% == 6 goto n6
if /i %input% == 7 goto n7
if /i %input% == 8 goto qos
if /i %input% == 9 ncpa.cpl & goto Nmenu
if /i %input% == X goto menu

) ELSE (
echo %w%- Invalid Input %b% & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error de escritura detectado!
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto nmenu


:ntodo
echo %w% - Desactivando TCP heuristics / Desactivando limite red %b%
netsh int tcp set heuristics disabled

echo %w% - Desactivando Task Offloading / Activando On-Board Network Adapter Processor %b%
netsh int ip set global taskoffload=disabled
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f

echo %w% - Poniendo Network Throttoling Index%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f

echo %w% - Poniendo modo MSI en red %b%

for /f %%i in ('wmic path win32_NetworkAdapter get PNPDeviceID') do set "str=%%i" & (
echo %w% - Borrando prioridad %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f
echo %w% - Activando modo MSI en red %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f
)

echo %w% - Desactivando algoritmo naglin %b%

echo %w% - Poniendo interfaz metrica %b%
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v InterfaceMetric /t REG_DWORD /d "55" /f
echo %w% - Activando TCPNoDelay %b%
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TCPNoDelay /t REG_DWORD /d "1" /f
echo %w% - Activando TCP Ack Frequency %b%
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpAckFrequency /t REG_DWORD /d "1" /f
echo %w% - Desactivando TCP Del AckTicks  %b%
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpDelAckTicks /t REG_DWORD /d "0" /f


echo %w% - Poniendo propiedades DNS %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto NMenu


:n1
echo %w% - Desactivando TCP heuristics / Desactivando limite red %b%
netsh int tcp set heuristics disabled
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto NMenu

:n2
echo %w% - Desactivando Task Offloading / Activando On-Board Network Adapter Processor %b%
netsh int ip set global taskoffload=disabled
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto NMenu

:n3
echo %w% - Poniendo Network Throttoling Index%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto NMenu

:n4
echo %w% - Poniendo modo MSI en red %b%
for /f %%i in ('wmic path win32_NetworkAdapter get PNPDeviceID') do set "str=%%i" & (
echo %w% - Borrando prioridad red %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f
echo %w% - Poniendo modo MSI en red %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f
)
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto NMenu


:n5
echo %w% - Desactivando algoritmo naglin %b%

echo %w% - Poniendo interfaz metrica %b%
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v InterfaceMetric /t REG_DWORD /d "55" /f
echo %w% - Activando TCPNoDelay %b%
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TCPNoDelay /t REG_DWORD /d "1" /f
echo %w% - Activando TCP Ack Frequency %b%
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpAckFrequency /t REG_DWORD /d "1" /f
echo %w% - Desactivando TCP Del AckTicks  %b%
for /f %%q in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%q" /v TcpDelAckTicks /t REG_DWORD /d "0" /f

echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto NMenu

:n6
echo %w% - Poniendo propiedades DNS %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto NMenu

:n7
chcp 437 >nul 2>&1
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('! ADVERTENCIA ! Solo puedes hacer estos tweaks si tienes ethernet, si tienes wifi presiona n en la siguiente pagina', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1
cls
echo. 
echo.                                              %b%"═══════════════════════════════════════════════════════════════"
echo.                                                               %r%  Presiona Y si quieres continuar, N si no
echo.                                              %b%"═══════════════════════════════════════════════════════════════"
set /p input=%g%:%r%
if /i %input% == Y goto cont
if /i %input% == N cls & goto NMenu

) ELSE (
echo %w%- Invalid Input %b% & goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Error de escritura detectado!  %b%
timeout 2
goto RedirectMenu

:RedirectMenu
cls
goto n7


:cont

echo %w% - Optimizando Opciones NIC %b%

echo %w%- Desactivando EEE (Eficiencia Energia Ethernet) %b%
for /f %%n in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /v "*SpeedDuplex" /s ^| findstr  "HKEY"') do (
Reg.exe add "%%n" /v "AdvancedEEE" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "*EEE" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "EEE" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "EnablePME" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "EEELinkAdvertisement" /t REG_SZ /d "0" /f 
timeout /t 1 /nobreak > nul

echo %w%- Desactivando guardado de alimentacion %b%
Reg.exe add "%%n" /v "AutoPowerSaveModeEnabled" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "DisableDelayedPowerUp" /t REG_SZ /d "2" /f 
Reg.exe add "%%n" /v "AutoDisableGigabit" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "EnableGreenEthernet" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "EnableSavePowerNow" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "EnablePowerManagement" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "NicAutoPowerSaver" /t REG_SZ /d "2" /f
Reg.exe add "%%n" /v "PowerDownPll" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "PowerSavingMode" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "ReduceSpeedOnPowerDown" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "S5NicKeepOverrideMacAddrV2" /t REG_SZ /d "0" /f 
timeout /t 1 /nobreak > nul

echo %w%- Desactivando Power Gating %b%
Reg.exe add "%%n" /v "EnableDynamicPowerGating" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "EnableConnectedPowerGating" /t REG_SZ /d "0" /f 
timeout /t 1 /nobreak > nul

echo %w%- Desactivando Giga Lite %b%
Reg.exe add "%%n" /v "GigaLite" /t REG_SZ /d "0" /f 
timeout /t 1 /nobreak > nul

echo %w%- Desactivando Ultra Low Power Mode %b%
Reg.exe add "%%n" /v "ULPMode" /t REG_SZ /d "0" /f 
timeout /t 1 /nobreak > nul

echo %w%- Desactivando WakeOns %b%
Reg.exe add "%%n" /v "EnableWakeOnLan" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "WakeOnDisconnect" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "*WakeOnMagicPacket" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "S5WakeOnLan" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "*WakeOnPattern" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "WakeOnLink" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "WolShutdownLinkSpeed" /t REG_SZ /d "2" /f 
timeout /t 1 /nobreak > nul


echo %w%- Desactivando Jumbo Frame/Packet %b%
Reg.exe add "%%n" /v "JumboPacket" /t REG_SZ /d "1514" /f 
timeout /t 1 /nobreak > nul


echo %w%- Configurando Tamaño Buffer  %b%
Reg.exe add "%%n" /v "TransmitBuffers" /t REG_SZ /d "4096" /f 
Reg.exe add "%%n" /v "ReceiveBuffers" /t REG_SZ /d "1024" /f 
timeout /t 1 /nobreak > nul


echo %w%- Configurando OffLoads %b%
Reg.exe add "%%n" /v "IPChecksumOffloadIPv4" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "LsoV1IPv4" /t REG_SZ /d "0" /f  
Reg.exe add "%%n" /v "LsoV2IPv4" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "LsoV2IPv6" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "PMARPOffload" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "PMNSOffload" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "TCPChecksumOffloadIPv4" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "TCPChecksumOffloadIPv6" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "UDPChecksumOffloadIPv6" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "UDPChecksumOffloadIPv4" /t REG_SZ /d "0" /f 
timeout /t 1 /nobreak > nul


echo %w%- Activando RSS en NIC %b%
Reg.exe add "%%n" /v "RSS" /t REG_SZ /d "1" /f 
Reg.exe add "%%n" /v "*NumRssQueues" /t REG_SZ /d "2" /f 
Reg.exe add "%%n" /v "RSSProfile" /t REG_SZ /d "3" /f 
timeout /t 1 /nobreak > nul


echo %w%- Desactivando Flow Control %b%
Reg.exe add "%%n" /v "*FlowControl" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "FlowControlCap" /t REG_SZ /d "0" /f 
timeout /t 1 /nobreak > nul


echo %w%- Removiendo Interrupt Delays %b%
Reg.exe add "%%n" /v "RxAbsIntDelay" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "TxIntDelay" /t REG_SZ /d "0" /f 
Reg.exe add "%%n" /v "TxAbsIntDelay" /t REG_SZ /d "0" /f 
timeout /t 1 /nobreak > nul

echo %w%- Removiendo Adapter Notification Sending %b%
Reg.exe add "%%n" /v "FatChannelIntolerant" /t REG_SZ /d "0" /f 
timeout /t 1 /nobreak > nul
)

echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto NMenu

:qos
cls
echo.
echo.
echo.
echo.                                                                %b%█ ▄▄  ████▄ █    ▄█ ▄█▄    ▄█    ▄▄▄▄▀ ██        ▄▄ █ ████▄    ▄▄▄▄▄   
echo.                                                                %b%█   █ █   █ █    ██ █▀ ▀▄  ██ ▀▀▀ █    █ █      █   █ █   █   █     ▀▄ 
echo.                                                                %b%█▀▀▀  █   █ █    ██ █   ▀  ██     █    █▄▄█      ▀▀▀█ █   █ ▄  ▀▀▀▀▄   
echo.                                                                %b%█     ▀████ ███▄ ▐█ █▄  ▄▀ ▐█    █     █  █         █ ▀████  ▀▄▄▄▄▀    
echo.                                                                %b% █              ▀ ▐ ▀███▀   ▐   ▀         █          █                 
echo.                                                                %b%  ▀                                      █            ▀                
echo.                                                                %b%                                        ▀                              
echo.                                                %g%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                                         Si el numero cuatro no va, tendras que saltar este paso 
echo.
echo.                                                                                                                                                               
echo.                                                           %b%[%r%1%b%]%r% Ejecutar PSCHED          %b%[%r%2%b%]%r% Activar MS-Pacer            %b%[%r%3%b%]%r% Ejecutar GPEDIT   
echo. 
echo.                                              
echo.                                                %g%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo. 
echo.                                                           %b%%r%%b%%r%            %b%[%r%4%b%]%r% Descargar GPEDIT (solo hazlo si no te deja abrir GPEDIT)  
echo.
echo.     
echo.                                                                                           %b%[%r%M%b%]%r% Volver al menu 
echo.
echo.                                                           %p%%w%%p%%w%  
echo.                                                %r%                                      Hecho por Darkyy Tweaks® 2024 
echo.                                                %g%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                 %p%*%r% Una politica de QoS que define limites de limitacion determina la velocidad del trafico de red saliente
echo.                                                    %p%*%r% Basicamente, hara que su ruter priorice esa tarea sobre otras, lo que reducira mucho tu ping.
echo.                                                %g%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo. 
 
set /p input=%g%:%r%
if /i %input% == 1 goto q1
if /i %input% == 2 goto q2
if /i %input% == 3 goto q3
if /i %input% == 4 goto q4
if /i %input% == a goto qos
if /i %input% == M goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error de escritura!
timeout 2
goto qos

:q2
chcp 437 >nul 2>&1
powershell -NoProfile -Command "Enable-NetAdapterBinding -Name "*" -ComponentID ms_pacer"
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :qos

:q1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Psched" /v "Start" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :qos

:q3
start gpedit.msc
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :qos

:q4
chcp 437 >nul 2>&1
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Tienes que reiniciar el pc despues de esto', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"


start https://discord.com/channels/1269963789848150027/1274380755140612106/1287809771675586623				
echo %w% Esta solucion te lleva a un mensaje de Discord en mi servidor de Discord, si no se carga, simplemente ve al canal de descargar, la solución está allí %B%

chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :qos







:12
:discoduro
cls
echo.
echo.
echo.                                  %b%██▄   ▄█    ▄▄▄▄▄   ▄█▄    ████▄     ██▄     ▄   █▄▄▄▄ ████▄    
echo.                                  %b%█  █  ██   █     ▀▄ █▀ ▀▄  █   █     █  █     █  █  ▄▀ █   █  
echo.                                  %b%█   █ ██ ▄  ▀▀▀▀▄   █   ▀  █   █     █   █ █   █ █▀▀▌  █   █         
echo.                                  %b%█  █  ▐█  ▀▄▄▄▄▀    █▄  ▄▀ ▀████     █  █  █   █ █  █  ▀████   
echo.                                  %b%███▀   ▐            ▀███▀            ███▀  █▄ ▄█   █              
echo.                                  %b%                                            ▀▀▀   ▀                
echo.                        %g%"════════════════════════════════════════════════════════════════════════════════"%r%
echo.                                                                                           
echo.                                            %b%[%r%1%b%]%r% Defragmentar disco     
echo.
echo.                                            %b%[%r%2%b%]%r% Activar User Write Cache      
echo. 
echo.                                            %b%[%r%3%b%]%r% Desactivar Ahorro de energia de discos       
echo.                                                                                           
echo.                                                                                           
echo.                                               %b%[%r%M%b%]%r% Volver al menu                              
echo.                                                                                             
echo.                        %g%"════════════════════════════════════════════════════════════════════════════════"%r%
echo.                                 %p%*%r% Optimizaciones sencillas, si no tendrian mucho riesgo
echo.                        %g%"════════════════════════════════════════════════════════════════════════════════"%r%
echo. 
set /p input=%g%:%r%
if /i %input% == 1 goto s1
if /i %input% == a goto 12
if /i %input% == 2 goto s2
if /i %input% == 3 goto s3
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error detectado en la escritura!
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :12

:s3
echo %w% - Desactivando ahorro de energia de discos %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleExitLatencyMs" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdlePowerMw" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SD\IdleState\1" /v "IdleTimeLengthMs" /t REG_DWORD /d "4294967295" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleExitLatencyMs" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdlePowerMw" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\1" /v "IdleTimeLengthMs" /t REG_DWORD /d "4294967295" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleExitLatencyMs" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdlePowerMw" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\2" /v "IdleTimeLengthMs" /t REG_DWORD /d "4294967295" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitEnergyMicroJoules" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleExitLatencyMs" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdlePowerMw" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\Storage\SSD\IdleState\3" /v "IdleTimeLengthMs" /t REG_DWORD /d "4294967295" /f 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu

:s1
cls
start dfrgui.exe
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :12

:s2
cls
echo %w% - Activando User Write Cache %b%
for /f "Delims=" %%k in ('Reg.exe Query hklm\SYSTEM\CurrentControlSet\Enum /f "{4d36e967-e325-11ce-bfc1-08002be10318}" /d /s^|Find "HKEY"') do (
  Reg.exe add "%%k\Device Parameters\Disk" /v UserWriteCacheSetting /t reg_dword /d 1 /f
)
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :12

:3
:windows
cls
echo.
echo.
echo.                                                %b%     ▄ ▄   ▄█    ▄   ██▄   ████▄   ▄ ▄      ▄▄▄▄▄         
echo.                                                %b%    █   █  ██     █  █  █  █   █  █   █    █     ▀▄       
echo.                                                %b%   █ ▄   █ ██ ██   █ █   █ █   █ █ ▄   █ ▄  ▀▀▀▀▄        
echo.                                                %b%   █  █  █ ▐█ █ █  █ █  █  ▀████ █  █  █  ▀▄▄▄▄▀          
echo.                                                %b%    █ █ █   ▐ █  █ █ ███▀         █ █ █                   
echo.                                                %b%     ▀ ▀      █   ██               ▀ ▀                
echo.
echo.                        %g%"═══════════════════════════════════════════════════════════════════════════════════════════════════════════"%r%
echo.                                                                                                                      
echo.                                                                %b%[%r%A%b%]%r% Aplicar todos
echo.                                                          
echo.                                        %b%[%r%1%b%]%r% Windows Update Blocker          %b%[%r%2%b%]%r% Desactivar animaciones                       
echo.                                                                                                                      
echo.                                        %b%[%r%3%b%]%r% Desactivar Notificaciones       %b%[%r%4%b%]%r% Desactivar telemetria y autologgers         
echo.                                                                                                                                
echo.                                        %b%[%r%5%b%]%r% Desactivar Bluetooth            %b%[%r%6%b%]%r% Desactivar transparencia    
echo.                                                                                                                                                                                                                 
echo.                                        %b%[%r%7%b%]%r% Desactivar reporte errores      %b%[%r%8%b%]%r% Desactivar sincronizacion            
echo.                                                                                                                                
echo.                                        %b%[%r%9%b%]%r% Desactivar Diagnosticos         %b%[%r%10%b%]%r% Desactivar apps segundo plano        
echo.
echo.                                        %b%[%r%11%b%]%r% Desactivar Experimentos        %b%[%r%12%b%]%r% Activar modo juego     
echo. 
echo.                                        %b%[%r%13%b%]%r% Desactivar mantenimiento       %b%[%r%14%b%]%r% Desactivar tracking                         
echo. 
echo.                                        %b%[%r%15%b%]%r% Desactivar popus               %b%[%r%16%b%]%r% Desativar apartado actividad    
echo. 
echo.                                        %b%[%r%17%b%]%r% Desactivar Smart Screen        %b%[%r%18%b%]%r% Parar de instalar apps reinstaladas
echo.
echo.                                        %b%[%r%19%b%]%r% Desactivar Shared Experiences  %b%[%r%20%b%]%r% Track Only Important Failure Events 
echo.
echo.
echo.                                                                %b%[%r%R%b%]%r% Revertir Categoria
echo.
echo.                                                                %b%[%r%M%b%]%r% Volver al menu                                         
echo.                                                                                           
echo.         
echo.                        %g%"═══════════════════════════════════════════════════════════════════════════════════════════════════════════"%r%
echo.                                                   %p%*%r% Optimiza configuracion de windows 
echo.                                     %p%*%r% Desactiva un monton de cosas innecesarias que mata al rendimiento
echo.                        %g%"═══════════════════════════════════════════════════════════════════════════════════════════════════════════"%r%
echo.
set /p input=%g%:%r%
if /i %input% == A goto WA
if /i %input% == 1 goto w6
if /i %input% == 2 goto w3
if /i %input% == 3 goto w2
if /i %input% == 4 goto w4
if /i %input% == 5 goto w5
if /i %input% == 6 goto w1
if /i %input% == 7 goto w7
if /i %input% == 8 goto w8
if /i %input% == 9 goto w9
if /i %input% == 10 goto w10
if /i %input% == 11 goto w11
if /i %input% == 12 goto w12
if /i %input% == 13 goto w13
if /i %input% == 14 goto w14
if /i %input% == 15 goto w15
if /i %input% == 16 goto w16
if /i %input% == 17 goto w17
if /i %input% == 18 goto w18
if /i %input% == 19 goto w19
if /i %input% == 20 goto w20
if /i %input% == M cls & goto menu
if /i %input% == R cls & goto :revertir
) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error de escritura detectado
timeout 2
goto RedirectMenu

:RedirectMenu
goto :3

:w20
echo %w% - Track Only Important Failure Events %b%
Auditpol /set /subcategory:"Process Termination" /success:disable /failure:enable
Auditpol /set /subcategory:"RPC Events" /success:disable /failure:enable
Auditpol /set /subcategory:"Filtering Platform Connection" /success:disable /failure:enable
Auditpol /set /subcategory:"DPAPI Activity" /success:disable /failure:disable
Auditpol /set /subcategory:"IPsec Driver" /success:disable /failure:enable
Auditpol /set /subcategory:"Other System Events" /success:disable /failure:enable
Auditpol /set /subcategory:"Security State Change" /success:disable /failure:enable
Auditpol /set /subcategory:"Security System Extension" /success:disable /failure:enable
Auditpol /set /subcategory:"System Integrity" /success:disable /failure:enable
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu

:WA
cls
chcp 437 >nul 2>&1
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('! Estas seguro que quieres aplicar todos los tweaks?', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo. 
echo.                                              %b%"═══════════════════════════════════════════════════════════════"
echo.                                                               %r%  Presiona Y si quieres continuar, N si no
echo.                                              %b%"═══════════════════════════════════════════════════════════════"

set /p input=%g%:%r%
if /i %input% == Y goto :WAA
if /i %input% == N cls & goto windows


:waa
cls
echo %w% - Track Only Important Failure Events %b%
Auditpol /set /subcategory:"Process Termination" /success:disable /failure:enable
Auditpol /set /subcategory:"RPC Events" /success:disable /failure:enable
Auditpol /set /subcategory:"Filtering Platform Connection" /success:disable /failure:enable
Auditpol /set /subcategory:"DPAPI Activity" /success:disable /failure:disable
Auditpol /set /subcategory:"IPsec Driver" /success:disable /failure:enable
Auditpol /set /subcategory:"Other System Events" /success:disable /failure:enable
Auditpol /set /subcategory:"Security State Change" /success:disable /failure:enable
Auditpol /set /subcategory:"Security System Extension" /success:disable /failure:enable
Auditpol /set /subcategory:"System Integrity" /success:disable /failure:enable
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f

echo %w% - Desactivando telemetria por programador de tareas %b%
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /disable 
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" 
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable 
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" 
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable 
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" 
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /disable 
schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy" 
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /disable 
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" 
schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /disable 
schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" 
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable 
schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" 
schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable 
schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" 
schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /disable 
schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks" 
schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /disable 
schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" 
schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable 
schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" 
schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" 
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" 
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn" 
schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn" /disable 
schtasks /end /tn "\Microsoftd\Office\OfficeTelemetryAgentFallBack" 
schtasks /change /TN "\Microsoftd\Office\OfficeTelemetryAgentFallBack" /disable 
schtasks /end /tn "\Microsoft\Office\Office 15 Subscription Heartbeat" 
schtasks /change /TN "\Microsoft\Office\Office 15 Subscription Heartbeat" /disable 
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" 
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /disable 
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" 
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /disable 
schtasks /end /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" 
schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable 
schtasks /end /tn "\Microsoft\Windows\Device Information\Device" 
schtasks /change /TN "\Microsoft\Windows\Device Information\Device" /disable 
timeout /t 1 /nobreak > NUL

echo %w% - Desactivando Autologgers%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnable" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\Credssp" /v "DebugLogLevel" /t REG_DWORD /d "0" /f 

echo %w% - Desactivando Windows Insider Experiments%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\AllowExperimentation" /v "value" /t REG_DWORD /d "0" /f 

echo %w% - Desactivando apartado actividad%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft" /v "AllowNewsAndInterests" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f

echo %w% - Desactivando mantenimienot%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f 


echo %w% - Desactivando notificaciones%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\QuietHours" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.AutoPlay" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.LowDisk" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Print.Notification" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.WiFiNetworkManager" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "1" /f


echo %w% - Desactivando Bluetooth%b%
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\BTAGService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f

echo %w% - Desactivando Diagnosticos%b%
sc stop DiagTrack > nul 2>&1
sc config DiagTrack start= disabled > nul 2>&1
sc stop dmwappushservice > nul 2>&1
sc config dmwappushservice start= disabled > nul 2>&1
sc stop diagnosticshub.standardcollector.service > nul 2>&1
sc config diagnosticshub.standardcollector.service start= disabled > nul 2>&1

echo %w% - Desactivando Windows Error Reporting%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DoReport" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f 

echo %w%- Desactivando Shared Experiences %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "CdpSessionUserAuthzPolicy" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "NearShareChannelUserAuthzPolicy" /t REG_DWORD /d "0" /f

echo %w% - Desactivando Sincronizacion configuracion%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\DesktopTheme" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\PackageState" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t REG_DWORD /d "0" /f 

echo %w%- Desactivando windows smart screen %b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f 
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f 

echo %w%- Parar de reinstalar apps preinstaladas %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "0" 

echo %w%- Desactivando Apps segundo plano %b%
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "4" /f 

echo %w%- Desactivando Transparencia %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f

echo %w% - Activando modo juego%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Desacticando tracking y diagnosticos%b%
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Diagnostics\Performance" /v "DisableDiagnosticTracing" /t REG_DWORD /d "1" /f >nul 2>&1 
Reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}" /v "ScenarioExecutionEnabled" /t REG_DWORD /d "0" /f
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /disable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable

timeout /t 1 /nobreak > NUL
cls 
chcp 437 >nul 
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Despues de presionar ok, te aparecera una ventana. dale disable updates y apply changes', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"

start C:\acuatic\Windows_Update_Blocker.exe

cls 

%windir%\system32\SystemPropertiesPerformance.exe

chcp 65001 >nul 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu

:w19
echo %w%- Desactivando Experiencias Compartidas %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "CdpSessionUserAuthzPolicy" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "NearShareChannelUserAuthzPolicy" /t REG_DWORD /d "0" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows

:w17
echo %w%- Desactivando windows smart screen %b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f 
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows

:w18
echo %w%- Parar de instalar apps preinstaladas %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "0" /f 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows


:w10
cls
echo %w%- Desactivnado apps en segundo plano %b%
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "4" /f 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows

 
:w1
cls
echo %w%- Desactivando Transparency %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f

echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows


:w12
cls
echo %w% - Activando Modo Juego%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows

:w14
cls
echo %w% - Desactivando Tracking y diagnosticos%b%
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Diagnostics\Performance" /v "DisableDiagnosticTracing" /t REG_DWORD /d "1" /f >nul 2>&1 
Reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}" /v "ScenarioExecutionEnabled" /t REG_DWORD /d "0" /f
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /disable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows

:13
cls
echo.
echo.

echo.                                  %b%██   █▄▄▄▄ █▄▄▄▄ ▄███▄     ▄▀  █    ██   █▄▄▄▄     ██▄   ▄█    ▄▄▄▄▄   ▄█▄    ████▄ 
echo.                                  %b%█ █  █  ▄▀ █  ▄▀ █▀   ▀  ▄▀    █    █ █  █  ▄▀     █  █  ██   █     ▀▄ █▀ ▀▄  █   █ 
echo.                                  %b%█▄▄█ █▀▀▌  █▀▀▌  ██▄▄    █ ▀▄  █    █▄▄█ █▀▀▌      █   █ ██ ▄  ▀▀▀▀▄   █   ▀  █   █ 
echo.                                  %b%█  █ █  █  █  █  █▄   ▄▀ █   █ ███▄ █  █ █  █      █  █  ▐█  ▀▄▄▄▄▀    █▄  ▄▀ ▀████ 
echo.                                  %b%   █   █     █   ▀███▀    ███      ▀   █   █       ███▀   ▐            ▀███▀        
echo.                                  %b%  █   ▀     ▀                         █   ▀                                         
echo.                                  %b% ▀                                   ▀                                              
echo.                            %g%"═══════════════════════════════════════════════════════════════════════════════════════════"   %w%
echo.
echo.                                                    %b%[%r%1%b%]%r% Arreglar archivos corruptos
echo.
echo.                                                        %b%[%r%M%b%]%r% Volver al menu
echo.
echo.                            %g%"═══════════════════════════════════════════════════════════════════════════════════════════"   %w%
echo.                                        %p%*%r% Encuentra archivos corruptos o fuera de dia y los arregla  
echo.                            %g%"═══════════════════════════════════════════════════════════════════════════════════════════"   %w%

set /p input=%g%:%r%
if /i %input% == 1 goto f1
if /i %input% == M cls & goto menu

) ELSE (
echo %w%- Invalid Input %b% & goto MisspellRedirect

:MisspellRedirect
cls
echo %w%- Error de escritura detectado!  %b%
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :13

:f1
%b%
DISM /Online /Cleanup-Image /StartComponentCleanup
DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /RestoreHealth
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :13


:11war
chcp 437 >nul 2>&1
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Nota: Si quieres revertir algo lo puedes revertir en menu', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1

:11
:Debloat
cls
echo.
echo.
echo.                                                %b%   ██▄   ▄███▄   ███   █    ████▄ ██     ▄▄▄▄▀      
echo.                                                %b%   █  █  █▀   ▀  █  █  █    █   █ █ █ ▀▀▀ █          
echo.                                                %b%   █   █ ██▄▄    █ ▀ ▄ █    █   █ █▄▄█    █        
echo.                                                %b%   █  █  █▄   ▄▀ █  ▄▀ ███▄ ▀████ █  █   █          
echo.                                                %b%   ███▀  ▀███▀   ███       ▀         █  ▀            
echo.                                                %b%                                    █          
echo.                                                %b%                                   ▀                   
echo.                        %g%"═══════════════════════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                                       %r% No desactives cosas que usas                         
echo.                                                                                              
echo.                                                             %b%[%r%A%b%]%r% Aplicar todo                        
echo.                                                                                                                      
echo.                                        %b%[%r%1%b%]%r% Desactivar GameDVR                %b%[%r%2%b%]%r% Desactivar Customer Experience Improvement Program                    
echo.                                                                                                                      
echo.                                        %b%[%r%3%b%]%r% Desactivar Servicios XBOX         %b%[%r%4%b%]%r% Desinstalar Apps Windows Innecesarias              
echo.                                                                                                                       
echo.                                        %b%[%r%5%b%]%r% Desactivar telemetria office      %b%[%r%6%b%]%r% Desactivar imprimir y mapas
echo. 
echo.                                        %b%[%r%7%b%]%r% Desinstalar Cortana               %b%[%r%8%b%]%r% Eliminar Microsoft Edge                      
echo.                                                                                                                                
echo.                                                                                                                                
echo.                                                            %b%[%r%M%b%]%r% Volver al menu   
echo. 
echo.                                                            %b%[%r%R%b%]%r% Revertir categoria                                           
echo.                                                                                                                      
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"
echo.                                         %p%*%r% Desactiva un monton de cosas que mata el rendimiento
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════════════════════"
echo.

set /p input=%g%:%r%
if /i %input% == A goto AD
if /i %input% == 1 goto d1
if /i %input% == 2 goto d2
if /i %input% == 3 goto d3
if /i %input% == 4 goto d4
if /i %input% == 5 goto d5
if /i %input% == 6 goto d6
if /i %input% == 7 goto d7
if /i %input% == 8 goto d8
if /i %input% == M cls & goto menu
if /i %input% == R cls & goto revertir
) ELSE (
echo Invalid Input & goto MisspellReirect

:MisspellRedirect
cls
echo - Error de escritura detectado!
timeout 2
goto RedirectMenu

:RedirectMenu
goto :11

:AD
cls
chcp 437 >nul 2>&1
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Esto aplicara todos los tweaks, quieres continuar?', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo. 
echo.                                              %b%"═══════════════════════════════════════════════════════════════"
echo.                                                               %r%  Presiona Y si quieres continuar, N si no
echo.                                              %b%"═══════════════════════════════════════════════════════════════"

set /p input=%g%:%r%
if /i %input% == Y goto :DA
if /i %input% == N cls & goto debloat

:DA
::1
echo %w% - Desactivando Customer Experience Improvement Program%b%
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" > nul 2>&1 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" > nul 2>&1 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" > nul 2>&1

::2
echo %w% - Desactivando imprimir y mapas  %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PrintNotify" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f

::3
echo %w% - Desactivando Telemetria office  %b%
Reg.exe add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "DisableTelemetry" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "sendcustomerdata" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "includescreenshot" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Outlook\Options\Mail" /v "EnableLogging" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "EnableLogging" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "SendTelemetry" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "qmenable" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "updatereliabilitydata" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "shownfirstrunoptin" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "skydrivesigninoption" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\ptwatson" /v "ptwoptin" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Firstrun" /v "disablemovie" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "Enablelogging" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableUpload" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableFileObfuscation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "accesssolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "olksolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "onenotesolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "pptsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "projectsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "publishersolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "visiosolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "wdsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "xlsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "agave" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "appaddins" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "comaddins" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "documentfiles" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "templatefiles" /t REG_DWORD /d "1" /f

::4
echo %w% - Eliminando Microsoft Edge %b%
cd %PROGRAMFILES(X86)%\Microsoft\Edge\Application\1*\Installer
cd C:\Program Files (x86)\Microsoft\Edge\Application\125.0.2535.79\Installer
setup.exe --uninstall --system-level --verbose-logging --force-uninstall
rd /s /q "C:\Program Files (x86)\Microsoft\Edge"
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeCore"
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeUpdate"
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeWebView"
rd /s /q "C:\Program Files (x86)\Microsoft\Temp"

::5
echo %w% - Desactivando GameDVR%b%
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f

::6
echo %w% - Desactivando servicios XBOX%b%
sc config xbgm start= disabled >nul 2>&1
sc config XblAuthManager start= disabled
sc config XblGameSave start= disabled
sc config XboxGipSvc start= disabled
sc config XboxNetApiSvc start= disabled

::7
chcp 437 > nul
Powershell.exe -command "& {Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage}
echo %w%- Desinstalando BingWeather %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage}
echo %w%- Desinstalando GetHelp %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage}
echo %w%- Desinstalando Getstarted %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage}
echo %w%- Desinstalando Messaging %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage}
echo %w%- Desinstalando Microsoft3DViewer %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage}
echo %w%- Desinstalando MicrosoftSolitaireCollection %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage}
echo %w%- Desinstalando MicrosoftStickyNotes %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage}
echo %w%- Desinstalando MixedReality.Portal %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage}
echo %w%- Desinstalando OneConnect %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.People* | Remove-AppxPackage}
echo %w%- Desinstalando People %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage}
echo %w%- Desinstalando Print3D %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage}
echo %w%- Desinstalando SkypeApp %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage}
echo %w%- Desinstalando WindowsAlarms %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage}
echo %w%- Desinstalando WindowsCamera %b%
Powershell.exe -command "& {Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage}
echo %w%- Desinstalando windowscommunicationsapps %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage}
echo %w%- Desinstalando WindowsMaps %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage}
echo %w%- Desinstalando WindowsFeedbackHub %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage}
echo %w%- Desinstalando WindowsSoundRecorder %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage}
echo %w%- Desinstalando YourPhone %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage}
echo %w%- Desinstalando ZuneMusic %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.HEIFImageExtension* | Remove-AppxPackage}
echo %w%- Desinstalando HEIFImageExtension %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WebMediaExtensions* | Remove-AppxPackage}
echo %w%- Desinstalando WebMediaExtensions %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WebpImageExtension* | Remove-AppxPackage}
echo %w%- Desinstalando WebpImageExtension %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.3dBuilder* | Remove-AppxPackage}
echo %w%- Desinstalando 3dBuilder %b%
PowerShell -Command "Get-AppxPackage -allusers *bing* | Remove-AppxPackage"
echo %w%- Desinstalando bing %b%
PowerShell -Command "Get-AppxPackage -allusers *bingfinance* | Remove-AppxPackage"
echo %w%- Desinstalando bingfinance %b%
PowerShell -Command "Get-AppxPackage -allusers *bingsports* | Remove-AppxPackage"
echo %w%- Desinstalando bingsports %b%
PowerShell -Command "Get-AppxPackage -allusers *CommsPhone* | Remove-AppxPackage"
echo %w%- Desinstalando CommsPhone %b%
PowerShell -Command "Get-AppxPackage -allusers *Drawboard PDF* | Remove-AppxPackage"
echo %w%- Desinstalando Drawboard PDF %b%

echo %w%- Desinstalando Sway %b%
PowerShell -Command "Get-AppxPackage -allusers *Sway* | Remove-AppxPackage"
echo %w%- Desinstalando WindowsAlarms %b%
PowerShell -Command "Get-AppxPackage -allusers *WindowsAlarms* | Remove-AppxPackage"
echo %w%- Desinstalando WindowsPhone %b%
PowerShell -Command "Get-AppxPackage -allusers *WindowsPhone* | Remove-AppxPackage"
chcp 65001 > nul


::8
echo %w% - Desactivando Cortana%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "0" /f 


chcp 437 >nul 
timeout /t 1 /nobreak > NUL
Powershell -Command "Get-appxpackage -allusers *Microsoft.549981C3F5F10* | Remove-AppxPackage" 
timeout /t 1 /nobreak > NUL
chcp 65001 >nul 

echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :debloat



:d6 
cls
echo %w% - Desactivando imprimir y mapas  %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PrintNotify" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :debloat

:d5
cls
echo %w% - Desactivando telemetria office  %b%
Reg.exe add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "DisableTelemetry" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "sendcustomerdata" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "includescreenshot" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Outlook\Options\Mail" /v "EnableLogging" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "EnableLogging" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "SendTelemetry" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "qmenable" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common" /v "updatereliabilitydata" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "shownfirstrunoptin" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\General" /v "skydrivesigninoption" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Common\ptwatson" /v "ptwoptin" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\Firstrun" /v "disablemovie" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "Enablelogging" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableUpload" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM" /v "EnableFileObfuscation" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "accesssolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "olksolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "onenotesolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "pptsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "projectsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "publishersolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "visiosolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "wdsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedapplications" /v "xlsolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "agave" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "appaddins" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "comaddins" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "documentfiles" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "templatefiles" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :debloat

:d8
echo %w% - Eliminando Microsoft Edge %b%
cd %PROGRAMFILES(X86)%\Microsoft\Edge\Application\1*\Installer
cd C:\Program Files (x86)\Microsoft\Edge\Application\125.0.2535.79\Installer
setup.exe --uninstall --system-level --verbose-logging --force-uninstall
rd /s /q "C:\Program Files (x86)\Microsoft\Edge"
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeCore"
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeUpdate"
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeWebView"
rd /s /q "C:\Program Files (x86)\Microsoft\Temp"
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu



:w8
cls
echo %w% - Desactivando Sincronizacion de Configuracion %b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\DesktopTheme" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\PackageState" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t REG_DWORD /d "0" /f 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows

:w7
echo %w% - Desactivando reporte de errores %b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DoReport" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows

:w9
echo %w% - Desactivando Diagnosticos%b%
sc stop DiagTrack > nul 2>&1
sc config DiagTrack start= disabled > nul 2>&1
sc stop dmwappushservice > nul 2>&1
sc config dmwappushservice start= disabled > nul 2>&1
sc stop diagnosticshub.standardcollector.service > nul 2>&1
sc config diagnosticshub.standardcollector.service start= disabled > nul 2>&1
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows

:w5
CLS

echo %w% - Desactivando Bluetooth%b%
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\BTAGService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows

:d1
cls
echo %w% - Desactivando GameDVR%b%
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :debloat

:w2
cls
echo %w% - Desactivando Notificaciones%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\QuietHours" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.AutoPlay" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.LowDisk" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Print.Notification" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.WiFiNetworkManager" /v "Enabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows

:d3
cls
echo %w% - Desactivando servicios XBOX%b%
sc config xbgm start= disabled >nul 2>&1
sc config XblAuthManager start= disabled
sc config XblGameSave start= disabled
sc config XboxGipSvc start= disabled
sc config XboxNetApiSvc start= disabled
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :debloat

:d7
cls
echo %w% - Desactivando Cortana%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "0" /f 


chcp 437 >nul 
timeout /t 1 /nobreak > NUL
Powershell -Command "Get-appxpackage -allusers *Microsoft.549981C3F5F10* | Remove-AppxPackage" 
timeout /t 1 /nobreak > NUL
chcp 65001 >nul 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :debloat

:w6

cls
timeout /t 1 /nobreak > NUL

powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('IMPORTANTE ! esto desactivara las actualizaciones y la tienda de microsoft, si no quieres desactivarlo presiona allow updates', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"


start C:\acuatic\Windows_Update_Blocker.exe
chcp 65001 >nul 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows



:w3
cls 

%windir%\system32\SystemPropertiesPerformance.exe
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows

:d2
cls
echo %w% - Desactivando Customer Experience Improvement Program%b%
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" > nul 2>&1 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" > nul 2>&1 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" > nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /disable > nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" > nul 2>&1
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :debloat

:w13
echo %w% - Desactivando mantenimiento%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows

:w16
echo %w% - Desactivando apartado actividad%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft" /v "AllowNewsAndInterests" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows

:w15
echo %w% - Desactivando popus,...%b%
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisallowShaking" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "EnableBalloonTips" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows


:w11
echo %w% - Desactivando Windows Insider Experiments%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\System\AllowExperimentation" /v "value" /t REG_DWORD /d "0" /f 



echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows

:w4
echo %w% - Desactivando telemetria en programador de tareas %b%
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable 
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" 
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /disable 
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" 
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable 
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" 
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable 
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" 
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /disable 
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" 
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /disable 
schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy" 
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /disable 
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" 
schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /disable 
schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent" 
schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /disable 
schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" 
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable 
schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" 
schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable 
schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" 
schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /disable 
schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks" 
schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /disable 
schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" 
schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable 
schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" 
schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" 
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" 
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /disable 
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn" 
schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn" /disable 
schtasks /end /tn "\Microsoftd\Office\OfficeTelemetryAgentFallBack" 
schtasks /change /TN "\Microsoftd\Office\OfficeTelemetryAgentFallBack" /disable 
schtasks /end /tn "\Microsoft\Office\Office 15 Subscription Heartbeat" 
schtasks /change /TN "\Microsoft\Office\Office 15 Subscription Heartbeat" /disable 
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" 
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /disable 
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" 
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /disable 
schtasks /end /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" 
schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable 
schtasks /end /tn "\Microsoft\Windows\Device Information\Device" 
schtasks /change /TN "\Microsoft\Windows\Device Information\Device" /disable 
timeout /t 1 /nobreak > NUL

echo %w% - Desactivando Autologgers%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnable" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\Credssp" /v "DebugLogLevel" /t REG_DWORD /d "0" /f 

echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :windows


:d4
cls
chcp 437 > nul
Powershell.exe -command "& {Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage}
echo %w%- Desinstalando BingWeather %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage}
echo %w%- Desinstalando GetHelp %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage}
echo %w%- Desinstalando Getstarted %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage}
echo %w%- Desinstalando Messaging %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage}
echo %w%- Desinstalando Microsoft3DViewer %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage}
echo %w%- Desinstalando MicrosoftSolitaireCollection %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage}
echo %w%- Desinstalando MicrosoftStickyNotes %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage}
echo %w%- Desinstalando MixedReality.Portal %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage}
echo %w%- Desinstalando OneConnect %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.People* | Remove-AppxPackage}
echo %w%- Desinstalando People %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage}
echo %w%- Desinstalando Print3D %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage}
echo %w%- Desinstalando SkypeApp %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage}
echo %w%- Desinstalando WindowsAlarms %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage}
echo %w%- Desinstalando WindowsCamera %b%
Powershell.exe -command "& {Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage}
echo %w%- Desinstalando windowscommunicationsapps %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage}
echo %w%- Desinstalando WindowsMaps %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage}
echo %w%- Desinstalando WindowsFeedbackHub %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage}
echo %w%- Desinstalando WindowsSoundRecorder %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage}
echo %w%- Desinstalando YourPhone %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage}
echo %w%- Desinstalando ZuneMusic %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.HEIFImageExtension* | Remove-AppxPackage}
echo %w%- Desinstalando HEIFImageExtension %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WebMediaExtensions* | Remove-AppxPackage}
echo %w%- Desinstalando WebMediaExtensions %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WebpImageExtension* | Remove-AppxPackage}
echo %w%- Desinstalando WebpImageExtension %b%
Powershell.exe -command "& {Get-AppxPackage *Microsoft.3dBuilder* | Remove-AppxPackage}
echo %w%- Desinstalando 3dBuilder %b%
PowerShell -Command "Get-AppxPackage -allusers *bing* | Remove-AppxPackage"
echo %w%- Desinstalando bing %b%
PowerShell -Command "Get-AppxPackage -allusers *bingfinance* | Remove-AppxPackage"
echo %w%- Desinstalando bingfinance %b%
PowerShell -Command "Get-AppxPackage -allusers *bingsports* | Remove-AppxPackage"
echo %w%- Desinstalando bingsports %b%
PowerShell -Command "Get-AppxPackage -allusers *CommsPhone* | Remove-AppxPackage"
echo %w%- Desinstalando CommsPhone %b%
PowerShell -Command "Get-AppxPackage -allusers *Drawboard PDF* | Remove-AppxPackage"
echo %w%- Desinstalando Drawboard PDF %b%

echo %w%- Desinstalando Sway %b%
PowerShell -Command "Get-AppxPackage -allusers *Sway* | Remove-AppxPackage"
echo %w%- Desinstalando WindowsAlarms %b%
PowerShell -Command "Get-AppxPackage -allusers *WindowsAlarms* | Remove-AppxPackage"
echo %w%- Desinstalando WindowsPhone %b%
PowerShell -Command "Get-AppxPackage -allusers *WindowsPhone* | Remove-AppxPackage"
chcp 65001 > nul
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :debloat



:e
:revertir
cls
echo.
echo.
echo.                                %b%          █▄▄▄▄ ▄███▄      ▄   ▄███▄   █▄▄▄▄    ▄▄▄▄▀ ▄█ █▄▄▄▄ 
echo.                                %b%          █  ▄▀ █▀   ▀      █  █▀   ▀  █  ▄▀ ▀▀▀ █    ██ █  ▄▀ 
echo.                                %b%          █▀▀▌  ██▄▄   █     █ ██▄▄    █▀▀▌      █    ██ █▀▀▌  
echo.                                %b%          █  █  █▄   ▄▀ █    █ █▄   ▄▀ █  █     █     ▐█ █  █  
echo.                                %b%            █   ▀███▀    █  █  ▀███▀     █     ▀       ▐   █   
echo.                                %b%           ▀              █▐            ▀                 ▀    
echo.                                %b%                          ▐                                    
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                      %w% Si quieres revertir varias cosas sin usar punto de restauracion.                     
echo.                                                                                                                      
echo.                                                                                                                      
echo.                                                   %b%[%r%1%b%]%r% Volver a poner powerplans                                 
echo.                                                                                                                      
echo.                                                   %b%[%r%2%b%]%r% Reinstalar apps de windows                                 
echo.                                                                                                                      
echo.                                                   %b%[%r%3%b%]%r% Activar servicios XBOX                                           
echo.                                                                                                                      
echo.                                                   %b%[%r%4%b%]%r% Activar GameDVR                                                 
echo.                                                                                                                      
echo.                                                   %b%[%r%5%b%]%r% Actibar Notificaciones                                           
echo.                                                                                                                       
echo.                                                   %b%[%r%6%b%]%r% Activar Bluetooth      
echo.
echo.                                                   %b%[%r%7%b%]%r% Desactivar inicio rapido                                        
echo.                                         
echo.                                                   %b%[%r%8%b%]%r% Activar Power Throttoling                                            
echo.                                                                                                    
echo.                                                   %b%[%r%9%b%]%r% Activar mantenimiento
echo. 
echo.                                                   %b%[%r%10%b%]%r% Activar imprimir y mapas
echo.  
echo.                                                   %b%[%r%11%b%]%r% Reinstalar Edge
echo.
echo.                                                   %b%[%r%12%b%]%r% Activar actualizaciones windows
echo.
echo.                                                   %b%[%r%13%b%]%r% Activar Windows Smart Screen
echo.
echo.                                                   %b%[%r%14%b%]%r% Activar Diagnosticos
echo. 
echo.                                                   %b%[%r%15%b%]%r% Activar reportes
echo.
echo.                                                   %b%[%r%16%b%]%r% Revertir todos los tweaks de energia
echo.
echo.                                                                                                                       
echo.                                                         %b%[%r%M%b%]%w% Volver al menu                                         
echo.                                                                              
echo.                                             
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.                                    %p%*%r% Revierte un monton de cosas sin usar punto de restauracion
echo.                                 %p%*%r% Si quieres revertir algo en particular dimelo por privado en discord
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════"%w%
echo.
set /p input=%g%:%r%
if /i %input% == 1 goto r1
if /i %input% == 2 goto r2
if /i %input% == 3 goto r3
if /i %input% == 4 goto r4
if /i %input% == 5 goto r5
if /i %input% == 6 goto r6
if /i %input% == 7 goto r7
if /i %input% == 8 goto r8
if /i %input% == 9 goto r9
if /i %input% == 10 goto r10
if /i %input% == 11 goto r11
if /i %input% == 12 goto w6
if /i %input% == 13 goto r13
if /i %input% == 14 goto r14
if /i %input% == 15 goto r15
if /i %input% == 16 goto r16
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error de escritura detectado
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :revertir

:r16
echo %w% - Activando Energy Logging + Telemetria de energia%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "1" /f 

echo %w%- Activando Link State Power Managment %b%
FOR /F "eol=E" %%a in ('REG QUERY "HKLM\System\CurrentControlSet\Services" /s "EnableHIPM"^| FINDSTR /V "EnableHIPM"') DO (
echo %w%- Activando HIPM %b%
Reg.exe add "%%a" /v "EnableHIPM" /t REG_DWORD /d "1" /f  > nul 
echo %w%- Activando DIPM %b%
Reg.exe add "%%a" /v "EnableDIPM" /t REG_DWORD /d "1" /f > nul 
echo %w%- Activando HDD Parking %b%
Reg.exe add "%%a" /v "EnableHDDParking" /t REG_DWORD /d "1" /f > nul 
FOR /F "tokens=*" %%z IN ("%%a") DO (
SET STR=%%z
SET STR=!STR:HKLM\System\CurrentControlSet\Services\=!
) > nul 
)
	
echo %w% - Activando GPU Energy Driver%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "4" /f 

echo %w% - Activando CoalescingTimerInterval%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "1" /f  

echo %w% - Activando Throttling de energia%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "0" /f 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :E

echo %w% - Activando reportes de errores  %b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DoReport" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "0" /f 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :e

:r14
echo %w% - Activando diagnosticos %b%
sc config DPS start= demand
sc config DiagTrack start= demand > NUL
sc config dmwappushservice start= demand > NUL
sc config diagnosticshub.standardcollector.service start= demand > NUL
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /enable
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /enable
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /enable
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /enable
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Diagnostics\Performance" /v "DisableDiagnosticTracing" /t REG_DWORD /d "0" /f >nul 2>&1 
Reg.exe add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}" /v "ScenarioExecutionEnabled" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :e

:r13
echo %w% - Activando Smart Screen  %b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f 
Reg.exe add "HKU\!USER_SID!\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :e


:r11
chcp 437 > nul
Powershell -Command "Write-Host "Install Microsoft Edge" Start-Process -FilePath winget -ArgumentList "install --force -e --accept-source-agreements --accept-package-agreements --silent Microsoft.Edge " -NoNewWindow -Wait"
chcp 65001 > nul

echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :e

:r10
echo %w% - Activando Imprimir y mapas  %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PrintNotify" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "2" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :e

:r9
echo %w% - Activando Mantenimiento %b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "0" /f 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :e

:r8
echo %w% - Activando throttoling de energia%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "0" /f 

echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :e

:r7
echo %w% - Activando Fast Startup%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

echo %w% - Activando Hibernation%b%
powercfg /h off
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

echo %w% - Activando Study%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "0" /f 

echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :e

:r6
echo %w% - Activando Bluetooth%b%
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\BTAGService" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bthserv" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "2" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :e

:r5
cls
echo %w% - Activando Notificaciones%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\QuietHours" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.AutoPlay" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.LowDisk" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Print.Notification" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.WiFiNetworkManager" /v "Enabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "0" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu

:r4
echo %w% - Activando Gamedvr %b%
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "HistoricalCaptureEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "1" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu

:r3
echo %w% - Activando servicios xbox%b%
sc config xbgm start= demand
sc config XblAuthManager start= demand
sc config XblGameSave start= demand
sc config XboxGipSvc start= demand
sc config XboxNetApiSvc start= demand
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu

:r2
echo %w% - Redescargando apps de windows %b%
chcp 437 > nul
Powershell -Command "Get-AppxPackage -allusers | foreach {Add-AppxPackage -register “$($_.InstallLocation)\appxmanifest.xml” -DisableDevelopmentMode}"
chcp 65001 > nul

echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu

:r1
echo %w% - Reseteando power plans%b%
powercfg –restoredefaultschemes
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu



:salir
cls
echo.
echo.
chcp 437 >nul 2>&1
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('! Asegurate de reiniciar para que los tweaks se apliquen bien !, Gracias por usar la utilidad, presiona "ok" para salir.', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
timeout /t 1 /nobreak > nul
chcp 65001 >nul 2>&1
pause > nul
cls
exit





:8war
chcp 437 >nul 2>&1
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('NO LO HAGAS si tienes problema de refrigeracion.', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
timeout /t 1 /nobreak > nul
chcp 65001 >nul 2>&1

:8
:cpu
cls
echo.
echo.
echo.                                             %b% ▄█▄    █ ▄▄   ▄             
echo.                                             %b% █▀ ▀▄  █   █   █         
echo.                                             %b% █   ▀  █▀▀▀ █   █          
echo.                                             %b% █▄  ▄▀ █    █   █         
echo.                                             %b% ▀███▀   █   █▄ ▄█       
echo.                                             %b%          ▀   ▀▀▀          
echo.                        %g%"════════════════════════════════════════════════════════════════════"%w%
echo.                                      %r% Selecciona que cpu tienes:              
echo.                                                                                          
echo.                                                                                                                                                                                                    
echo.                                       %b%[%r%1%b%]%r% AMD    %b%[%r%2%b%]%r% INTEL                                            
echo.                                                                                           
echo.                                                                                            
echo.                                       %b%[%r%T%b%]%r% Administrador de Tareas                           
echo.                                                                                           
echo.                                           %b%[%r%M%b%]%r% Volver al menu                                
echo.                                                                                          
echo.                        %g%"════════════════════════════════════════════════════════════════════" %w%
echo.                             %p%*%r% Optimia tu cpu y hace que use los nucleos verdaderos
echo.                        %g%"════════════════════════════════════════════════════════════════════"
echo.

set /p input=%g%:%r%
if /i %input% == 1 goto cpu1
if /i %input% == 2 goto cpu2
if /i %input% == T start taskmgr & goto 8
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error detectado en escritura!
timeout 2
goto RedirectMenu

:RedirectMenu
cls
goto 	

:cpu1
cls
echo.  
echo.  
echo.
echo.                                           %b%██   █▀▄▀█ ██▄       ▄█▄    █ ▄▄   ▄   
echo.                                           %b%█ █  █ █ █ █  █      █▀ ▀▄  █   █   █  
echo.                                           %b%█▄▄█ █ ▄ █ █   █     █   ▀  █▀▀▀ █   █ 
echo.                                           %b%█  █ █   █ █  █      █▄  ▄▀ █    █   █ 
echo.                                           %b%   █    █  ███▀      ▀███▀   █   █▄ ▄█ 
echo.                                           %b%  █    ▀                      ▀   ▀▀▀  
echo.                                           %b% ▀                                     
echo.
timeout 1 /nobreak > NUL
echo %w%- Desactivando Core Parking  %b%
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v CoreParkingDisabled /t REG_DWORD /d 0 /f
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
powercfg /setactive SCHEME_CURRENT

echo %w%- Desactivando Distribute Timers%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /t REG_DWORD /d "1" /f

echo %w%- Desactivando TSX%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /t REG_DWORD /d "0" /f

echo %w%- Desactivando Event Processor%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f
cls
echo %w%- CPU Cooling Tweaks %b%
powercfg /setACvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 1
powercfg /setDCvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 1
powercfg /setactive SCHEME_CURRENT

echo %w%- Activando todos los nucleos %b%
bcdedit /set {current} numproc %NUMBER_OF_PROCESSORS% 

echo %w% - Desactivando C-States%b%
powercfg -setacvalueindex scheme_current SUB_SLEEP AWAYMODE 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP ALLOWSTANDBY 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP HYBRIDSLEEP 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100
powercfg /setactive SCHEME_CURRENT

echo %w%- Utilizando estados P superiores en estados C inferiores y viceversa %b%
powercfg -setacvalueindex scheme_current sub_processor IDLESCALING 1
powercfg /setactive SCHEME_CURRENT

echo %w% - Desactivando Core Parking%b%
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
powercfg /setactive SCHEME_CURRENT

echo %w% - Desactivando Throttle States%b%
powercfg -setacvalueindex scheme_current sub_processor THROTTLING 0
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu

:cpu2
echo.
echo.
echo.
echo.                                            %b%▄█    ▄     ▄▄▄▄▀ ▄███▄   █         ▄█▄    █ ▄▄   ▄   
echo.                                            %b%██     █ ▀▀▀ █    █▀   ▀  █         █▀ ▀▄  █   █   █  
echo.                                            %b%██ ██   █    █    ██▄▄    █         █   ▀  █▀▀▀ █   █ 
echo.                                            %b%▐█ █ █  █   █     █▄   ▄▀ ███▄      █▄  ▄▀ █    █   █ 
echo.                                            %b% ▐ █  █ █  ▀      ▀███▀       ▀     ▀███▀   █   █▄ ▄█ 
echo.                                            %b%   █   ██                                    ▀   ▀▀▀  
echo.
timeout 1 /nobreak > NUL

echo %w%- Desactivando Core Parking  %b%
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v CoreParkingDisabled /t REG_DWORD /d 0 /f
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
powercfg /setactive SCHEME_CURRENT

echo %w%- Tweaks de intel especificos %b%
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set isolatedcontext No

echo %w%- Desactivando Distribute Timers%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /t REG_DWORD /d "1" /f

echo %w%- Desactivando TSX%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /t REG_DWORD /d "0" /f

echo %w%- Desactivando Even Processor%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f

echo %w%- CPU Cooling Tweaks %b%
powercfg /setACvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 1
powercfg /setDCvalueindex scheme_current SUB_PROCESSOR SYSCOOLPOL 1
powercfg /setactive SCHEME_CURRENT

echo %w%- Activando todos los nucleos %b%
bcdedit /set {current} numproc %NUMBER_OF_PROCESSORS% 

echo %w% - Desactivando C-States%b%
powercfg -setacvalueindex scheme_current SUB_SLEEP AWAYMODE 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP ALLOWSTANDBY 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current SUB_SLEEP HYBRIDSLEEP 0
powercfg /setactive SCHEME_CURRENT
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100
powercfg /setactive SCHEME_CURRENT
timeout /t 1 /nobreak > NUL

echo %w%- Utilizando estados P superiores en estados C inferiores y viceversa %b%
powercfg -setacvalueindex scheme_current sub_processor IDLESCALING 1
powercfg /setactive SCHEME_CURRENT



echo %w% - Desactivando Throttle States%b%
powercfg -setacvalueindex scheme_current sub_processor THROTTLING 0
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu



:7
:gpu
cls
echo.
echo.
echo.                                            %b%    ▄▀  █ ▄▄   ▄            
echo.                                            %b%  ▄▀    █   █   █          
echo.                                            %b%  █ ▀▄  █▀▀▀ █   █         
echo.                                            %b%  █   █ █    █   █         
echo.                                            %b%   ███   █   █▄ ▄█         
echo.                                            %b%          ▀   ▀▀▀          
echo.                        %g%"══════════════════════════════════════════════════════════════════"%r%
echo.                                      %r% Selecciona que gpu tienes:    
echo.                                                                          
echo.                                                                                          
echo.                                             %b%[%r%1%b%]%r% NVIDIA                           
echo.                                                                                          
echo.                                             %b%[%r%2%b%]%r% AMD                              
echo.                                                                                            
echo.                                             %b%[%r%3%b%]%r% INTEL                           
echo.                                                                                           
echo.                                                                                           
echo.                                      %b%[%r%T%b%]%r% Administrador de Tareas                           
echo.                                                                                           
echo.                                         %b%[%r%M%b%]%r% Volver al menu                                
echo.                                                                                          
echo.                        %g%"══════════════════════════════════════════════════════════════════"
echo.                               %p%*%r% Optimiza tu gpu, con configuracion 3d etc.
echo.                        %g%"══════════════════════════════════════════════════════════════════"
echo.
set /p input=%g%:%r%
if /i %input% == 1 goto g1
if /i %input% == 2 goto g2
if /i %input% == 3 goto g3
if /i %input% == T start taskmgr & goto 7
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error de escritura detectado!
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :7


:g3
cls
echo %w% - Intel Gpu Tweaks%b%
for /f %%t in ('Reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "Intel" ^| findstr "HKEY"') do (

	Reg.exe add "%%t" /v "Disable_OverlayDSQualityEnhancement" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "IncreaseFixedSegment" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "AdaptiveVsyncEnable" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "DisablePFonDP" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "EnableCompensationForDVI" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "NoFastLinkTrainingForeDP" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "ACPowerPolicyVersion" /t REG_DWORD /d "16898" /f
    Reg.exe add "%%t" /v "DCPowerPolicyVersion" /t REG_DWORD /d "16642" /f
)


Reg.exe add "HKLM\Software\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d "512" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu




:1 
cls
echo.
echo.
echo.                                       %b%     ▄▀  ▄███▄      ▄   ▄███▄   █▄▄▄▄ ██   █     
echo.                                       %b%   ▄▀    █▀   ▀      █  █▀   ▀  █  ▄▀ █ █  █          
echo.                                       %b%   █ ▀▄  ██▄▄    ██   █ ██▄▄    █▀▀▌  █▄▄█ █                             
echo.                                       %b%   █   █ █▄   ▄▀ █ █  █ █▄   ▄▀ █  █  █  █ ███▄        
echo.                                       %b%    ███  ▀███▀   █  █ █ ▀███▀     █      █     ▀      
echo.                                       %b%                 █   ██          ▀      █        
echo.                                       %b%                                    ▀             
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════"%r%
echo.                                                
echo.                                                     %b%[%r%1%b%]%r% Tweaks generales   
echo.                        
echo.                                                                                          
echo.                                                      %b%[%r%M%b%]%r% Volver al menu                           
echo.
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════"%r%
echo.                                        %p%*%r%  Optimiza un monton de registros para que te vaya mejor el pc
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════"%r%
echo. 
echo. 

set /p input=%g%:%r%
if /i %input% == 1 goto general
if /i %input% == M CLS & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect 

:MisspellRedirect
cls
echo - Error de escritura detectado!
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :1

:general
echo %w% - Optimizando Windows Search%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilities" /t REG_SZ /d "" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsAssignedAccess" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsWindowsHelloActive" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d 3 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchSafeSearch" /t REG_DWORD /d 3 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\Software\Microsoft\PolicyManager\default\Experience\AllowCortana" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DoNotUseWebResults" /t REG_DWORD /d "1" /f

echo %w% - Microsoft Mulitimedia Tweaks%b%
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsAll" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGames" /t REG_DWORD /d "10" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "FpsStatusGamesAll" /t REG_DWORD /d "4" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Games" /v "GameFluidity" /t REG_DWORD /d "1" /f


::bcd
echo %w% - Desactivando Dynamic Tick%b%
bcdedit /set disabledynamictick yes >nul 2>&1

echo %w% - Desactivando High Precision Event Timer (HPET)%b%
bcdedit /deletevalue useplatformclock  >nul 2>&1

echo %w% - Desactivando Synthetic Timers%b%
bcdedit /set useplatformtick yes  >nul 2>&1

::nfts
echo %w% - NFTS Tweaks%b%
fsutil behavior set memoryusage 2 >nul 2>&1
fsutil behavior set mftzone 4 >nul 2>&1
fsutil behavior set disablelastaccess 1 >nul 2>&1
fsutil behavior set disabledeletenotify 0 >nul 2>&1
fsutil behavior set encryptpagingfile 0 >nul 2>&1

echo %w% - MMCSS Priority Para baja latencia%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "BackgroundPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f

echo %w% - MMCSS Priority Para juegos%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "BackgroundPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f

echo %w% - Poniendo Win32Priority%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f 

echo %w% - Desactivando VirtualizationBasedSecurity%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d "0" /f 
echo %w% - Desactivando HVCIMATRequired%b%
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d "0" /f 
echo %w% - Desactivando ExceptionChainValidation%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f 
echo %w% - Desactivando Sehop%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f 
echo %w% - Desactivando CFG%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f 
echo %w% - Desactivando Protection Mode%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "0" /f 
echo %w% - Desactivando Spectre And Meltdown%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f 

echo %w% - Desactivando otras Migraciones%b%
chcp 437 >nul 
powershell "Remove-Item -Path \"HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\*\" -Recurse -ErrorAction SilentlyContinue"
chcp 65001 >nul  

echo %w% - Prioridad IRQ8 %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f

echo %w% - Prioridad IRQ16 %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f

echo %w% - Activando Large System Cache%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f 


echo %w% - Desactivando Paging Executive%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "1" /f 

echo %w% - Desactivando Address Space Layout Randomization%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f 


echo %w% - SVC split host%b%
for /f "skip=1" %%i in ('wmic os get TotalVisibleMemorySize') do if not defined TOTAL_MEMORY set "TOTAL_MEMORY=%%i" & set /a SVCHOST=%%i+1024000
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "!SVCHOST!" /f 


echo %w% - Desactivando Prefetch and superfetch%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f

echo %w% - Disminullendo el tiempo de eliminacion de procesos y el retraso en la visualizacion del menu%b%
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f


echo %w% - Configurando Time Stamp%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "IoPriority" /t REG_DWORD /d "3" /f 


echo %w% - Configurando CSRSS a Tiempo real%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f 

echo %w% - Configurando Latency Tolerance%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Latency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f 

echo %w% - Setting System Responsiveness%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f 


echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu



:10war
chcp 437 >nul 2>&1
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('NO LO HAGAS si tienes problemas de refrigeracion.', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
timeout /t 1 /nobreak > nul
chcp 65001 >nul 2>&1
:10

:energia
cls
echo.
echo.
echo.                                         %b%▄███▄      ▄   ▄███▄   █▄▄▄▄   ▄▀  ▄█ ██        
echo.                                         %b%█▀   ▀      █  █▀   ▀  █  ▄▀ ▄▀    ██ █ █   
echo.                                         %b%██▄▄    ██   █ ██▄▄    █▀▀▌  █ ▀▄  ██ █▄▄█         
echo.                                         %b%█▄   ▄▀ █ █  █ █▄   ▄▀ █  █  █   █ ▐█ █  █   
echo.                                         %b%▀███▀   █  █ █ ▀███▀     █    ███   ▐    █       
echo.                                         %b%        █   ██          ▀               █  
echo.                                         %b%                                       ▀         
echo.                        %g%"════════════════════════════════════════════════════════════════════════════════"%w%                                           
echo.                                                                                          
echo.                                                                                          
echo.                                           %b%[%r%1%b%]%r% Aplicar powerplan             
echo.                                                                                           
echo.                                           %b%[%r%2%b%]%r% Desactivar power throttoling      
echo.   
echo.                                           %b%[%r%3%b%]%r% Desactivar telemetria energia    
echo.
echo.                                           %b%[%r%4%b%]%r% Borrar powerplans innecesarios 
echo.
echo.                                           %b%[%r%5%b%]%r% Desactivar Hibernation, Fast startup y mas  
echo. 
echo.                                                                                     
echo.                                                %b%[%r%R%b%]%r% Revertir pagina                   
echo.                                                                                     
echo.                                                %b%[%r%M%b%]%r% Volver al menu                               
echo.                                                                                      
echo.                        %g%"════════════════════════════════════════════════════════════════════════════════"%w%                                           
echo.                          %p%*%r% Puede causar problemas de temperaturas en pcs con mala refrigeracion
echo.                        %g%"════════════════════════════════════════════════════════════════════════════════"%w%                                           
echo.
echo.

set /p input=%g%:%r%
if /i %input% == 1 goto p1
if /i %input% == 2 goto p2
if /i %input% == 3 goto p3
if /i %input% == 4 goto p4
if /i %input% == 5 goto p5
if /i %input% == 6 goto r16
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error de escritura detectado
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :energia



:p1
cls
echo %w%- Importando powerplan...%b%
powercfg -import "C:\acuatic\Darkyy_PowerPlan_V2.0.pow"
powercfg.cpl
timeout /t 1 /nobreak > NUL
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :energia

:p5
echo %w% - Desactivando inicio rapido (esto es malo para tu pc, incluso si acelera el arranque unos segundos.) %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f 

echo %w% - Desactivando Hibernation%b%
powercfg /h off
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f 

echo %w% - Desactivando Suspender (solo debes apagar tu pc, no ponerla en suspender, es malo para tu pc.) %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "1" /f 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu

:p4
echo %w% - Eliminando power plans innecesarios%b%
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a

echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto energia

:p3
echo %w% - Desactivando Energy Logging + Telemetria de energia%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :energia

:P2
cls
echo %w%- Desactivando Link State Power Managment %b%
FOR /F "eol=E" %%a in ('REG QUERY "HKLM\System\CurrentControlSet\Services" /s "EnableHIPM"^| FINDSTR /V "EnableHIPM"') DO (
echo %w%- Desactivando HIPM %b%
Reg.exe add "%%a" /v "EnableHIPM" /t REG_DWORD /d "0" /f  > nul 
echo %w%- Desactivando DIPM %b%
Reg.exe add "%%a" /v "EnableDIPM" /t REG_DWORD /d "0" /f > nul 
echo %w%- Desactivando HDD Parking %b%
Reg.exe add "%%a" /v "EnableHDDParking" /t REG_DWORD /d "0" /f > nul 
FOR /F "tokens=*" %%z IN ("%%a") DO (
SET STR=%%z
SET STR=!STR:HKLM\System\CurrentControlSet\Services\=!
) > nul 
)	
echo %w% - Desactivando GPU Energy Driver%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "2" /f 

echo %w% - Desactivando CoalescingTimerInterval%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f 

echo %w% - Desactivando Power Throttling%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f 

echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :energia


:5
:RAM
cls
echo.
echo.
echo.                                 %b%█▀▄▀█ ▄███▄   █▀▄▀█ ████▄ █▄▄▄▄ ▄█ ██       █▄▄▄▄ ██   █▀▄▀█      
echo.                                 %b%█ █ █ █▀   ▀  █ █ █ █   █ █  ▄▀ ██ █ █      █  ▄▀ █ █  █ █ █ 
echo.                                 %b%█ ▄ █ ██▄▄    █ ▄ █ █   █ █▀▀▌  ██ █▄▄█     █▀▀▌  █▄▄█ █ ▄ █         
echo.                                 %b%█   █ █▄   ▄▀ █   █ ▀████ █  █  ▐█ █  █     █  █  █  █ █   █   
echo.                                 %b%   █  ▀███▀      █          █    ▐    █       █      █    █       
echo.                                 %b%  ▀             ▀          ▀         █       ▀      █    ▀   
echo.                                 %b%                                    ▀              ▀               
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════"%r%                                           
echo.                                                                                          
echo.                                                                                          
echo.                                         %b%[%r%1%b%]%r% Activar/Desactivar Compresion de Memoria            
echo.                                                                                          
echo.                                         %b%[%r%2%b%]%r% Tweaks generales de memoria     
echo.                                              
echo.                                                                                       
echo.                                                %b%[%r%M%b%]%r% Volver al menu                               
echo.                                                                                          
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════"
echo.                                   %p%*%r% Puede subir temperaturas en pcs con refrigeracion mala
echo.                                        %p%*%r% Sube mucho el rendimiento drasticamente.
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════"
echo.
echo.

set /p input=%g%:%r%
if /i %input% == 1 goto m1
if /i %input% == 2 goto m2
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error de escritura detectado
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :5


:m1
cls
echo.
echo.
echo.                                 %b%█▀▄▀█ ▄███▄   █▀▄▀█ ████▄ █▄▄▄▄ ▄█ ██       █▄▄▄▄ ██   █▀▄▀█      
echo.                                 %b%█ █ █ █▀   ▀  █ █ █ █   █ █  ▄▀ ██ █ █      █  ▄▀ █ █  █ █ █ 
echo.                                 %b%█ ▄ █ ██▄▄    █ ▄ █ █   █ █▀▀▌  ██ █▄▄█     █▀▀▌  █▄▄█ █ ▄ █         
echo.                                 %b%█   █ █▄   ▄▀ █   █ ▀████ █  █  ▐█ █  █     █  █  █  █ █   █   
echo.                                 %b%   █  ▀███▀      █          █    ▐    █       █      █    █       
echo.                                 %b%  ▀             ▀          ▀         █       ▀      █    ▀   
echo.                                 %b%                                    ▀              ▀               
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════"%r%                                           
echo.                                                                                          
echo.                                                                                          
echo.                                       %b%[%r%1%b%]%r% Desactivar Compresion de Memoria (16GB o mas)           
echo.                                                                                          
echo.                                       %b%[%r%2%b%]%r% Activar Compresion de Memoria (Menos de 16GB)     
echo.                                              
echo.                                                                                       
echo.                                                 %b%[%r%M%b%]%r% Volver al menu                               
echo.                                                                                          
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════"
echo.                                  %p%*%r% Activado coge un poco del procesador para ram
echo.                                       %p%*%r% Para mas de 16gb desactivarlo
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════"
echo.
echo.

set /p input=%g%:%r%
if /i %input% == 1 goto memoff
if /i %input% == 2 goto memon
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error de escritura detectado
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :m1


:memoff
chcp 437 >nul 2>&1
echo %w% - Desactivando Memory Compression%b%
PowerShell -Command "Disable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :ram

:memon
chcp 437 >nul 2>&1
echo %w% - Activando Memory Compression%b%
PowerShell -Command "Enable-MMAgent -MemoryCompression" > nul 2>&1
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :ram

:m2
chcp 437 > nul
echo %w% - Desactivando Page Combining%b%
PowerShell -Command "Disable-MMAgent -PageCombining" > nul 2>&1

echo %w% - Estableciendo la velocidad maxima de operacion en 2048%b%
PowerShell -Command "Set-MMAgent -MaxOperationAPIFiles 2048" > nul 2>&1

echo %w% - Activando Sysmain%b%
PowerShell -Command "Set-Service sysmain -StartupType Automatic" > nul 2>&1
PowerShell -Command "Start-Service sysmain" > nul 2>&1
chcp 65001 > nul

echo %w% - Desactivando Paging Executive%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "1" /f 

echo %w% - Desactivando Prefetch and superfetch%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f

echo %w% - Optimizando Manegamiento Memoria %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "NonPagedPoolQuota" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "NonPagedPoolSize" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagedPoolQuota" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagedPoolSize" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SecondLevelDataCache" /t REG_DWORD /d "1024" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SessionPoolSize" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SessionViewSize" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemPages" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PhysicalAddressExtension" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IoPageLockLimit" /t REG_DWORD /d "16710656" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PoolUsageMaximum" /t REG_DWORD /d "96" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "Start" /t REG_DWORD /d "4" /f


echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu



:g1
cls
echo.
echo.
echo.
echo.                                   %b%   ▄       ▄   ▄█ ██▄   ▄█ ██         ▄▀  █ ▄▄   ▄   
echo.                                   %b%    █       █  ██ █  █  ██ █ █      ▄▀    █   █   █  
echo.                                   %b%██   █ █     █ ██ █   █ ██ █▄▄█     █ ▀▄  █▀▀▀ █   █ 
echo.                                   %b%█ █  █  █    █ ▐█ █  █  ▐█ █  █     █   █ █    █   █ 
echo.                                   %b%█  █ █   █  █   ▐ ███▀   ▐    █      ███   █   █▄ ▄█ 
echo.                                   %b%█   ██    █▐                 █              ▀   ▀▀▀  
echo.                                   %b%          ▐                 ▀                        
timeout 1 /nobreak > NUL
echo %w% - Aplicando Nvidia Profile Inpector (NVPI)%b%
start "" /wait "C:\acuatic\NvidiaProfileInspector.exe" "C:\acuatic\Darkyy_NVPI_Settings_V2.0.nip" 

echo %w% - Forzando la asignacion de memoria contigua %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "1" /f

echo %w% - Activando Write Combining %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f

for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID') do set "str=%%i" (
echo %w%- Desactivando GPU Device Priority %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f

echo %w%- Removiendo limite de gpu en MSI %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MessageNumberLimit" /f

echo %w%- Activando Modo MSI%b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f
)

echo %w% - Configurando Tolerancia a la latencia de NVIDIA%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "D3PCLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "F1TransitionLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "LOWLATENCY" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Node3DLowLatency" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PciLatencyTimerControl" /t REG_DWORD /d "20" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMDeepL1EntryLatencyUsec" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMaxFtuS" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMinFtuS" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcPerioduS" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrEiIdleThresholdUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrIdleThresholdUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrRgIdleThresholdUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrMsIdleThresholdUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipDPCDelayUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipTimingMarginUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectJITFlipMsHybridFlipDelayUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrCursorMarginUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMarginUs" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMaxUs" /t REG_DWORD /d "1" /f 


echo %w% - Desactivando Telemetria NVIDIA%b%
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "NvBackend" /f 
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /t REG_DWORD /d "0" /f 
schtasks /change /disable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvDriverUpdateCheckDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NVIDIA GeForce Experience SelfUpdate_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
schtasks /change /disable /tn "NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 

echo %w%- Desactivando GpuEnergy Driver %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "4" /f

echo %w% - Desactivando Preemption%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f 

echo %w%- Tolerancia de latencia %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "QosManagesIdleProcessors" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LowLatencyScalingPercentage" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LowLatencyScalingPercentage" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f


echo %w%- Establecer consulta vram%b% 
fsutil behavior query memoryusage
fsutil behavior set memoryusage 2


echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu


:g2
cls
echo.
echo.
echo.
echo.                                     %b%██   █▀▄▀█ ██▄       ▄█▄    █ ▄▄   ▄   
echo.                                     %b%█ █  █ █ █ █  █      █▀ ▀▄  █   █   █  
echo.                                     %b%█▄▄█ █ ▄ █ █   █     █   ▀  █▀▀▀ █   █ 
echo.                                     %b%█  █ █   █ █  █      █▄  ▄▀ █    █   █ 
echo.                                     %b%   █    █  ███▀      ▀███▀   █   █▄ ▄█ 
echo.                                     %b%  █    ▀                      ▀   ▀▀▀  
echo.                                     %b% ▀                                     
timeout 1 /nobreak > NUL

for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID') do set "str=%%i" (
echo %w%- Eliminando GPU Device Priority %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f

echo %w%- Removiendo Msi GPU Limits %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MessageNumberLimit" /f

echo %w%- Activando modo MSI %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f
)

echo %w%- Desactivando GpuEnergy Driver %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "4" /f

echo %w%- Desactivando High-Bandwidth Digital Content Protection (HDCP) %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\\DAL2_DATA__2_0\DisplayPath_4\EDID_D109_78E9\Option" /v "ProtectionControl" /t REG_BINARY /d "0100000001000000" /f 

echo %w% - Desactivando Display Refresh Rate Override%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "3D_Refresh_Rate_Override_DEF" /t REG_DWORD /d "0" /f 

echo %w% - Desactivando SnapShot%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSnapshot" /t REG_DWORD /d "0" /f 

echo %w% - Desactivando Anti Aliasing%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AAF_NA" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AntiAlias_NA" /t REG_SZ /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ASTT_NA" /t REG_SZ /d "0" /f 

echo %w% - Desactivando Subscriptions%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSubscription" /t REG_DWORD /d "0" /f 

echo %w% - Desactivando Anisotropic Filtering%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AreaAniso_NA" /t REG_SZ /d "0" /f 

echo %w% - Desactivando Radeon Overlay%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowRSOverlay" /t REG_SZ /d "false" /f  

echo - Activando Adaptive DeInterlacing%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Adaptive De-interlacing" /t REG_DWORD /d "1" /f 

echo %w% - Desactivando Skins%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSkins" /t REG_SZ /d "false" /f  

echo %w% - Desactivando Automatic Color Depth Reduction%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AutoColorDepthReduction_NA" /t REG_DWORD /d "0" /f 

echo %w% - Desactivando Power Gating%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f 


echo %w% - Desactivando VCESW Clock Gating%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVceSwClockGating" /t REG_DWORD /d "1" /f 

echo %w% - Desactivando UVD Clock Gating%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUvdClockGating" /t REG_DWORD /d "1" /f 

echo %w% - Desactivando Active State Power Management (ASPM)%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL0s" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL1" /t REG_DWORD /d "0" /f 

echo %w% - Desactivando Ultra Low Power States (ULPS) %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps_NA" /t REG_SZ /d "0" /f 

echo %w% - Activando De-Lag%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_DeLagEnabled" /t REG_DWORD /d "1" /f 
timeout /t 1 /nobreak > NUL

echo %w% - Desactivando Frame Rate Target%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t REG_DWORD /d "0" /f 
timeout /t 1 /nobreak > NUL

echo %w% - Desactivando DMA%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDMACopy" /t REG_DWORD /d "1" /f 

echo %w% - Activando BlockWrite%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f 

echo %w% - Desactivando Stutter Mode%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "StutterMode" /t REG_DWORD /d "0" /f 

echo %w% - Desactivando GPU Memory Clock Sleep State%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f 

echo %w% - Desactivando Thermal Throttling%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f 

echo %w% - Desactivando Preemption%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableComputePreemption" /t REG_DWORD /d "0" /f 

echo %w% - Configurando Main3D%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_DEF" /t REG_SZ /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f 

echo %w% - Configurando FlipQueueSize%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "FlipQueueSize" /t REG_BINARY /d "3100" /f 

echo %w% - Configurando Shader Cache Size%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /t REG_BINARY /d "3200" /f 

echo %w% - Configurando TFQ%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f 

echo %w%- Desactivando Preemption %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisableCudaContextPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "ComputePreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisablePreemption" /t REG_DWORD /d "1" /f


echo %w% - Desactivando GPU Power Down%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_GPUPowerDownEnabled" /t REG_DWORD /d "1" /f 

echo %w% - Desactivando AMD Logging%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f 

echo %w%- Tolerancia de latencia %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "QosManagesIdleProcessors" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LowLatencyScalingPercentage" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LowLatencyScalingPercentage" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f
timeout /t 1 /nobreak > NUL


echo %w%- Vram %b% 
fsutil behavior query memoryusage
fsutil behavior set memoryusage 2


echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu


:9
cls
echo.  
echo.  
echo.  
echo.                                                 %b%  ▄      ▄▄▄▄▄   ███          ▄▄▄▄▀ ▄ ▄   ▄███▄   ██   █  █▀  ▄▄▄▄▄   
echo.                                                 %b%   █    █     ▀▄ █  █      ▀▀▀ █   █   █  █▀   ▀  █ █  █▄█   █     ▀▄ 
echo.                                                 %b%█   █ ▄  ▀▀▀▀▄   █ ▀ ▄         █  █ ▄   █ ██▄▄    █▄▄█ █▀▄ ▄  ▀▀▀▀▄   
echo.                                                 %b%█   █  ▀▄▄▄▄▀    █  ▄▀        █   █  █  █ █▄   ▄▀ █  █ █  █ ▀▄▄▄▄▀    
echo.                                                 %b%█▄ ▄█            ███         ▀     █ █ █  ▀███▀      █   █            
echo.                                                 %b% ▀▀▀                                ▀ ▀             █   ▀             
echo.                                                 %b%                                                   ▀                  
timeout 1 /nobreak > NUL
echo %w% - Desactivando USB PowerSavings%b%
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "AllowIdleIrpInD3" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "D3ColdSupported" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "DeviceSelectiveSuspended" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnableSelectiveSuspend" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendOn" /t REG_DWORD /d "0" /f 
)


echo %w% - Thread Priority%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\usbxhci\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f

echo %w% - Desactivando USB Selective Suspend%b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d "1" /f 

echo %w% - Activando Modo MSI%b%
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID') do set "str=%%i" & (
echo. - Eliminando USB Device Priority %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f
echo. - Activando modo msi %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f
)

echo %w% - USB Msi Priority%b%
for /f %%i in ('wmic path Win32_IDEController get PNPDeviceID 2^>nul') do set "str=%%i" & if "!str:PCI\VEN_=!" neq "!str!" (
echo %w%- DEL Sata controllers Device Priority %b%
Reg.exe add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f
)

echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu

:k1
cls
echo %w% - Desactivando Filter Keys %b%
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
echo %w% - Desactivando Toggle Keys%b%
Reg.exe add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "58" /f
echo %w% - Desactivando Sticky Keys%b%
Reg.exe add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
echo %w% - Desactivando Mouse Keys%b%
Reg.exe add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f

echo %w% - Desactivando Mouse Acceleration%b%
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f

echo %w% - Activando 1:1 Pixel Mouse Movements%b%
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f

echo %w% - Reduciendo Keyboard Repeat Delay%b%
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f

echo %w% - Subiendo Keyboard Repeat Rate%b%
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f

echo %w% - Configurando CSRSS a Tiempo real%b%
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f 
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f 
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto kbm,

:2
:kbm
cls
echo.
echo.
echo.                                        %b% ▄█    ▄   █ ▄▄   ▄     ▄▄▄▄▀ █    ██     ▄▀  
echo.                                        %b% ██     █  █   █   █ ▀▀▀ █    █    █ █  ▄▀    
echo.                                        %b% ██ ██   █ █▀▀▀ █   █    █    █    █▄▄█ █ ▀▄  
echo.                                        %b% ▐█ █ █  █ █    █   █   █     ███▄ █  █ █   █ 
echo.                                        %b%  ▐ █  █ █  █   █▄ ▄█  ▀          ▀   █  ███  
echo.                                        %b%    █   ██   ▀   ▀▀▀                 █        
echo.                                        %b%                                    ▀            
echo.                        %g%"════════════════════════════════════════════════════════════════════════════════"%w%                    
echo.                                                                                          
echo.                                                                                          
echo.                                         %b%[%r%1%b%]%r% Optimizar registro de mouse y teclado             
echo.                                                                                           
echo.                                         %b%[%r%2%b%]%r% Teclado + Mouse Data Queue Size   
echo.                                                                                          
echo.                                                                                           
echo.                                               %b%[%r%M%b%]%r% Volver al menu                               
echo.                                                                                          
echo.                        %g%"════════════════════════════════════════════════════════════════════════════════"
echo.                                %p%*%r% Optimiza Tu mouse y teclado para el menor input lag posible
echo.                            %p%*%r% Desactiva un monton de cosas que dan input lag a tu mouse y teclado
echo.                        %g%"════════════════════════════════════════════════════════════════════════════════"
echo.

set /p input=%g%:%r%
if /i %input% == 1 goto k1
if /i %input% == 2 goto k2
if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error detectado en la escritura!
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :kbm

:k2
cls
echo.
echo.
echo.

echo.                                             %b% ▄█    ▄   █ ▄▄   ▄     ▄▄▄▄▀ █    ██     ▄▀  
echo.                                             %b% ██     █  █   █   █ ▀▀▀ █    █    █ █  ▄▀    
echo.                                             %b% ██ ██   █ █▀▀▀ █   █    █    █    █▄▄█ █ ▀▄  
echo.                                             %b% ▐█ █ █  █ █    █   █   █     ███▄ █  █ █   █ 
echo.                                             %b%  ▐ █  █ █  █   █▄ ▄█  ▀          ▀   █  ███  
echo.                                             %b%    █   ██   ▀   ▀▀▀                 █        
echo.                                             %b%                                    ▀            
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════"                                                                                                                     
echo.            
echo.                             %b%[%r%1%b%]%r% CPU Gama alta          %b%[%r%2%b%]%r% CPU Gama media       %b%[%r%3%b%]%r% CPU Gama baja                  
echo.                                                                                                                                                                                       
echo.                                                                                                                      
echo.                                                         %b%[%r%T%b%]%r% Administrador de Tareas                                     
echo.                                                                                                                      
echo.                                                        %b%[%r%R%b%]%r% Revertir los cambios hechos                 
echo.                                                                                                                                                                                                                                          
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.                                         %p%*%r% Comenta tu cpu en los comentarios y te dire de que gama es
echo.
echo.                                           %p%*%r% El menor valor, la menor latencia que puedes tener 
echo.
echo.                                              %p%*%r% %r% Pero puede causar problemas en pcs antiguos
echo.                        %g%"══════════════════════════════════════════════════════════════════════════════════════════════"
echo.
set /p input=%g%:%r% 
if /i %input% == 1 goto 14v
if /i %input% == 2 goto 17v
if /i %input% == 3 goto 20v
if /i %input% == R goto revertirm
if /i %input% == T start taskmgr & goto k2
if /i %input% == X cls & goto mouse

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error detectado en la escritura!
timeout 2 
goto Redirectmouse


:Redirectmouse
cls
goto :mouse

:14v
echo %w% - 14 %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "20" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "20" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu

:17v
echo %w% - 17 %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "23" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "23" /f

echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu


:20v
echo %w% - 20 %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "32" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu

:revertirm
echo %w% - 100 %b%
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "256" /f
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu



:6
cls
chcp 437 > nul

powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Despues de presionar ok vas a ir a la seccion de logon y vas a desactivar todo menos cmd.exe, n/a y antivirus o programas que quieras que inicien.', 'Darkyy Acuatic', 'Ok', [System.Windows.Forms.MessageBoxIcon]::Information);}"
chcp 65001 > nul

start C:\acuatic\autoruns.exe
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto menu





:4
:limpiar
cls
echo.
echo.
echo.                                            %b%█    ▄█ █▀▄▀█ █ ▄▄  ▄█ ██   █▄▄▄▄   
echo.                                            %b%█    ██ █ █ █ █   █ ██ █ █  █  ▄▀ 
echo.                                            %b%█    ██ █ ▄ █ █▀▀▀  ██ █▄▄█ █▀▀▌        
echo.                                            %b%███▄ ▐█ █   █ █     ▐█ █  █ █  █  
echo.                                            %b%    ▀ ▐    █   █     ▐    █   █       
echo.                                            %b%          ▀     ▀        █   ▀    
echo.                                            %b%                        ▀               
echo.                        %g%"═════════════════════════════════════════════════════════════════════════════════════════"%r%                
echo.                                                                                          
echo.                                                                                          
echo.                                 %b%[%r%1%b%]%r% Limpiar Temporales Dispositivos     %b%[%r%2%b%]%r% Windows Clean Manager        
echo.                                                                                           
echo.                                                                                           
echo.                                                   %b%[%r%M%b%]%r% Volver al menu                               
echo.                                                                                          
echo.                        %g%"═════════════════════════════════════════════════════════════════════════════════════════"
echo.                                         %p%*%r% Limpia archivos temporales de tu pc
echo.                                            %p%*%r% Borra drivers antiguos,...
echo.                        %g%"═════════════════════════════════════════════════════════════════════════════════════════"
echo. 
set /p input=%g%:%r%
if /i %input% == 1 goto c1
if /i %input% == 2 goto c2

if /i %input% == M cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo - Error de escritura detectado!
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto :4


:c1
cls
echo %w% -  Limpiando temporales de dispositivos...%b%
chcp 437 > nul
@echo on
POWERSHELL "$Devices = Get-PnpDevice | ? Status -eq Unknown;foreach ($Device in $Devices) { &\"pnputil\" /remove-device $Device.InstanceId }"
@echo off
chcp 65001 > nul
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :4

:c2
cls
start cleanmgr.exe
echo.
echo.
echo.
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
echo.                                   %r%  Operacion Completada, Presiona una tecla para continuar...%r%
echo.                                  %b%[════════════════════════════════════════════════════════════]%r%
pause > nul
cls
goto :menu
