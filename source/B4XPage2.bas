B4J=true
Group=Pages
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
Sub Class_Globals
	Private Root As B4XView
	Private xui As XUI
End Sub

Public Sub Initialize As Object
	Return Me
End Sub

Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("Page2")
	B4XPages.SetTitle(Me, "Page 2")
End Sub

Private Sub BtnClose_Click
	B4XPages.ClosePage(Me)
	B4XPages.ShowPage("MainPage")
End Sub