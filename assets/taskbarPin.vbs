If WScript.Arguments.Count < 1 Then WScript.Quit
'----------------------------------------------------------------------
Set objFSO = CreateObject("Scripting.FileSystemObject")
objFile    = WScript.Arguments.Item(0)
sKey1      = "HKCU\Software\Classes\*\shell\{:}\\"
sKey2      = Replace(sKey1, "\\", "\ExplorerCommandHandler")
'----------------------------------------------------------------------
With WScript.CreateObject("WScript.Shell")
    KeyValue = .RegRead("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" & _
        "\CommandStore\shell\Windows.taskbarpin\ExplorerCommandHandler")

    .RegWrite sKey2, KeyValue, "REG_SZ"

    With WScript.CreateObject("Shell.Application")
        With .Namespace(objFSO.GetParentFolderName(objFile))
            With .ParseName(objFSO.GetFileName(objFile))
                .InvokeVerb("{:}")
            End With
        End With
    End With

    .Run("Reg.exe delete """ & Replace(sKey1, "\\", "") & """ /F"), 0, True
End With
'----------------------------------------------------------------------