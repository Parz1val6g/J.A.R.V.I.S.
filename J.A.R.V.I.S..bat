@echo off
title J.A.R.V.I.S.
    if not exist %cd%\speeches mkdir %cd%\speeches
    if not exist %cd%\Documents mkdir %cd%\Documents
    rem This is for java speaker
    set num=%random%
    if exist speeches\temp%num%.vbs goto num
    echo ' > "speeches\temp%num%.vbs"
    echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs

    rem Name Setter
    :setname
        echo Hello sir, can you tell me your name please, for the records?
        set num=%random%
        if exist speeches\temp%num%.vbs goto num
            echo ' > "speeches\temp%num%.vbs"
            echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
            echo speech.speak "Hello sir, can you tell me your name please, for the records?" >> "speeches\temp%num%.vbs"
            start speeches\temp%num%.vbs
                timeout /t 6 /nobreak >nul
            set /p name=
    goto apresentation

    rem Jarvis apresentation
    :apresentation
    cls
        set num=%random%
        if exist speeches\temp%num%.vbs goto num
        echo ' > "speeches\temp%num%.vbs"
        echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
        echo speech.speak "Hello, my name is Jarvis, and I'm here to serve you sir %name%" >> "speeches\temp%num%.vbs"
        start speeches\temp%num%.vbs
            timeout /t 5 /nobreak >nul
    goto beginning

    rem Program Start
    :beginning
    cls
        echo What did %name% want to do?
        set num=%random%
        if exist speeches\temp%num%.vbs goto num
        echo ' > "speeches\temp%num%.vbs"
        echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
        echo speech.speak "What does Mr %name% want to do?" >> "speeches\temp%num%.vbs"
        start speeches\temp%num%.vbs
            timeout /t 3 /nobreak >nul
            set /p choice=R.:
                if '%choice%' == 'idk' goto idontknow
                if '%choice%' == 'name' goto askchange
                if '%choice%' == 'battery' goto battery
                if '%choice%' == 'time' goto time
                if '%choice%' == 'date' goto date
                if '%choice%' == 'write' goto write
                if '%choice%' == 'nothing' goto rude
                if '%choice%' == 'leave' goto finish

    rem Change name
    :askchange
    cls
    echo Do you really want to change your name?
        set num=%random%
        if exist speeches\temp%num%.vbs goto num
        echo ' > "speeches\temp%num%.vbs"
        echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
        echo speech.speak "Does mister %name% want to change the name?" >> "speeches\temp%num%.vbs"
        start speeches\temp%num%.vbs
        set /p djvs=
        if '%djvs%' == 'yes' goto updatename
        if '%djvs%' == 'no' goto beginning
    
    rem Update the name
    :updatename
    cls
    echo Insert here your name:
    set num=%random%
        if exist speeches\temp%num%.vbs goto num
        echo ' > "speeches\temp%num%.vbs"
        echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
        echo speech.speak "Insert here your name" >> "speeches\temp%num%.vbs"
        start speeches\temp%num%.vbs
        set /p name=
        set num=%random%
        if exist speeches\temp%num%.vbs goto num
        echo ' > "speeches\temp%num%.vbs"
        echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
        echo speech.speak "Name Updated to %name%." >> "speeches\temp%num%.vbs"
        start speeches\temp%num%.vbs
        goto beginning
    
    rem echo the list of possibilities
    :idontknow
    cls
        echo Jarvis can:
        echo    -change your name (name)
        echo    -show the time (time)
        echo    -show the date (date)
        echo    -show the battery percentage (battery)
        echo    -create some file (write)
        echo    -go out (leave)
        set num=%random%
        if exist speeches\temp%num%.vbs goto num
        echo ' > "speeches\temp%num%.vbs"
        echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
        echo speech.speak "I can change your name, show you the time, the date, you device battery percentage, create some file or you can leave." >> "speeches\temp%num%.vbs"
        start speeches\temp%num%.vbs
        pause >nul
        goto polite

    

    rem Show Hours
    :time
    cls
        @echo Hours: %time%
            set num=%random%
            if exist speeches\temp%num%.vbs goto num
            echo ' > "speeches\temp%num%.vbs"
            echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
            echo speech.speak "It's %time%." >> "speeches\temp%num%.vbs"
            start speeches\temp%num%.vbs
            pause >nul
        goto polite

    rem Show Date
    :date
    cls
        @echo Date: %date%
            set num=%random%
            if exist speeches\temp%num%.vbs goto num
            echo ' > "speeches\temp%num%.vbs"
            echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
            echo speech.speak "It's %date%." >> "speeches\temp%num%.vbs"
            start speeches\temp%num%.vbs
        pause >nul
        goto polite

    rem Check the battery percentage
    :battery
    cls
        for /f "tokens=2 delims==" %%E in ('wmic path Win32_Battery get EstimatedChargeRemaining /value') do (set "battery=%%E")
        @echo Battery device: %battery%%%;
        set num=%random%
        if exist speeches\temp%num%.vbs goto num
        echo ' > "speeches\temp%num%.vbs"
        echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
        echo speech.speak "Your device has %battery% percent of battery in this moment mister %name%." >> "speeches\temp%num%.vbs"
        start speeches\temp%num%.vbs
        pause >nul
        goto polite

    rem Create a .txt file
    :write
    cls
        echo Txt file name that you want to create:
            set num=%random%
            if exist speeches\temp%num%.vbs goto num
            echo ' > "speeches\temp%num%.vbs"
            echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
            echo speech.speak "File name that you want to create:" >> "speeches\temp%num%.vbs"
            start speeches\temp%num%.vbs
                timeout /t 3 /nobreak >nul
        set /p docname=R.:
        cls
            type nul > Documents\%docname%.txt
            echo Mister %name%, want to open it or do something else?
                set num=%random%
                if exist speeches\temp%num%.vbs goto num
                echo ' > "speeches\temp%num%.vbs"
                echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
                echo speech.speak "Mister %name%, want to open it or do something else?" >> "speeches\temp%num%.vbs"
                start speeches\temp%num%.vbs
            timeout /t 5 /nobreak >nul
        
            echo open(a) or something else(b)
            set /p var1=R.:
                if '%var1%' == 'a' goto write
                if '%var1%' == 'A' goto write
                if '%var1%' == 'b' goto polite
                if '%var1%' == 'B' goto polite
            exit

    rem Write a file
    :write
    cls
        set num=%random%
        if exist speeches\temp%num%.vbs goto num
        echo ' > "speeches\temp%num%.vbs"
        echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
        echo speech.speak "Good bye %name%, and good text's" >> "speeches\temp%num%.vbs"
        start speeches\temp%num%.vbs
    start Documents\%docname%.txt
    exit

    rem If user is rude is directionated to here
    :rude
    cls
        echo That's rude mister %name%. Can you please have some education please?
            set num=%random%
            if exist speeches\temp%num%.vbs goto num
            echo ' > "speeches\temp%num%.vbs"
            echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
            echo speech.speak "That's rude sir.%name%. Can you please have some education please?" >> "speeches\temp%num%.vbs"
            start speeches\temp%num%.vbs
        timeout /t 6 /nobreak >nul
        set /p education=
        if '%education%' == 'sorry Jarvis' goto polite
        if '%education%' == 'NO' goto notpolite
        if not '%education%' == 'sorry Jarvis :(' goto notpolite

    rem If user isn't polite is directionated to here
    :notpolite
    cls
        echo Ok, %name%. You will be punished for 5 minutes !
            set num=%random%
            if exist speeches\temp%num%.vbs goto num
            echo ' > "speeches\temp%num%.vbs"
            echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
            echo speech.speak "Ok, %name% ! You will be punished for 5 minutes !" >> "speeches\temp%num%.vbs"
            timeout /t 3 /nobreak >nul
            start speeches\temp%num%.vbs
        timeout /t 15  /nobreak > nul
    cls
        echo Your punishment has finished..
            set num=%random%
            if exist speeches\temp%num%.vbs goto num
            echo ' > "speeches\temp%num%.vbs"
            echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
            echo speech.speak "Your punishment has finished." >> "speeches\temp%num%.vbs"
            start speeches\temp%num%.vbs
        timeout 5 /nobreak > nul
    cls
        echo You learn your lesson?
            set num=%random%
            if exist speeches\temp%num%.vbs goto num
            echo ' > "speeches\temp%num%.vbs"
            echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
            echo speech.speak "You learn your lesson?" >> "speeches\temp%num%.vbs"
            start speeches\temp%num%.vbs
        timeout /t 2 /nobreak >nul
    set /p response=
        if '%response%' == 'YES' goto polite
        if '%response%' == 'yes' goto polite
        if '%response%' == 'NO' goto notpolite
        if '%response%' == 'no' goto notpolite

    rem If user is polite is directionated to here
    :polite
        cls
    goto beginning

    rem Program Finish
    :finish
    cls
            set num=%random%
            if exist speeches\temp%num%.vbs goto num
            echo ' > "speeches\temp%num%.vbs"
            echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "speeches\temp%num%.vbs
            echo speech.speak "Good bye %name%, and good luck for your trip." >> "speeches\temp%num%.vbs"
            start speeches\temp%num%.vbs
        timeout 5 /nobreak > nul
        exit