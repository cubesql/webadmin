#tag WebContainerControl
Begin cntDatasourceBase cntTablesIndexes
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
      Height          =   342
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
      NoRowsMessage   =   "No Tables & Indexes"
      ProcessingMessage=   ""
      RowCount        =   0
      RowSelectionType=   1
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
   Begin WebRectangle rctFilter
      BackgroundColor =   &cFFFFFF
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      HasBackgroundColor=   False
      Height          =   75
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   "0"
      Scope           =   2
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   350
      Visible         =   True
      Width           =   750
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
      Begin WebLabel labFilter
         Bold            =   True
         ControlID       =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   "0"
         Parent          =   "rctFilter"
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   -1
         TabStop         =   True
         Text            =   "View"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   370
         Underline       =   False
         Visible         =   True
         Width           =   60
         _mPanelIndex    =   -1
      End
      Begin WebLabel labFilterDatabase
         Bold            =   False
         ControlID       =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         Italic          =   False
         Left            =   151
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   "0"
         Parent          =   "rctFilter"
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   -1
         TabStop         =   True
         Text            =   "Database:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   370
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu lstFilterDatabase
         ControlID       =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   ""
         LastAddedRowIndex=   0
         LastRowIndex    =   0
         Left            =   299
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFilter"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   0
         SelectedRowText =   ""
         TabIndex        =   2
         TabPanelIndex   =   -1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   370
         Visible         =   True
         Width           =   400
         _mPanelIndex    =   -1
      End
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
      PanelIndex      =   "0"
      Scope           =   2
      TabIndex        =   5
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
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Message         =   ""
      PanelIndex      =   "0"
      Scope           =   2
      Title           =   ""
      Tooltip         =   ""
      _mPanelIndex    =   -1
   End
   Begin WebButton btnCreateTable
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Create Table"
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
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   120
      _mPanelIndex    =   -1
   End
   Begin WebButton btnCreateIndex
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Create Index"
      ControlID       =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Left            =   148
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   "0"
      Scope           =   2
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   120
      _mPanelIndex    =   -1
   End
   Begin WebButton btnAlterTable
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Alter Table"
      ControlID       =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Left            =   502
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
      Width           =   120
      _mPanelIndex    =   -1
   End
   Begin WebMessageDialog dlgMessage
      ControlID       =   ""
      Enabled         =   True
      Explanation     =   ""
      Index           =   -2147483648
      Indicator       =   ""
      LockBottom      =   False
      LockedInPosition=   True
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
		Sub Closed()
		  Try
		    Session.DB.ExecuteSQL("CLEAR CURRENT DATABASE")
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub ActionAlterTable()
		  Var selectedItem As Dictionary = Me.GetSelectedTableRowTag()
		  If (selectedItem = Nil) Then Return
		  If (selectedItem.Lookup("type", "").StringValue <> "table") Then Return
		  If (selectedItem.Lookup("name", "").StringValue = "") Then Return
		  
		  Var dlgTable As New dlgTableEditor
		  AddHandler dlgTable.TableEditorSaveAction, WeakAddressOf ActionAlterTableButtonPressed
		  dlgTable.ShowAsAlter(selectedItem.Lookup("name", "").StringValue)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionAlterTableButtonPressed(obj As dlgTableEditor, Name As String, SQLStatements() As String) As Boolean
		  #Pragma unused obj
		  
		  If (Name = "") Then Return False
		  If (SQLStatements.LastIndex < 0) Then Return False
		  
		  Try
		    
		    For i As Integer = 0 To SQLStatements.LastIndex
		      Session.DB.ExecuteSQL(SQLStatements(i))
		    Next
		    
		    Session.DB.ExecuteSQL("COMMIT")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Alter Table", "Could not alter table.", err)
		    Return False
		    
		  End Try
		  
		  'Success - no dialog
		  Var selectRowTag As New Dictionary
		  selectRowTag.Value("type") = "table"
		  selectRowTag.Value("name") = Name
		  
		  Me.RefreshInfos(selectRowTag)
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionCreateIndex()
		  Var databasename As String = Me.GetSelectedDatabasename()
		  If (databasename = "") Then Return
		  
		  Var selectedTablename As String
		  Var rowTag As Dictionary = Me.GetSelectedTableRowTag()
		  If (rowTag <> Nil) And (rowTag.Lookup("type", "").StringValue = "table") Then
		    selectedTablename = rowTag.Lookup("name", "").StringValue
		  End If
		  
		  Var dlgIndex As New dlgIndexCreate
		  AddHandler dlgIndex.IndexCreateAction, WeakAddressOf ActionCreateIndexButtonPressed
		  dlgIndex.Show(databasename, selectedTablename)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionCreateIndexButtonPressed(obj As dlgIndexCreate, Name As String, Table As String, Fields() As String) As Boolean
		  #Pragma unused obj
		  
		  If (Name = "") Or (Table = "") Then Return False
		  If (Fields.LastIndex < 0) Then Return False
		  
		  Try
		    Var escapedFields() As String
		    For i As Integer = 0 To Fields.LastIndex
		      escapedFields.Add(Fields(i).EscapeSqlFieldIfRequired)
		    Next
		    
		    Session.DB.ExecuteSQL("CREATE INDEX " + Name.EscapeSqlFieldIfRequired + " ON " + Table.EscapeSqlFieldIfRequired + " (" + String.FromArray(escapedFields, ", ") + ")")
		    Session.DB.ExecuteSQL("COMMIT")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Create Index", "Could not create index.", err)
		    Return False
		    
		  End Try
		  
		  'Success - no dialog
		  Var selectRowTag As New Dictionary
		  selectRowTag.Value("type") = "index"
		  selectRowTag.Value("name") = Name
		  
		  Me.RefreshInfos(selectRowTag)
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionCreateTable()
		  Var dlgTable As New dlgTableEditor
		  AddHandler dlgTable.TableEditorSaveAction, WeakAddressOf ActionCreateTableButtonPressed
		  dlgTable.ShowAsCreate()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionCreateTableButtonPressed(obj As dlgTableEditor, Name As String, SQLStatements() As String) As Boolean
		  #Pragma unused obj
		  
		  If (Name = "") Then Return False
		  If (SQLStatements.LastIndex < 0) Then Return False
		  
		  Try
		    
		    For i As Integer = 0 To SQLStatements.LastIndex
		      Session.DB.ExecuteSQL(SQLStatements(i))
		    Next
		    
		    Session.DB.ExecuteSQL("COMMIT")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Create Table", "Could not create table.", err)
		    Return False
		    
		  End Try
		  
		  'Success - no dialog
		  Var selectRowTag As New Dictionary
		  selectRowTag.Value("type") = "table"
		  selectRowTag.Value("name") = Name
		  
		  Me.RefreshInfos(selectRowTag)
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDrop()
		  Var item As Dictionary = Me.GetSelectedTableRowTag()
		  If (item = Nil) Then Return
		  
		  dlgDrop.Title = "Drop " + item.Lookup("type", "").StringValue.Titlecase
		  dlgDrop.Indicator = Indicators.Danger
		  dlgDrop.ActionButton.Caption = "Drop"
		  dlgDrop.CancelButton.Visible = True
		  dlgDrop.Message = "Are you sure you want to drop " + item.Lookup("type", "").StringValue + " '" + item.Lookup("name", "").StringValue + "'?"
		  dlgDrop.Explanation = "This action cannot be undone."
		  
		  edictActionItem = item
		  
		  dlgDrop.ShowWithActionDanger()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDropButtonPressed(obj As WebMessageDialog, button As WebMessageDialogButton)
		  Var dictDropItem As Dictionary = edictActionItem
		  edictActionItem = Nil
		  
		  If (button <> obj.ActionButton) Then Return
		  If (dictDropItem = Nil) Then Return
		  
		  Try
		    Session.DB.ExecuteSQL("DROP " + dictDropItem.Lookup("type", "").StringValue.Uppercase + " IF EXISTS " + dictDropItem.Lookup("name", "").StringValue.EscapeSqlFieldIfRequired)
		    Session.DB.ExecuteSQL("COMMIT")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Drop " + dictDropItem.Lookup("type", "").StringValue.Titlecase, "Could not drop " + dictDropItem.Lookup("type", "").StringValue.Lowercase + ".", err)
		    
		  Finally
		    Me.RefreshInfos()
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  
		  Me.Area = "Data"
		  Me.Title = "Tables & Indexes"
		  Me.Table = lstInfos
		  Me.SearchAvailable = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSelectedDatabasename() As String
		  If (lstFilterDatabase.SelectedRowIndex < 0) Then Return ""
		  Return lstFilterDatabase.RowTagAt(lstFilterDatabase.SelectedRowIndex)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Load()
		  Me.LoadRegistrationStatus()
		  Me.LoadDatabases()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadDatabases()
		  lstFilterDatabase.RemoveAllRows
		  
		  Var databases() As String = cntDatabases.GetDatabasesList(False)
		  
		  Var iPreselectIndex As Integer = 0
		  Var sessionStateDatabasename As String = Session.State.Lookup("databasename", "").StringValue
		  
		  For Each databasename As String In databases
		    lstFilterDatabase.AddRow(databasename, databasename)
		    
		    If (sessionStateDatabasename <> "") And (sessionStateDatabasename = databasename) Then
		      iPreselectIndex = lstFilterDatabase.LastAddedRowIndex
		    End If
		  Next
		  
		  If (lstFilterDatabase.RowCount > 0) Then lstFilterDatabase.SelectedRowIndex = iPreselectIndex
		  Session.State.Value("databasename") = Me.GetSelectedDatabasename()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadRegistrationStatus()
		  ebServerIsRegistered = True
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW INFO")
		    If (rs = Nil) Then
		      ebServerIsRegistered = False
		      Return
		    End If
		    
		    Var infos As New Dictionary
		    For Each row As DatabaseRow In rs
		      infos.Value(row.ColumnAt(0).StringValue) = row.ColumnAt(1).StringValue
		    Next
		    
		    rs.Close
		    
		    Var serverLicenseIsNotRegistered As Boolean = infos.Lookup("server_license", "").StringValue.Contains("NOT REGISTERED", ComparisonOptions.CaseInsensitive)
		    Var isNotRegistered As Boolean = infos.Lookup("registered", "").StringValue.Contains("NOT REGISTERED", ComparisonOptions.CaseInsensitive)
		    
		    If serverLicenseIsNotRegistered Or isNotRegistered Then
		      ebServerIsRegistered = False
		    End If
		    
		  Catch DatabaseException
		    ebServerIsRegistered = False
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  Var bCreateTable, bAlterTable, bCreateIndex, bDrop As Boolean
		  
		  Var selectedDatabasename As String = Me.GetSelectedDatabasename()
		  Var selectedItem As Dictionary = Me.GetSelectedTableRowTag()
		  
		  If (selectedDatabasename <> "") Then
		    bCreateTable = ebServerIsRegistered
		    bCreateIndex = ebServerIsRegistered
		  End If
		  
		  If (selectedItem <> Nil) And (selectedItem.Lookup("type", "").StringValue = "table") And (selectedItem.Lookup("name", "").StringValue <> "") Then
		    bAlterTable = ebServerIsRegistered
		  End If
		  
		  If (selectedItem <> Nil) And (selectedItem.Lookup("type", "").StringValue <> "") And (selectedItem.Lookup("name", "").StringValue <> "") Then
		    bDrop = ebServerIsRegistered
		  End If
		  
		  If (btnCreateTable.Enabled <> bCreateTable) Then btnCreateTable.Enabled = bCreateTable
		  If (btnCreateIndex.Enabled <> bCreateIndex) Then btnCreateIndex.Enabled = bCreateIndex
		  If (btnAlterTable.Enabled <> bAlterTable) Then btnAlterTable.Enabled = bAlterTable
		  If (btnDrop.Enabled <> bDrop) Then btnDrop.Enabled = bDrop
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshInfos(selectRowTag As Dictionary = nil)
		  If (selectRowTag = Nil) Then
		    selectRowTag = Me.GetSelectedTableRowTag()
		  End If
		  
		  edictSelectAfterReload = selectRowTag
		  
		  Me.TableLoad()
		  
		  'Select Row async via TableRowDataLoaded
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableInitColumns()
		  Super.TableInitColumns()
		  
		  Var col As DatasourceColumn
		  
		  col = New DatasourceColumn()
		  col.Width = "15%"
		  col.DatabaseColumnName = "type"
		  col.Heading = "Type"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.Descending
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "20%"
		  col.DatabaseColumnName = "name"
		  col.Heading = "Name"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "64%" '-1% seems to prevent horizontal scrollbars
		  col.DatabaseColumnName = "sql"
		  col.Heading = "SQL"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = False
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableLoadRowSet() As RowSet
		  Var filterDatabasename As String = Me.GetSelectedDatabasename()
		  
		  
		  Try
		    If (filterDatabasename <> "") Then
		      Session.DB.ExecuteSQL("USE DATABASE '" + filterDatabasename.EscapeSqlQuotes + "'")
		    Else
		      Session.DB.ExecuteSQL("CLEAR CURRENT DATABASE")
		    End If
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		  If (filterDatabasename <> "") Then
		    If ebServerIsRegistered Then
		      Return Session.DB.SelectSQL("SELECT type, name, sql FROM sqlite_master WHERE (type='table' OR type='index') AND (name NOT LIKE 'sqlite_%') AND (name NOT LIKE 'cubesql_temp_%') ORDER BY type DESC, name")
		    End If
		  End If
		  
		  Return Nil
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableNoRowsMessage() As String
		  If (Not ebServerIsRegistered) Then
		    Return "Tables & Indexes is not available." + EndOfLine + _
		    "cubeSQL Server Registration is required."
		  End If
		  
		  Var sInfo As String = "No Tables & Indexes"
		  
		  Var filterDatabasename As String = Me.GetSelectedDatabasename()
		  If (filterDatabasename <> "") Then
		    sInfo = sInfo + " for Database " + filterDatabasename
		  End If
		  
		  If (Me.SearchValue <> "") Then
		    sInfo = sInfo + " matching '" + Me.SearchValue + "'"
		  End If
		  
		  Return sInfo
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableRowColumnData(col As DatasourceColumn, row As Dictionary) As Variant
		  Select Case col.DatabaseColumnName
		    
		  Case "type"
		    Return row.Lookup(col.DatabaseColumnName, "").StringValue.Titlecase
		    
		  Case "sql"
		    Return New CopyContentCellRenderer(row.Lookup(col.DatabaseColumnName, "").StringValue)
		    
		  Else
		    Return Super.TableRowColumnData(col, row)
		    
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableRowDataLoaded()
		  Super.TableRowDataLoaded()
		  
		  If (edictSelectAfterReload = Nil) Then
		    Me.RefreshButtons()
		    Return
		  End If
		  
		  Var sSelectAfterReload As Dictionary = edictSelectAfterReload
		  edictSelectAfterReload = Nil
		  
		  Var bFound As Boolean = False
		  For i As Integer = Me.Table.LastRowIndex DownTo 0
		    Var rowTag As Dictionary = Me.Table.RowTagAt(i)
		    If (rowTag IsA Dictionary) Then
		      If (rowTag.Lookup("type", "").StringValue = sSelectAfterReload.Lookup("type", "-").StringValue) And _
		        (rowTag.Lookup("name", "").StringValue = sSelectAfterReload.Lookup("name", "-").StringValue) Then
		        
		        Me.Table.SelectedRowIndex = i
		        bFound = True
		        Exit 'Loop
		      End If
		    End If
		  Next
		  
		  If (Not bFound) Then Me.Table.SelectedRowIndex = -1
		  
		  Me.RefreshButtons()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private ebServerIsRegistered As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private edictActionItem As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private edictSelectAfterReload As Dictionary
	#tag EndProperty


#tag EndWindowCode

#tag Events lstInfos
	#tag Event
		Sub SelectionChanged(rows() As Integer)
		  #Pragma unused rows
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstFilterDatabase
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  #Pragma unused item
		  
		  If (Not ebOpened) Then Return
		  
		  Session.State.Value("databasename") = Self.GetSelectedDatabasename()
		  
		  Self.TableLoad()
		  
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
#tag Events dlgDrop
	#tag Event
		Sub ButtonPressed(button As WebMessageDialogButton)
		  Self.ActionDropButtonPressed(Me, button)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCreateTable
	#tag Event
		Sub Pressed()
		  Self.ActionCreateTable()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCreateIndex
	#tag Event
		Sub Pressed()
		  Self.ActionCreateIndex()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnAlterTable
	#tag Event
		Sub Pressed()
		  Self.ActionAlterTable()
		  
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
