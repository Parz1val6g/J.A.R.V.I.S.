@echo on
	echo name:
	set /p name=
	find
	find "username:%name%;" users.txt && (
		echo password:
		set /p pass=
		>nul find "username:%name%; password:%pass%;" users.txt && (
			echo success
		) || (
			echo failed;
		)
		pause
	) ||(
		echo user %name% was't found
		pause
	)
	echo >nul find "username:%name%;" users.txt


	set /P id=Enter id: 
	jstack %id% > jstack.txt