Set sh = CreateObject("Wscript.Shell")
Set fs = CreateObject("Scripting.FileSystemObject")
Dim args
Dim path

If Wscript.Arguments.Count = 0 Then
	path = fs.GetAbsolutePathName("")
Else
	path = Wscript.Arguments(0)
End If

args = """" & path & "\devcon.exe"" install """ & path & "\..\ViGEmBus.inf"" Nefarius\ViGEmBus\Gen1"
sh.Run args, 0, true
