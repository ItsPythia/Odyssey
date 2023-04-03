!macro customInstall
  WriteRegStr SHCTX "SOFTWARE\RegisteredApplications" "Odyssey" "Software\Clients\StartMenuInternet\Odyssey\Capabilities"

  WriteRegStr SHCTX "SOFTWARE\Classes\Odyssey" "" "Odyssey HTML Document"
  WriteRegStr SHCTX "SOFTWARE\Classes\Odyssey\Application" "AppUserModelId" "Odyssey"
  WriteRegStr SHCTX "SOFTWARE\Classes\Odyssey\Application" "ApplicationIcon" "$INSTDIR\Odyssey.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Odyssey\Application" "ApplicationName" "Odyssey"
  WriteRegStr SHCTX "SOFTWARE\Classes\Odyssey\Application" "ApplicationCompany" "Odyssey"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Odyssey\Application" "ApplicationDescription" "A privacy-focused, extensible and beautiful web browser"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Odyssey\DefaultIcon" "DefaultIcon" "$INSTDIR\Odyssey.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Odyssey\shell\open\command" "" '"$INSTDIR\Odyssey.exe" "%1"'

  WriteRegStr SHCTX "SOFTWARE\Classes\.htm\OpenWithProgIds" "Odyssey" ""
  WriteRegStr SHCTX "SOFTWARE\Classes\.html\OpenWithProgIds" "Odyssey" ""

  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Odyssey" "" "Odyssey"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Odyssey\DefaultIcon" "" "$INSTDIR\Odyssey.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Odyssey\Capabilities" "ApplicationDescription" "A privacy-focused, extensible and beautiful web browser"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Odyssey\Capabilities" "ApplicationName" "Odyssey"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Odyssey\Capabilities" "ApplicationIcon" "$INSTDIR\Odyssey.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Odyssey\Capabilities\FileAssociations" ".htm" "Odyssey"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Odyssey\Capabilities\FileAssociations" ".html" "Odyssey"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Odyssey\Capabilities\URLAssociations" "http" "Odyssey"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Odyssey\Capabilities\URLAssociations" "https" "Odyssey"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Odyssey\Capabilities\StartMenu" "StartMenuInternet" "Odyssey"
  
  WriteRegDWORD SHCTX "SOFTWARE\Clients\StartMenuInternet\Odyssey\InstallInfo" "IconsVisible" 1
  
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Odyssey\shell\open\command" "" "$INSTDIR\Odyssey.exe"
!macroend
!macro customUnInstall
  DeleteRegKey SHCTX "SOFTWARE\Classes\Odyssey"
  DeleteRegKey SHCTX "SOFTWARE\Clients\StartMenuInternet\Odyssey"
  DeleteRegValue SHCTX "SOFTWARE\RegisteredApplications" "Odyssey"
!macroend