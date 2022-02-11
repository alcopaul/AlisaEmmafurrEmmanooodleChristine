VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "LELOZOR by alCoPaUL [GIMO][As][aBrA][NPA][b8]"
   ClientHeight    =   4425
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6270
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4425
   ScaleWidth      =   6270
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "XOR"
      Height          =   255
      Left            =   2760
      TabIndex        =   3
      Top             =   2040
      Width           =   3375
   End
   Begin VB.TextBox Text3 
      Height          =   1695
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   2
      Text            =   "Form15.frx":0000
      Top             =   2520
      Width           =   6015
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Text            =   "      (NUMBER)"
      Top             =   2040
      Width           =   2415
   End
   Begin VB.TextBox Text1 
      Height          =   1485
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "Form15.frx":000E
      Top             =   360
      Width           =   6015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
  
    
    Private Function x(sText As String, ekey As String) As String
        On Error Resume Next
        Dim i As Integer, shash As Integer, crbyte As String, g As Integer, tkey As Integer, xx As String
        tkey = CInt(ekey)
        g = Len(sText)
        xx = ""
        For i = 1 To g
            shash = Asc(Mid(sText, i, 1))
            crbyte = Chr(shash Xor (tkey Mod 256)) 'tkey = 255 max -> tkey mod 256 ->>>>
            xx = xx + crbyte
        Next i
        x = xx
    End Function

Private Sub Command1_Click()
Text3.Text = x(Text1.Text, Text2.Text)
End Sub
