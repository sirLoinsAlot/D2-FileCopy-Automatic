If WScript.Arguments.length = 0 Then

    Set objShell = CreateObject("Shell.Application")
    objShell.ShellExecute "wscript.exe", Chr(34) & _
        WScript.ScriptFullName & Chr(34) & " bogusArg", "", "runas", 1
Else
    Set objFSO = CreateObject("Scripting.FileSystemObject")

    basedir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
    filename = "\FilePath.txt"
    scriptdir = basedir + filename

    Set f = objFSO.OpenTextFile(scriptdir)
    folderPath = f.ReadLine
    f.Close

    Set WshSU = CreateObject("Shell.Application") 
    WshSU.ShellExecute folderPath + "\D2-FileCopy.Startup.bat", , , "runas", 0
    Set WshSU = Nothing

    Set WshSD = CreateObject("Shell.Application") 
    WshSD.ShellExecute folderPath + "\D2-FileCopy.Shutdown.bat", , , "runas", 0
    Set WshSD = Nothing
End If
