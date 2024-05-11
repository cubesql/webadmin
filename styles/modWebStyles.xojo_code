#tag Module
Protected Module modWebStyles
	#tag Method, Flags = &h0
		Sub ShowWithActionDanger(Extends dialog As WebMessageDialog)
		  dialog.Show
		  
		  Timer.CallLater(1, AddressOf ShowWithActionDangerTimerAction, dialog)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowWithActionDangerTimerAction(dialog As Variant)
		  If (Not (dialog IsA WebMessageDialog)) Then Return
		  
		  Var javaScript() As String
		  javaScript.Add("(function() {")
		  javaScript.Add("  let button = document.getElementById('" + WebMessageDialog(dialog).ControlID + "_action');")
		  javaScript.Add("  button.classList.remove('btn-primary');")
		  javaScript.Add("  button.classList.add('btn-danger');")
		  javaScript.Add("})();")
		  
		  WebMessageDialog(dialog).ExecuteJavaScript(String.FromArray(javaScript, ""))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowWithActionWarning(Extends dialog As WebMessageDialog)
		  dialog.Show
		  
		  Timer.CallLater(1, AddressOf ShowWithActionWarningTimerAction, dialog)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowWithActionWarningTimerAction(dialog As Variant)
		  If (Not (dialog IsA WebMessageDialog)) Then Return
		  
		  Var javaScript() As String
		  javaScript.Add("(function() {")
		  javaScript.Add("  let button = document.getElementById('" + WebMessageDialog(dialog).ControlID + "_action');")
		  javaScript.Add("  button.classList.remove('btn-primary');")
		  javaScript.Add("  button.classList.add('btn-warning');")
		  javaScript.Add("})();")
		  
		  WebMessageDialog(dialog).ExecuteJavaScript(String.FromArray(javaScript, ""))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StyleListboxKeyColumn() As WebStyle
		  Var style As New WebStyle
		  style.ForegroundColor = colTextKey
		  style.Value("text-align") = "right"
		  Return style
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StyleListboxTextAlignCenter() As WebStyle
		  Var style As New WebStyle
		  style.Value("text-align") = "center"
		  return style
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StyleListboxTextAlignCenterGreen() As WebStyle
		  Var style As New WebStyle
		  style.ForegroundColor = Color.Green
		  style.Value("text-align") = "center"
		  Return style
		End Function
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
