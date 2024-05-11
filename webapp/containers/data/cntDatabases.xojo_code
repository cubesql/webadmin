#tag WebContainerControl
Begin cntDatasourceBase cntDatabases
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
      NoRowsMessage   =   "No Databases"
      ProcessingMessage=   ""
      RowCount        =   0
      RowSelectionType=   1
      Scope           =   2
      SearchCriteria  =   ""
      SelectedRowColor=   &c0d6efd
      SelectedRowIndex=   0
      TabIndex        =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Visible         =   True
      Width           =   750
      _mPanelIndex    =   -1
   End
   Begin WebButton btnDrop
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Drop"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   4
      Left            =   630
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   5
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebButton btnStop
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Stop"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   5
      Left            =   522
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   "0"
      Scope           =   2
      TabIndex        =   4
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebButton btnCreate
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Create"
      ControlID       =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   "0"
      Scope           =   2
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebButton btnStart
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Start"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   3
      Left            =   414
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   "0"
      Scope           =   2
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebButton btnRename
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Rename"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   2
      Left            =   306
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   "0"
      Scope           =   2
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebMessageDialog dlgDrop
      ControlID       =   ""
      Enabled         =   True
      Explanation     =   ""
      Index           =   -2147483648
      Indicator       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Message         =   ""
      Scope           =   2
      Title           =   ""
      Tooltip         =   ""
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Opening()
		  Self.ShowInfos()
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub ActionCreate()
		  Var dlgCreate As New dlgDatabaseCreate
		  AddHandler dlgCreate.DatabaseCreateAction, WeakAddressOf ActionCreateButtonPressed
		  dlgCreate.Show()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionCreateButtonPressed(obj As dlgDatabaseCreate, Name As String, Key As String, Encoding As String) As Boolean
		  #Pragma unused obj
		  
		  If (Name = "") Then Return False
		  
		  Try
		    
		    Var sqlCreateDb As String = "CREATE DATABASE '" + Name.EscapeSqlQuotes + "'"
		    If (Key <> "") Then sqlCreateDb = sqlCreateDb + " WITH KEY '" + Key.EscapeSqlQuotes + "'"
		    If (Encoding <> "UTF-8") Then sqlCreateDb = sqlCreateDb + " WITH ENCODING " + Encoding
		    
		    Session.DB.ExecuteSQL(sqlCreateDb)
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Create Database"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not create database."
		    dialog.Explanation = "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message
		    dialog.Show
		    Return False
		    
		  End Try
		  
		  'Success - no dialog
		  Self.RefreshInfos(Name)
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDrop()
		  Var databasename As String = Me.GetSelectedDatabasename()
		  If (databasename = "") Then Return
		  
		  
		  dlgDrop.Title = "Drop Database"
		  dlgDrop.Indicator = Indicators.Danger
		  dlgDrop.ActionButton.Caption = "Drop"
		  dlgDrop.CancelButton.Visible = True
		  dlgDrop.Message = "Are you sure you want to drop database '" + databasename + "'?"
		  dlgDrop.Explanation = "This action cannot be undone."
		  
		  esActionDatabasename = databasename
		  
		  dlgDrop.ShowWithActionDanger()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDropButtonPressed(obj As WebMessageDialog, button As WebMessageDialogButton)
		  Var sDropDatabasename As String = esActionDatabasename
		  esActionDatabasename = ""
		  
		  If (button <> obj.ActionButton) Then Return
		  If (sDropDatabasename = "") Then Return
		  
		  Try
		    Session.DB.ExecuteSQL("DROP DATABASE '" + sDropDatabasename.EscapeSqlQuotes + "' IF EXISTS")
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Drop Database"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not drop database."
		    dialog.Explanation = "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message
		    dialog.Show
		    
		  Finally
		    Me.RefreshInfos()
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionRename()
		  Var databasename As String = Me.GetSelectedDatabasename()
		  If (databasename = "") Then Return
		  
		  esActionDatabasename = databasename
		  
		  Var dlgRename As New dlgCommonName
		  AddHandler dlgRename.NameAction, WeakAddressOf ActionRenameButtonPressed
		  dlgRename.Show("Rename Database", "Name", "Rename", Indicators.Primary, databasename)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionRenameButtonPressed(obj As dlgCommonName, Name As String) As Boolean
		  #Pragma unused obj
		  
		  If (esActionDatabasename = "") Then Return False
		  If (Name = "") Then Return False
		  If (esActionDatabasename = Name) Then Return False
		  
		  Try
		    
		    Session.DB.ExecuteSQL("RENAME DATABASE '" + esActionDatabasename.EscapeSqlQuotes + "' TO '" + Name.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Rename Database"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not rename database."
		    dialog.Explanation = "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message
		    dialog.Show
		    Return False
		    
		  End Try
		  
		  'Success - no dialog
		  Self.RefreshInfos(Name)
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionStart()
		  Var databasename As String = Me.GetSelectedDatabasename()
		  If (databasename = "") Then Return
		  
		  Try
		    Session.DB.ExecuteSQL("START DATABASE '" + databasename.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Start database"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not start database."
		    dialog.Explanation = "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message
		    dialog.Show
		    
		  Finally
		    Me.RefreshInfos()
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionStop()
		  Var databasename As String = Me.GetSelectedDatabasename()
		  If (databasename = "") Then Return
		  
		  Try
		    Session.DB.ExecuteSQL("STOP DATABASE '" + databasename.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Stop database"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not stop database."
		    dialog.Explanation = "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message
		    dialog.Show
		    
		  Finally
		    Me.RefreshInfos()
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  
		  Me.Area = "Data"
		  Me.Title = "Databases"
		  Me.SearchAvailable = True
		  
		  
		  Redim Me.Columns(-1)
		  
		  Var col As DatasourceColumn
		  
		  col = New DatasourceColumn()
		  col.Width = "10%"
		  col.DatabaseColumnName = "status"
		  col.Heading = "Status"
		  col.IsVirtual = True
		  col.IsSearchable = False
		  col.FieldType = DatasourceColumn.FieldTypes.Integer
		  col.Sortable = False
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "0%"
		  col.DatabaseColumnName = "stopped"
		  col.Heading = "Stopped"
		  col.IsHidden = True
		  col.IsSearchable = False
		  col.FieldType = DatasourceColumn.FieldTypes.Boolean
		  col.Sortable = False
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "0%"
		  col.DatabaseColumnName = "available"
		  col.Heading = "Available"
		  col.IsHidden = True
		  col.IsSearchable = False
		  col.FieldType = DatasourceColumn.FieldTypes.Boolean
		  col.Sortable = False
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "*"
		  col.DatabaseColumnName = "databasename"
		  col.Heading = "Databasename"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.Ascending
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "10%"
		  col.DatabaseColumnName = "encrypted"
		  col.Heading = "Encrypted"
		  col.IsSearchable = False
		  col.FieldType = DatasourceColumn.FieldTypes.Boolean
		  col.Sortable = False
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "10%"
		  col.DatabaseColumnName = "locked"
		  col.Heading = "Locked"
		  col.IsSearchable = False
		  col.FieldType = DatasourceColumn.FieldTypes.Integer
		  col.Sortable = False
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "20%"
		  col.DatabaseColumnName = "lockowner"
		  col.Heading = "Lock Owner"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = False
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetColumnData(col As DatasourceColumn, row As Dictionary) As Variant
		  Select Case col.DatabaseColumnName
		    
		  Case "status"
		    Var icon As WebPicture
		    If row.Lookup("stopped", False).BooleanValue Then
		      icon = WebPicture.BootstrapIcon("stop-circle-fill", Color.Orange)
		    Else
		      If  row.Lookup("available", True).BooleanValue Then
		        icon = WebPicture.BootstrapIcon("check-circle-fill", Color.Green)
		      Else
		        icon = WebPicture.BootstrapIcon("exclamation-circle-fill", Color.Red)
		      End If
		    End If
		    
		    Return New WebListboxImageRenderer(icon.URL, True)
		    
		  Case "locked"
		    Return New WebListBoxStyleRenderer(StyleListboxTextAlignCenter(), If(row.Lookup(col.DatabaseColumnName, 0).IntegerValue > 0, "yes", "no"))
		    
		  Case "encrypted"
		    If row.Lookup(col.DatabaseColumnName, 0).BooleanValue Then
		      Return New WebListBoxStyleRenderer(StyleListboxTextAlignCenterGreen(), "yes")
		    Else
		      Return New WebListBoxStyleRenderer(StyleListboxTextAlignCenter(), "no")
		    End If
		    
		  Else
		    Return Super.GetColumnData(col, row)
		    
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSelectedDatabasename() As String
		  If (lstInfos.SelectedRowIndex < 0) Then Return ""
		  
		  Var selectedRowTag As Variant = lstInfos.RowTagAt(lstInfos.SelectedRowIndex)
		  If (selectedRowTag IsA Dictionary) Then
		    Return Dictionary(selectedRowTag).Lookup("databasename", "").StringValue
		  End If
		  
		  Return ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  Var bRename, bStart, bStop, bDrop As Boolean
		  
		  If (lstInfos.SelectedRowIndex >= 0) And (lstInfos.RowTagAt(lstInfos.SelectedRowIndex) IsA Dictionary) Then
		    Var dbRowTag As Dictionary = lstInfos.RowTagAt(lstInfos.SelectedRowIndex)
		    
		    bRename = True
		    bStart = dbRowTag.Lookup("stopped", False) = True
		    bStop = (Not bStart)
		    bDrop = True
		    
		  End If
		  
		  If (btnRename.Enabled <> bRename) Then btnRename.Enabled = bRename
		  If (btnStart.Enabled <> bStart) Then btnStart.Enabled = bStart
		  If (btnStop.Enabled <> bStop) Then btnStop.Enabled = bStop
		  If (btnDrop.Enabled <> bDrop) Then btnDrop.Enabled = bDrop
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshInfos(selectDatabasename As String = "")
		  If (selectDatabasename = "") Then
		    selectDatabasename = Me.GetSelectedDatabasename()
		  End If
		  
		  esSelectAfterReload = selectDatabasename
		  
		  Me.ShowInfos()
		  
		  'Select Row async via WebTimer_RowDataLoaded
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Search(SearchValue As String)
		  Super.Search(SearchValue)
		  
		  Me.ShowInfos()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowInfos()
		  Me.UpdateNoRowsMessage()
		  
		  Me.LoadDatasource(Session.DB.SelectSQL("SHOW DATABASES WITH DETAILS"))
		  
		  If (lstInfos.DataSource = Nil) Then
		    lstInfos.DataSource = Self
		  Else
		    lstInfos.ReloadData()
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateNoRowsMessage()
		  Var sInfo As String = "No Databases"
		  
		  If (Me.SearchValue <> "") Then
		    sInfo = sInfo + " matching '" + Me.SearchValue + "'"
		  End If
		  
		  lstInfos.NoRowsMessage = sInfo
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub WebTimer_RowDataLoaded(obj As WebTimer)
		  Super.WebTimer_RowDataLoaded(obj)
		  
		  If (esSelectAfterReload = "") Then
		    Me.RefreshButtons()
		    Return
		  End If
		  
		  Var sSelectAfterReload As String = esSelectAfterReload
		  esSelectAfterReload = ""
		  
		  Var bFound As Boolean = False
		  For i As Integer = lstInfos.LastRowIndex DownTo 0
		    If (lstInfos.RowTagAt(i) IsA Dictionary) Then
		      Var rowTag As Dictionary = lstInfos.RowTagAt(i)
		      If (rowTag.Lookup("databasename", "").StringValue <> sSelectAfterReload) Then Continue
		      lstInfos.SelectedRowIndex = i
		      bFound = True
		      Exit 'Loop
		    End If
		  Next
		  
		  If (Not bFound) Then lstInfos.SelectedRowIndex = -1
		  
		  Me.RefreshButtons()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private esActionDatabasename As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esSelectAfterReload As String
	#tag EndProperty


#tag EndWindowCode

#tag Events lstInfos
	#tag Event
		Sub Opening()
		  Me.ExecuteJavaScript("$('#" + Me.ControlID + "').addClass('listboxDbHeaderAlignment')")
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(rows() As Integer)
		  #Pragma unused rows
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDrop
	#tag Event
		Sub Pressed()
		  Self.ActionDrop()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnStop
	#tag Event
		Sub Pressed()
		  Self.ActionStop()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCreate
	#tag Event
		Sub Pressed()
		  Self.ActionCreate()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnStart
	#tag Event
		Sub Pressed()
		  Self.ActionStart()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRename
	#tag Event
		Sub Pressed()
		  Self.ActionRename()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events dlgDrop
	#tag Event
		Sub ButtonPressed(button As WebMessageDialogButton)
		  Self.ActionDropButtonPressed(Me, button)
		  
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
