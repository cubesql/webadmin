#tag Module
Protected Module modWebStyles
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
