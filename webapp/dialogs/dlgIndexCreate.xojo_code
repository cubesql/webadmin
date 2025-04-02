#tag WebPage
Begin dlgBase dlgIndexCreate
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   CSSClasses      =   ""
   Enabled         =   True
   Height          =   600
   Index           =   -2147483648
   Indicator       =   0
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   LockVertical    =   False
   PanelIndex      =   0
   Position        =   0
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   600
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mName          =   ""
   _mPanelIndex    =   -1
   Begin WebLabel labTitle
      Bold            =   True
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   24.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   0
      TabStop         =   True
      Text            =   "Create Index"
      TextAlignment   =   2
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   560
      _mPanelIndex    =   -1
   End
   Begin WebRectangle rctFormContent
      BackgroundColor =   &cFFFFFF
      BorderColor     =   &c000000FF
      BorderThickness =   1
      ControlCount    =   0
      ControlID       =   ""
      CornerSize      =   -1
      CSSClasses      =   ""
      Enabled         =   True
      HasBackgroundColor=   False
      Height          =   457
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   66
      Visible         =   True
      Width           =   560
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
      Begin WebLabel labName
         Bold            =   False
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "rctFormContent"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   0
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Name:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   86
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebTextField edtName
         AllowAutoComplete=   False
         AllowSpellChecking=   False
         Caption         =   ""
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FieldType       =   0
         Height          =   38
         Hint            =   ""
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "rctFormContent"
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         MaximumCharactersAllowed=   0
         PanelIndex      =   0
         Parent          =   "rctFormContent"
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         Tooltip         =   ""
         Top             =   86
         Visible         =   True
         Width           =   372
         _mPanelIndex    =   -1
      End
      Begin WebLabel labTable
         Bold            =   False
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "rctFormContent"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   0
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Table:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   132
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu lstTable
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "rctFormContent"
         InitialValue    =   ""
         LastAddedRowIndex=   0
         LastRowIndex    =   0
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   0
         Parent          =   "rctFormContent"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   0
         SelectedRowText =   ""
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   132
         Visible         =   True
         Width           =   372
         _mPanelIndex    =   -1
      End
      Begin WebListBox lstFields
         ColumnCount     =   2
         ColumnWidths    =   "25, *"
         ControlID       =   ""
         CSSClasses      =   ""
         DefaultRowHeight=   49
         Enabled         =   True
         GridLineStyle   =   3
         HasBorder       =   True
         HasHeader       =   False
         HeaderHeight    =   0
         Height          =   325
         HighlightSortedColumn=   True
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   ""
         LastAddedRowIndex=   0
         LastColumnIndex =   0
         LastRowIndex    =   0
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         NoRowsMessage   =   "No Fields"
         PanelIndex      =   0
         Parent          =   "rctFormContent"
         ProcessingMessage=   ""
         RowCount        =   0
         RowSelectionType=   0
         Scope           =   0
         SearchCriteria  =   ""
         SelectedRowColor=   colWebListBoxSelectedRow
         SelectedRowIndex=   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   178
         Visible         =   True
         Width           =   372
         _mPanelIndex    =   -1
      End
      Begin WebLabel labFields
         Bold            =   False
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   0
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Fields:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   178
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
   End
   Begin WebButton btnCreate
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Create"
      ControlID       =   ""
      CSSClasses      =   ""
      Default         =   True
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   480
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Outlined        =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   542
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebButton btnCancel
      AllowAutoDisable=   False
      Cancel          =   True
      Caption         =   "Cancel"
      ControlID       =   ""
      CSSClasses      =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Left            =   372
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Outlined        =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   542
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Shown()
		  edtName.SetFocus()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function GetFields() As String()
		  Var fields() As String
		  
		  Var dictRowTag As Dictionary
		  Var addField As String
		  Var isChecked As Boolean
		  For i As Integer = 0 To lstFields.LastRowIndex
		    Var rowTag As Variant = lstFields.RowTagAt(i)
		    If (rowTag IsA Dictionary) Then
		      dictRowTag = Dictionary(rowTag)
		      addField = dictRowTag.Lookup("name", "")
		      isChecked = dictRowTag.Lookup("checked", False)
		      
		      If (isChecked And (addField <> "")) Then
		        fields.Add(addField)
		      End If
		    End If
		  Next
		  
		  Return fields
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetTablename() As String
		  If (lstTable.SelectedRowIndex >= 0) Then Return lstTable.RowTagAt(lstTable.SelectedRowIndex)
		  Return ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Load(PreSelectTablename As String = "")
		  Try
		    Session.DB.ExecuteSQL("USE DATABASE '" + esDatabasename.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    
		  Finally
		    
		    Me.LoadTables(PreSelectTablename)
		    Me.LoadFields()
		    
		    Me.RefreshButtons()
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadFields()
		  lstFields.RemoveAllRows
		  
		  Var tablename As String = Me.GetTablename()
		  If (tablename = "") Then Return
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("PRAGMA table_info('" + tablename.EscapeSqlQuotes + "')")
		    If (rs <> Nil) Then
		      If (rs.RowCount > 0) Then
		        rs.MoveToFirstRow
		        While (Not rs.AfterLastRow)
		          lstFields.AddRow("", rs.Column("name").StringValue, rs.Column("name").StringValue)
		          lstFields.CellCustomContentAt(lstFields.LastAddedRowIndex, 0) = New CheckboxCellRenderer(False)
		          
		          Var rowTag As Dictionary = New Dictionary
		          rowTag.Value("name") = rs.Column("name").StringValue
		          rowTag.Value("checked") = False
		          lstFields.RowTagAt(lstFields.LastAddedRowIndex) = rowTag
		          
		          rs.MoveToNextRow
		        Wend
		      End If
		      
		      rs.Close
		    End If
		    
		  Catch err As DatabaseException
		    
		  Finally
		    lstFields.SelectedRowIndex = -1
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadTables(PreSelectTablename As String = "")
		  lstTable.RemoveAllRows
		  
		  Var iPreSelectIndex As Integer = 0
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW TABLES")
		    If (rs <> Nil) Then
		      If (rs.RowCount > 0) Then
		        rs.MoveToFirstRow
		        While (Not rs.AfterLastRow)
		          lstTable.AddRow(rs.Column("tablename").StringValue, rs.Column("tablename").StringValue)
		          
		          If (PreSelectTablename <> "") And (PreSelectTablename = rs.Column("tablename").StringValue) Then
		            iPreSelectIndex = lstTable.LastAddedRowIndex
		          End If
		          
		          rs.MoveToNextRow
		        Wend
		      End If
		      
		      rs.Close
		    End If
		    
		  Catch err As DatabaseException
		    
		  Finally
		    If (lstTable.LastRowIndex >= 0) Then lstTable.SelectedRowIndex = iPreSelectIndex
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  btnCreate.Enabled = (edtName.Text.Trim <> "") And (Me.GetTablename() <> "") And (Me.GetFields().LastIndex >= 0)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Show(Databasename As String, PreSelectTablename As String)
		  esDatabasename = Databasename
		  
		  Me.Load(PreSelectTablename)
		  
		  Super.Show()
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event IndexCreateAction(Name As String, Table As String, Fields() As String) As Boolean
	#tag EndHook


	#tag Property, Flags = &h21
		Private esDatabasename As String
	#tag EndProperty


#tag EndWindowCode

#tag Events edtName
	#tag Event
		Sub TextChanged()
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstTable
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  #Pragma unused item
		  
		  If (Not ebShown) Then Return
		  
		  Self.LoadFields()
		  Self.RefreshButtons()
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstFields
	#tag Event
		Sub CustomCellAction(row As Integer, column As Integer, identifier As String, value As Variant)
		  #Pragma unused column
		  #Pragma unused identifier
		  
		  If (Not ebShown) Then Return
		  
		  Var rowTag As Dictionary
		  If (row <= Me.LastRowIndex) Then rowTag = Me.RowTagAt(row)
		  
		  If (rowTag = Nil) Then Return
		  
		  rowTag.Value("checked") = value.BooleanValue
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCreate
	#tag Event
		Sub Pressed()
		  If IndexCreateAction(edtName.Text.Trim, Self.GetTablename().Trim, Self.GetFields()) Then
		    Self.Close()
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Pressed()
		  Self.Close()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="PanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Position"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="WebDialog.Positions"
		EditorType="Enum"
		#tag EnumValues
			"0 - Top"
			"1 - Center"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mPanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=false
		Group="ID"
		InitialValue="-2147483648"
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
	#tag ViewProperty
		Name="ControlID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutType"
		Visible=true
		Group="Behavior"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignHeight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignWidth"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Visual Controls"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Indicator"
		Visible=false
		Group="Visual Controls"
		InitialValue=""
		Type="WebUIControl.Indicators"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Primary"
			"2 - Secondary"
			"3 - Success"
			"4 - Danger"
			"5 - Warning"
			"6 - Info"
			"7 - Light"
			"8 - Dark"
			"9 - Link"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutDirection"
		Visible=true
		Group="WebView"
		InitialValue="LayoutDirections.LeftToRight"
		Type="LayoutDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - LeftToRight"
			"1 - RightToLeft"
			"2 - TopToBottom"
			"3 - BottomToTop"
		#tag EndEnumValues
	#tag EndViewProperty
#tag EndViewBehavior
