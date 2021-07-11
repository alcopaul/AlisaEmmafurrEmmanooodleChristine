Attribute VB_Name = "Module1"
Option Explicit
Sub Main()
On Error GoTo Hell
Dim MontrealVeracruz As VbMsgBoxResult
Err.Raise 2
SendKeys "KaifengSaintPetersburg", 6
Hell:
MontrealVeracruz = MsgBox("""Welcome To Hell!""", vbCritical, "Satan and Salpsan say")
End Sub
