B4J=true
Group=Pages
ModulesStructureVersion=1
Type=Class
Version=10
@EndOfDesignText@
Sub Class_Globals
	Private Root As B4XView 'ignore
	Private xui As XUI 'ignore
End Sub

Public Sub Initialize As Object
	Return Me
End Sub

Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("NewPage")
	B4XPages.SetTitle(Me, "New Title")
End Sub

Private Sub BtnClose_Click
	B4XPages.ClosePage(Me)
	B4XPages.ShowPage("MainPage")
End Sub