Set objShell = CreateObject("Wscript.Shell")  
Set args = Wscript.Arguments  
For Each arg In args  
    Dim PSRun
    PSRun = "powershell.exe -WindowStyle hidden -ExecutionPolicy bypass -NonInteractive -File """ & arg & """"
    objShell.Run(PSRun),0
Next  