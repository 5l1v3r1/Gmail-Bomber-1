<# Menu#>
mode con cols=109 lines=25
$Server = 'smtp.gmail.com'
$Puerto = '587'
$NumOpcion1 = 0

function Menu {

    Clear-Host
    Write-Host "
      ______                _ __      ____                  __             
     / ____/___ ___  ____ _(_) /     / __ )____  ____ ___  / /_  ___  _____
    / / __/ __  __ \/ __  / / /_____/ __  / __ \/ __  __ \/ __ \/ _ \/ ___/
   / /_/ / / / / / / /_/ / / /_____/ /_/ / /_/ / / / / / / /_/ /  __/ /           Hecho por wrrulos
   \____/_/ /_/ /_/\__,_/_/_/     /_____/\____/_/ /_/ /_/_.___/\___/_/            www.github.com/wrrulos
                                                                        " -ForegroundColor Red
    Write-Host ""
    Write-Host "   Herramienta hecha con fines educativos, no me hago responsable." -ForegroundColor DarkRed
    Write-Host ""
    m1 | n1 | m2 | m5


    do{
        Write-Host ""
        Write-Host ""
        $opciones = Read-Host "   [#] Elije una opcion" 
        switch ($opciones)
        {
            '1' {

               opcion1

            } default {
                exit
            }
        }

    } until ($opciones -eq 'r')

    
}

function opcion1{

    Clear-Host
    Write-Host "
       ______                _ __      ____                  __             
      / ____/___ ___  ____ _(_) /     / __ )____  ____ ___  / /_  ___  _____
     / / __/ __  __ \/ __  / / /_____/ __  / __ \/ __  __ \/ __ \/ _ \/ ___/
    / /_/ / / / / / / /_/ / / /_____/ /_/ / /_/ / / / / / / /_/ /  __/ /           Hecho por wrrulos
    \____/_/ /_/ /_/\__,_/_/_/     /_____/\____/_/ /_/ /_/_.___/\___/_/            www.github.com/wrrulos
                                                                        " -ForegroundColor Red
    Write-Host ""
    $Email = Read-Host " Escribe la direccion de tu email"
    Write-Host ""

    $Contraseña = Read-Host " Escribe la contraseña"
    Write-Host ""

    $Destino = Read-Host " Escribe el email destinatario"
    Write-Host ""

    Write-Host "_______________________________________________"
    Write-Host ""
    Write-Host " Tu correo: " $Email
    Write-Host " Tu contraseña: " $Contraseña
    Write-Host " Correo destinatario: " $Destino
    Write-Host "_______________________________________________"
    Write-Host ""

    do{

        $PreguntaOpcion1 = Read-Host "¿Es correcto? S/N"
        switch ($PreguntaOpcion1)
        {
            'S'{
                opcion1P2

            } 
            'N'{
                opcion1

            } default {

            Write-Host ""
            Write-Host " Ingresa una opcion valida (S/N)" -ForegroundColor Red
            Write-Host ""

            }
        }

            
       } until ($PreguntaOpcion1 -eq 'q')

}

function opcion1P2{

    Clear-Host

    Write-Host "
      ______                _ __      ____                  __             
     / ____/___ ___  ____ _(_) /     / __ )____  ____ ___  / /_  ___  _____
    / / __/ __  __ \/ __  / / /_____/ __  / __ \/ __  __ \/ __ \/ _ \/ ___/
   / /_/ / / / / / / /_/ / / /_____/ /_/ / /_/ / / / / / / /_/ /  __/ /           Hecho por wrrulos
   \____/_/ /_/ /_/\__,_/_/_/     /_____/\____/_/ /_/ /_/_.___/\___/_/            www.github.com/wrrulos
                                                                        " -ForegroundColor Red
    Write-Host ""
    Write-Host ""
    $Titulo = Read-Host " Titulo del correo"
    Write-Host ""

    $Mensaje = Read-Host " Contenido del mensaje"
    Write-Host ""

    do{

        Write-Host " Selecciona el tiempo que tardara en enviar un email"
        Write-Host ""
        Write-Host " [0] 5 segundos"
        Write-Host " [1] 30 segundos"
        Write-Host " [2] 60 segundos"
        Write-Host " [3] Personalizado"
        Write-Host ""
        $recarga = Read-Host " Elije una opcion"
        switch ($recarga)
        {
            '0'{

                opcion1seg5

            } 

            '1'{

                opcion1seg30

            }

            '2'{

                opcion1seg60

            }

            '3'{
                Write-Host ""
                $opcion1Perss = Read-Host " Escribe la cantidad de segundos"
                opcion1Pers


            } default {

            Write-Host ""
            Write-Host " Ingresa una opcion valida" -ForegroundColor Red
            Write-Host ""

            }
        }

            
       } until ($PreguntaOpcion1 -eq 'qasdadaaada')
    opcion1P3

}

function opcion1seg5 {

    Clear-Host
    Write-Host ""
    d1 | d2
    d3 | d4
    d5 | d6
    d7 | d8
    d9 | d10
    d11 | d12
    d13 | d14
    d15 | d16
    d17 | d18
    Write-Host ""
    
    opcion1seg5P2

}

function opcion1seg5P2 {
    $smtp = New-Object System.Net.Mail.SmtpClient($Server, $Puerto);
    $smtp.EnableSSL = $true
    $smtp.Credentials = New-Object System.Net.NetworkCredential($Email, $Contraseña);
    $smtp.Send($Email, $Destino, $Titulo + $NumOpcion1, $Mensaje);
    Write-Host ""
    mm1 | m8 | m2 | m3
    Write-Host ""
    Start-Sleep 5
    $NumOpcion1++
    opcion1seg5P2
}

function opcion1seg30 {

    Clear-Host
    Write-Host ""
    d1 | d2
    d3 | d4
    d5 | d6
    d7 | d8
    d9 | d10
    d11 | d12
    d13 | d14
    d15 | d16
    d17 | d18
    Write-Host ""
    
    opcion1seg30P2

}

function opcion1seg30P2 {
    $smtp = New-Object System.Net.Mail.SmtpClient($Server, $Puerto);
    $smtp.EnableSSL = $true
    $smtp.Credentials = New-Object System.Net.NetworkCredential($Email, $Contraseña);
    $smtp.Send($Email, $Destino, $Titulo + $NumOpcion1, $Mensaje);
    Write-Host ""
    mm1 | m8 | m2 | m3
    Write-Host ""
    Start-Sleep 30
    $NumOpcion1++
    opcion1seg30P2
}

function opcion1seg60 {

    Clear-Host
    Write-Host ""
    d1 | d2
    d3 | d4
    d5 | d6
    d7 | d8
    d9 | d10
    d11 | d12
    d13 | d14
    d15 | d16
    d17 | d18
    Write-Host ""
    
    opcion1seg60P2

}

function opcion1seg60P2 {
    $smtp = New-Object System.Net.Mail.SmtpClient($Server, $Puerto);
    $smtp.EnableSSL = $true
    $smtp.Credentials = New-Object System.Net.NetworkCredential($Email, $Contraseña);
    $smtp.Send($Email, $Destino, $Titulo + $NumOpcion1, $Mensaje);
    Write-Host ""
    mm1 | m8 | m2 | m3
    Write-Host ""
    Start-Sleep 60
    $NumOpcion1++
    opcion1seg60P2
}

function opcion1Pers {

    Clear-Host
    Write-Host ""
    d1 | d2
    d3 | d4
    d5 | d6
    d7 | d8
    d9 | d10
    d11 | d12
    d13 | d14
    d15 | d16
    d17 | d18
    Write-Host ""
    
    opcion1PersP2

}

function opcion1PersP2 {
    $smtp = New-Object System.Net.Mail.SmtpClient($Server, $Puerto);
    $smtp.EnableSSL = $true
    $smtp.Credentials = New-Object System.Net.NetworkCredential($Email, $Contraseña);
    $smtp.Send($Email, $Destino, $Titulo + $NumOpcion1, $Mensaje);
    Write-Host ""
    mm1 | m8 | m2 | m3
    Write-Host ""
    Start-Sleep $opcion1Perss
    $NumOpcion1++
    opcion1PersP2
}

function m1 {
    
    Write-Host "   [" -nonew -ForegroundColor Cyan
} 

function mm1 {
    
    Write-Host " [" -nonew -ForegroundColor Cyan
} 

function m2 {
    
    Write-Host "]" -nonew -ForegroundColor Cyan
}

function m3 {

    Write-Host " Mensaje enviado!" -ForegroundColor White -nonew
}

function m4 {

    Write-Host "•" -ForegroundColor White -nonew
}

function n1 {

    Write-Host "1" -ForegroundColor White -nonew
}

function n2 {

    Write-Host "2" -ForegroundColor White -nonew
}

function n3 {

    Write-Host "3" -ForegroundColor White -nonew
}

function m5 {

    Write-Host " Enviar desde un solo correo" -ForegroundColor White 
}

function m6 {

    Write-Host " Enviar por Outlook" -ForegroundColor White 
}

function m7 {

    Write-Host " Crear script automatico" -ForegroundColor White 
}

function m8 {

    Write-Host "√" -ForegroundColor Green -nonew
}

function d1 {
    Write-Host "    ▄████" -ForegroundColor Red -NoNewline

}

function d2 {
    Write-Host "  ███▄ ▄███▓ ▄▄▄       ██▓ ██▓" -ForegroundColor White 

}

function d3 {
    Write-Host "   ██▒ ▀█▒" -ForegroundColor Red -NoNewline

}

function d4 {
    Write-Host "▓██▒▀█▀ ██▒▒████▄    ▓██▒▓██▒ " -ForegroundColor White 

}

function d5 {
    Write-Host "  ▒██░▄▄▄░" -ForegroundColor Red -NoNewline

}

function d6 {
    Write-Host "▓██    ▓██░▒██  ▀█▄  ▒██▒▒██░    " -ForegroundColor White 

}

function d7 {
    Write-Host "  ░▓█  ██▓" -ForegroundColor Red -NoNewline

}

function d8 {
    Write-Host "▒██    ▒██ ░██▄▄▄▄██ ░██░▒██░    " -ForegroundColor White 

}

function d9 {
    Write-Host "  ░▒▓███▀▒" -ForegroundColor Red -NoNewline

}

function d10 {
    Write-Host "▒██▒   ░██▒ ▓█   ▓██▒░██░░██████▒" -ForegroundColor White 

}

function d11 {
    Write-Host "   ░▒   ▒" -ForegroundColor Red -NoNewline

}

function d12 {
    Write-Host " ░ ▒░   ░  ░ ▒▒   ▓▒█░░▓  ░ ▒░▓  ░" -ForegroundColor White 

}

function d13 {
    Write-Host "    ░   ░" -ForegroundColor Red -NoNewline

}

function d14 {
    Write-Host " ░  ░      ░  ▒   ▒▒ ░ ▒ ░░ ░ ▒  ░" -ForegroundColor White 

}

function d15 {
    Write-Host "  ░ ░   ░" -ForegroundColor Red -NoNewline

}

function d16 {
    Write-Host " ░      ░     ░   ▒    ▒ ░  ░ ░   " -ForegroundColor White 

}

function d17 {
    Write-Host "        ░" -ForegroundColor Red -NoNewline

}

function d18 {
    Write-Host "        ░         ░  ░ ░      ░  ░ " -ForegroundColor White 

}
Menu