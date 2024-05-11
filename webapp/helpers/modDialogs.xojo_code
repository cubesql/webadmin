#tag Module
Protected Module modDialogs
	#tag Method, Flags = &h0
		Sub ShowErrorDialog(dialog As WebMessageDialog, Title As String, Message As String, Error As DatabaseException)
		  Var errorExplanation As String = "Error" + If(Error.ErrorNumber > 0, " " + Error.ErrorNumber.ToString, "") + ": " + Error.Message
		  ShowErrorDialog(dialog, Title, Message, errorExplanation)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowErrorDialog(dialog As WebMessageDialog, Title As String, Message As String, Explanation As String)
		  ShowWebMessageDialog(dialog, Title, Message, Explanation, WebMessageDialog.Indicators.Danger)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowInfoDialog(dialog As WebMessageDialog, Title As String, Message As String, Explanation As String)
		  ShowWebMessageDialog(dialog, Title, Message, Explanation, WebMessageDialog.Indicators.Info)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowSuccessDialog(dialog As WebMessageDialog, Title As String, Message As String, Explanation As String)
		  ShowWebMessageDialog(dialog, Title, Message, Explanation, WebMessageDialog.Indicators.Success)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowWarningDialog(dialog As WebMessageDialog, Title As String, Message As String, Explanation As String)
		  ShowWebMessageDialog(dialog, Title, Message, Explanation, WebMessageDialog.Indicators.Warning)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowWebMessageDialog(dialog As WebMessageDialog, Title As String, Message As String, Explanation As String, Indicator As WebUIControl.Indicators)
		  // Note: Instantiating a new WebMessageDialog in a Module results
		  //       in a Memory Leak...
		  // Var dialog As New WebMessageDialog
		  
		  // Workaround: Place a WebMessageDialog on the Layout
		  dialog.Title = Title
		  dialog.Indicator = Indicator
		  dialog.ActionButton.Caption = "OK"
		  dialog.CancelButton.Visible = False
		  dialog.Message = Message
		  dialog.Explanation = Explanation
		  dialog.Show
		  
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
