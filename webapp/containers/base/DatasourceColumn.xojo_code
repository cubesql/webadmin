#tag Class
Protected Class DatasourceColumn
Inherits WebListBoxColumnData
	#tag Property, Flags = &h0
		FieldType As FieldTypes
	#tag EndProperty

	#tag Property, Flags = &h0
		IsHidden As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		IsSearchable As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		IsVirtual As Boolean = False
	#tag EndProperty


	#tag Enum, Name = FieldTypes, Flags = &h0
		Text = 1
		  Integer = 2
		  Boolean = 3
		SQLDateTime = 4
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Heading"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DatabaseColumnName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Sortable"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SortDirection"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="WebListbox.SortDirections"
			EditorType="Enum"
			#tag EnumValues
				"-1 - Descending"
				"0 - None"
				"1 - Ascending"
			#tag EndEnumValues
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=false
			Group="Behavior"
			InitialValue="*"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FieldType"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="FieldTypes"
			EditorType="Enum"
			#tag EnumValues
				"1 - Text"
				"2 - Integer"
				"3 - Boolean"
				"4 - SQLDateTime"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsVirtual"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsHidden"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
