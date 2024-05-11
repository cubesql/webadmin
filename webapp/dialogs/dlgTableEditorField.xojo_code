#tag WebPage
Begin dlgBase dlgTableEditorField
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   Enabled         =   True
   Height          =   362
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
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   600
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebLabel labTitle
      Bold            =   True
      ControlID       =   ""
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
      Scope           =   2
      TabIndex        =   0
      TabStop         =   True
      Text            =   "Field"
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
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      HasBackgroundColor=   False
      Height          =   219
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
         PanelIndex      =   "0"
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
         PanelIndex      =   "0"
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
      Begin WebPopupMenu lstType
         ControlID       =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
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
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   -1
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
      Begin WebLabel labType
         Bold            =   False
         ControlID       =   ""
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
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Type:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   132
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebLabel labDefault
         Bold            =   False
         ControlID       =   ""
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
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Default Value:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   178
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebTextField edtDefault
         AllowAutoComplete=   False
         AllowSpellChecking=   False
         Caption         =   ""
         ControlID       =   ""
         Enabled         =   True
         FieldType       =   0
         Height          =   38
         Hint            =   ""
         Index           =   -2147483648
         Indicator       =   0
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         MaximumCharactersAllowed=   0
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         Tooltip         =   ""
         Top             =   178
         Visible         =   True
         Width           =   372
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu lstConstraint
         ControlID       =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
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
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   -1
         SelectedRowText =   ""
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   224
         Visible         =   True
         Width           =   372
         _mPanelIndex    =   -1
      End
      Begin WebLabel labConstraint
         Bold            =   False
         ControlID       =   ""
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
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Constraint:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   224
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
   End
   Begin WebButton btnSave
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Create"
      ControlID       =   ""
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
      Scope           =   2
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   304
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebButton btnCancel
      AllowAutoDisable=   False
      Cancel          =   True
      Caption         =   "Cancel"
      ControlID       =   ""
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
      Scope           =   2
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   304
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
		Private Sub RefreshButtons()
		  btnSave.Enabled = (edtName.Text.Trim <> "")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowAsAdd()
		  labTitle.Text = "Add Field"
		  btnSave.Caption = "Add"
		  Super.Show()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowAsEdit(Name As String, Type As String, Default As String, Constraint As String)
		  labTitle.Text = "Edit Field"
		  btnSave.Caption = "Edit"
		  btnSave.Indicator = Indicators.Primary
		  
		  Me.ShowAsEdit_FillValues(Name, Type, Default, Constraint)
		  
		  Me.RefreshButtons()
		  
		  Super.Show()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowAsEdit_FillValues(Name As String, Type As String, Default As String, Constraint As String)
		  #Pragma BreakOnExceptions False
		  edtName.Text = Name
		  
		  lstType.SelectedRowIndex = -1
		  Try
		    lstType.SelectRowWithTag(Type)
		  Catch InvalidArgumentException
		    lstType.AddSeparator()
		    lstType.AddRow(Type, Type)
		    lstType.SelectRowWithTag(Type)
		  End Try
		  
		  edtDefault.Text = Default
		  
		  lstConstraint.SelectedRowIndex = -1
		  Try
		    lstConstraint.SelectRowWithTag(Constraint)
		  Catch InvalidArgumentException
		    lstConstraint.AddSeparator()
		    lstConstraint.AddRow(Constraint, Constraint)
		    lstConstraint.SelectRowWithTag(Constraint)
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowAsRename(Name As String, Type As String, Default As String, Constraint As String)
		  labTitle.Text = "Rename Field"
		  btnSave.Caption = "Rename"
		  btnSave.Indicator = Indicators.Warning
		  
		  Me.ShowAsEdit_FillValues(Name, Type, Default, Constraint)
		  
		  labType.Enabled = False
		  lstType.Enabled = False
		  labDefault.Enabled = False
		  edtDefault.Enabled = False
		  labConstraint.Enabled = False
		  lstConstraint.Enabled = False
		  
		  Me.RefreshButtons()
		  
		  Super.Show()
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event FieldSaveAction(Name As String, Type As String, Default As String, Constraint As String) As Boolean
	#tag EndHook


#tag EndWindowCode

#tag Events edtName
	#tag Event
		Sub TextChanged()
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstType
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows()
		  
		  Me.AddRow("(no type)", "")
		  me.AddSeparator()
		  
		  Me.AddRow("TEXT", "TEXT")
		  Me.AddRow("INTEGER", "INTEGER")
		  Me.AddRow("REAL", "REAL")
		  Me.AddRow("BLOB", "BLOB")
		  Me.AddRow("CURRENCY", "CURRENCY")
		  Me.AddRow("BOOLEAN", "BOOLEAN")
		  Me.AddRow("DATE", "DATE")
		  Me.AddRow("TIME", "TIME")
		  Me.AddRow("TIMESTAMP", "TIMESTAMP")
		  Me.AddRow("DOUBLE", "DOUBLE")
		  Me.AddRow("FLOAT", "FLOAT")
		  Me.AddRow("SMALLINT", "SMALLINT")
		  Me.AddRow("VARCHAR", "VARCHAR")
		  Me.AddRow("BINARY", "BINARY")
		  
		  Me.SelectedRowIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  #Pragma unused item
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edtDefault
	#tag Event
		Sub TextChanged()
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstConstraint
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows()
		  
		  Me.AddRow("(no constraint)", "")
		  Me.AddSeparator()
		  
		  Me.AddRow("NOT NULL", "NOT NULL")
		  Me.AddRow("PRIMARY KEY", "PRIMARY KEY")
		  Me.AddRow("PRIMARY KEY AUTOINCREMENT", "PRIMARY KEY AUTOINCREMENT")
		  Me.AddRow("UNIQUE (single)", "UNIQUE (single)")
		  Me.AddRow("UNIQUE (multi)", "UNIQUE (multi)")
		  
		  Me.SelectedRowIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  #Pragma unused item
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSave
	#tag Event
		Sub Pressed()
		  If FieldSaveAction(edtName.Text.Trim, _
		    lstType.RowTagAt(lstType.SelectedRowIndex).StringValue, _
		    edtDefault.Text.Trim, _
		    lstConstraint.RowTagAt(lstConstraint.SelectedRowIndex)) Then
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
