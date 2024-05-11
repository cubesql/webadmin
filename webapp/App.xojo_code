#tag Class
Protected Class App
Inherits WebApplication
	#tag Event
		Sub Opening(args() As String)
		  ' Store Launch Arguments for later
		  modCubeSQLAdmin.StoreLaunchArguments(args)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(error As RuntimeException) As Boolean
		  If (error = Nil) Then Return True
		  
		  Var dialog As New dlgUnhandledException
		  dialog.Show(error)
		  
		  Return True
		  
		End Function
	#tag EndEvent


	#tag Constant, Name = constDockerTag, Type = String, Dynamic = False, Default = \"jotools/cubesql-webadmin", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
