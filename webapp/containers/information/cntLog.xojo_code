#tag WebContainerControl
Begin cntDatasourceBase cntLog
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   Enabled         =   True
   Height          =   500
   Indicator       =   0
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   ScrollDirection =   0
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   750
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebListBox lstInfos
      ColumnCount     =   1
      ColumnWidths    =   ""
      ControlID       =   ""
      Enabled         =   True
      HasHeader       =   True
      Height          =   422
      HighlightSortedColumn=   True
      Index           =   -2147483648
      Indicator       =   0
      InitialValue    =   ""
      LastAddedRowIndex=   0
      LastColumnIndex =   0
      LastRowIndex    =   0
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      NoRowsMessage   =   "No Log entries"
      ProcessingMessage=   ""
      RowCount        =   0
      RowSelectionType=   0
      Scope           =   2
      SearchCriteria  =   ""
      SelectedRowColor=   colWebListBoxSelectedRow
      SelectedRowIndex=   0
      TabIndex        =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Visible         =   True
      Width           =   750
      _mPanelIndex    =   -1
   End
   Begin WebButton btnRefresh
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Refresh"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   630
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
      Top             =   442
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebLabel labLogNumberOfEntries
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      Multiline       =   False
      Scope           =   2
      TabIndex        =   1
      TabStop         =   True
      Text            =   "Number of Log entries:"
      TextAlignment   =   0
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   442
      Underline       =   False
      Visible         =   True
      Width           =   197
      _mPanelIndex    =   -1
   End
   Begin WebTextField edtLogNumberOfEntries
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   ""
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   3
      Height          =   38
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   225
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   2
      TabStop         =   True
      Text            =   "#constLogEntriesDefault"
      TextAlignment   =   3
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   120
      _mPanelIndex    =   -1
   End
   Begin WebTimer timRefresh
      ControlID       =   ""
      Enabled         =   False
      Index           =   -2147483648
      Location        =   0
      LockedInPosition=   True
      Period          =   1
      RunMode         =   0
      Scope           =   2
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Opening()
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  
		  Me.Area = "Information"
		  Me.Title = "Log"
		  Me.Table = lstInfos
		  Me.SearchAvailable = True
		  
		  
		  Var sessionState As String = Session.State.Lookup("LogNumberOfEntries", "50").StringValue
		  If (sessionState <> "") And (sessionState.ToInteger > 0) Then
		    edtLogNumberOfEntries.Text = sessionState
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  btnRefresh.Enabled = (edtLogNumberOfEntries.Text.ToInteger > 0)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshLog(pbImmediately As Boolean)
		  'if already running, stop
		  timRefresh.RunMode = WebTimer.RunModes.Off
		  timRefresh.Enabled = False
		  
		  timRefresh.Period = If(pbImmediately, 1, 800)
		  timRefresh.RunMode = WebTimer.RunModes.Single
		  timRefresh.Enabled = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableInitColumns()
		  Super.TableInitColumns()
		  
		  Var col As DatasourceColumn
		  
		  col = New DatasourceColumn()
		  col.Width = "15%"
		  col.DatabaseColumnName = "datetime"
		  col.Heading = "Date"
		  col.FieldType = DatasourceColumn.FieldTypes.SQLDateTime
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.Descending
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "10%"
		  col.DatabaseColumnName = "operation"
		  col.Heading = "Operation"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = False
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "25%"
		  col.DatabaseColumnName = "description"
		  col.Heading = "Description"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = False
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "15%"
		  col.DatabaseColumnName = "address"
		  col.Heading = "Address"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = False
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "17%"
		  col.DatabaseColumnName = "username"
		  col.Heading = "Username"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = False
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "18%"
		  col.DatabaseColumnName = "database"
		  col.Heading = "Database"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = False
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableLoadRowSet() As RowSet
		  Var numLogEntries As Integer = edtLogNumberOfEntries.Text.ToInteger
		  If (numLogEntries < 1) Then
		    Return Nil
		  End If
		  
		  Session.State.Value("LogNumberOfEntries") = edtLogNumberOfEntries.Text
		  
		  Return Session.DB.SelectSQL("SHOW LAST " + numLogEntries.ToString + " ROWS FROM LOG ORDER DESC")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableNoRowsMessage() As String
		  Var infoNrOfEntries As String
		  Var numLogEntries As Integer = edtLogNumberOfEntries.Text.ToInteger
		  If (numLogEntries > 0) Then
		    infoNrOfEntries = " (last " + numLogEntries.ToString + ")"
		  End If
		  
		  Var sInfo As String = "No Log entries" + infoNrOfEntries
		  
		  If (Me.SearchValue <> "") Then
		    sInfo = sInfo + " matching '" + Me.SearchValue + "'"
		  End If
		  
		  Return sInfo
		  
		End Function
	#tag EndMethod


	#tag Constant, Name = constLogEntriesDefault, Type = String, Dynamic = False, Default = \"50", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events btnRefresh
	#tag Event
		Sub Pressed()
		  Self.RefreshLog(True)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edtLogNumberOfEntries
	#tag Event
		Sub TextChanged()
		  If (Not ebOpened) Then Return
		  
		  Self.RefreshLog(False)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub FocusLost()
		  If (Not ebOpened) Then Return
		  
		  If (edtLogNumberOfEntries.Text.ToInteger < 1) Then
		    Me.Text = constLogEntriesDefault
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events timRefresh
	#tag Event
		Sub Run()
		  Me.RunMode = WebTimer.RunModes.Off
		  Me.Enabled = False
		  
		  Self.TableLoad()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Area"
		Visible=false
		Group="Behavior"
		InitialValue="Home"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="SearchAvailable"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
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
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
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
		Name="LockBottom"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
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
		Name="ScrollDirection"
		Visible=true
		Group="Behavior"
		InitialValue="ScrollDirections.None"
		Type="WebContainer.ScrollDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - None"
			"1 - Horizontal"
			"2 - Vertical"
			"3 - Both"
		#tag EndEnumValues
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
		Name="LayoutType"
		Visible=true
		Group="View"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutDirection"
		Visible=true
		Group="View"
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
	#tag ViewProperty
		Name="Title"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
