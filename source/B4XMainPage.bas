B4A=true
Group=Pages
ModulesStructureVersion=1
Type=Class
Version=9.85
@EndOfDesignText@
#Region Shared Files
'#CustomBuildAction: folders ready, %WINDIR%\System32\Robocopy.exe,"..\..\Shared Files" "..\Files"
'Ctrl + click to sync files: ide://run?file=%WINDIR%\System32\Robocopy.exe&args=..\..\Shared+Files&args=..\Files&FilesSync=True
#End Region

'Ctrl + click to export as zip: ide://run?File=%B4X%\Zipper.jar&Args=%PROJECT_NAME%.zip

Sub Class_Globals
	Private Root As B4XView
	Private xui As XUI
	Public PageA As Page2
	Public PageB As Page2
End Sub

Public Sub Initialize
	B4XPages.GetManager.LogEvents = True
End Sub

Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("MainPage")
	B4XPages.SetTitle(Me, "Main Title")
	B4XPages.AddPage("A", PageA.Initialize)
	B4XPages.AddPage("B", PageB.Initialize)
End Sub

Private Sub BtnNewPage_Click
'	B4XPages.ShowPage("Page 2")
End Sub

Private Sub BtnShowPage2A_Click
	B4XPages.ShowPage("A")
End Sub

Private Sub BtnShowPage2B_Click
	B4XPages.ShowPage("B")
End Sub