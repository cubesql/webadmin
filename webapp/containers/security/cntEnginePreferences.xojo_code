#tag WebContainerControl
Begin cntDatasourceBase cntEnginePreferences
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
      Height          =   292
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
      NoRowsMessage   =   "No Engine Preferences"
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
      TabIndex        =   4
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebButton btnSet
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Set"
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
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebRectangle rctFilter
      BackgroundColor =   &cFFFFFF
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      HasBackgroundColor=   False
      Height          =   125
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
      Scope           =   2
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   300
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
         InitialParent   =   "rctFilter"
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
         Parent          =   "rctFilter"
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Filter"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   320
         Underline       =   False
         Visible         =   True
         Width           =   60
         _mPanelIndex    =   -1
      End
      Begin WebLabel labFilterGroup
         Bold            =   False
         ControlID       =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "rctFilter"
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
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Group:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   320
         Underline       =   False
         Visible         =   True
         Width           =   140
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
         InitialParent   =   "rctFilter"
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
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Database:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   366
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu lstFilterGroup
         ControlID       =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "rctFilter"
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
         Parent          =   "rctFilter"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   0
         SelectedRowText =   ""
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   320
         Visible         =   True
         Width           =   400
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu lstFilterDatabase
         ControlID       =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "rctFilter"
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
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   366
         Visible         =   True
         Width           =   400
         _mPanelIndex    =   -1
      End
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
      Scope           =   2
      Title           =   ""
      Tooltip         =   ""
      _mPanelIndex    =   -1
   End
   Begin WebButton btnEdit
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Edit"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   2
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
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   100
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
	#tag Method, Flags = &h21
		Private Sub ActionDrop()
		  Var enginePreference As Dictionary = Me.GetSelectedTableRowTag()
		  If (enginePreference = Nil) Then Return
		  
		  Var prefEngine As String = enginePreference.Lookup("engine", "")
		  Var prefGroup As String = enginePreference.Lookup("groupname", "")
		  Var prefDb As String = enginePreference.Lookup("databasename", "")
		  Var prefKey As String = enginePreference.Lookup("key", "")
		  
		  Var enginePreferenceParts() As String
		  enginePreferenceParts.Add("Engine: " + prefEngine)
		  enginePreferenceParts.Add("Group: " + prefGroup)
		  enginePreferenceParts.Add("Database: " + prefDb)
		  enginePreferenceParts.Add("Key: " + prefKey)
		  
		  dlgDrop.Title = "Drop Engine Preference"
		  dlgDrop.Indicator = Indicators.Danger
		  dlgDrop.ActionButton.Caption = "Drop"
		  dlgDrop.CancelButton.Visible = True
		  dlgDrop.Message = "Are you sure you want to drop the Engine Preference '" + String.FromArray(enginePreferenceParts, ", ")+ "'?"
		  dlgDrop.Explanation = "This action cannot be undone."
		  
		  edictActionEnginePreference = enginePreference
		  
		  dlgDrop.ShowWithActionDanger()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDropButtonPressed(obj As WebMessageDialog, button As WebMessageDialogButton)
		  Var dictDropEnginePreference As Dictionary = edictActionEnginePreference
		  edictActionEnginePreference = Nil
		  
		  If (button <> obj.ActionButton) Then Return
		  If (dictDropEnginePreference = Nil) Then Return
		  
		  Try
		    Var prefEngine As String = dictDropEnginePreference.Lookup("engine", "")
		    Var prefGroup As String = dictDropEnginePreference.Lookup("groupname", "")
		    Var prefDb As String = dictDropEnginePreference.Lookup("databasename", "")
		    Var prefKey As String = dictDropEnginePreference.Lookup("key", "")
		    
		    Var sql As String = "DROP ENGINE PREFERENCE '" + prefEngine.EscapeSqlQuotes + "' FOR '" + prefDB.EscapeSqlQuotes + "' GROUP '" + prefGroup.EscapeSqlQuotes + "' KEY '" + prefKey.EscapeSqlQuotes + "'"
		    
		    Session.DB.ExecuteSQL(sql)
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Drop Engine Preference", "Could not drop engine preference.", err)
		    
		  Finally
		    Me.RefreshInfos()
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionEdit()
		  Var enginePreference As Dictionary = Me.GetSelectedTableRowTag()
		  If (enginePreference = Nil) Then Return
		  
		  Var prefEngine As String = enginePreference.Lookup("engine", "")
		  Var prefGroup As String = enginePreference.Lookup("groupname", "")
		  Var prefDb As String = enginePreference.Lookup("databasename", "")
		  Var prefKey As String = enginePreference.Lookup("key", "")
		  Var prefValue As String = enginePreference.Lookup("value", "")
		  
		  If (prefEngine = "") Or (prefGroup = "") Or (prefDb = "") Or (prefKey = "") Then Return
		  
		  Var dlgSet As New dlgEnginePreferenceSet
		  AddHandler dlgSet.EnginePreferenceSetAction, WeakAddressOf ActionSetButtonPressed
		  dlgSet.ShowForEditing(prefEngine, prefDb, prefGroup, prefKey, prefValue)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionSet()
		  Var dlgSet As New dlgEnginePreferenceSet
		  AddHandler dlgSet.EnginePreferenceSetAction, WeakAddressOf ActionSetButtonPressed
		  dlgSet.Show(lstFilterDatabase.SelectedRowText, lstFilterGroup.SelectedRowText)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionSetButtonPressed(obj As dlgEnginePreferenceSet, Engine As String, Database As String, Group As String, Key As String, Value As String) As Boolean
		  #Pragma unused obj
		  
		  If (Engine = "") Then Return False
		  If (Database = "") Then Return False
		  If (Group = "") Then Return False
		  If (Key = "") Then Return False
		  If (Value = "") Then Return False
		  
		  Try
		    
		    Var sql As String = "SET ENGINE PREFERENCE '" + Engine.EscapeSqlQuotes + "' FOR '" + Database.EscapeSqlQuotes + "' GROUP '" + Group.EscapeSqlQuotes + "' KEY '" + Key.EscapeSqlQuotes + "' VALUE '" + Value.EscapeSqlQuotes + "'"
		    
		    Session.DB.ExecuteSQL(sql)
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Set Engine Preference", "Could not set engine preference.", err)
		    Return False
		    
		  End Try
		  
		  
		  Var filterGroupname As String = lstFilterGroup.RowTagAt(lstFilterGroup.SelectedRowIndex)
		  If (filterGroupname <> "") Then
		    ebOpened = False
		    lstFilterGroup.SelectRowWithTag(Group)
		    ebOpened = True
		  End If
		  Var filterDatabasename As String = lstFilterDatabase.RowTagAt(lstFilterDatabase.SelectedRowIndex)
		  If (filterDatabasename <> "") Then
		    ebOpened = False
		    #Pragma BreakOnExceptions False
		    Try
		      lstFilterDatabase.SelectRowWithTag(Database)
		    Catch err As RuntimeException
		      'engine db is not in list yet
		      Me.LoadDatabases()
		      Try
		        lstFilterDatabase.SelectRowWithTag(Database)
		      Catch err2 As RuntimeException
		      End Try
		    End Try
		    ebOpened = True
		  End If
		  
		  
		  'Success - no dialog
		  Var selectRowTag As New Dictionary
		  selectRowTag.Value("engine") = Engine
		  selectRowTag.Value("groupname") = Group
		  selectRowTag.Value("databasename") = Database
		  selectRowTag.Value("key") = Key
		  
		  Me.RefreshInfos(selectRowTag)
		  Return True
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  
		  Me.Area = "Security"
		  Me.Title = "Engine Preferences"
		  Me.Table = lstInfos
		  Me.SearchAvailable = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Load()
		  Super.Load()
		  
		  Me.LoadGroups()
		  Me.LoadDatabases()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadDatabases()
		  lstFilterDatabase.RemoveAllRows
		  lstFilterDatabase.AddRow("(ALL)", "")
		  lstFilterDatabase.AddSeparator()
		  
		  Var existingDatabases() As String
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW ENGINE PREFERENCES")
		    If (rs <> Nil) Then
		      
		      If (rs.RowCount > 0) Then
		        Var currentValue As String
		        rs.MoveToFirstRow
		        While (Not rs.AfterLastRow)
		          currentValue = rs.Column("databasename").StringValue
		          If (currentValue <> "") And (existingDatabases.IndexOf(currentValue) < 0) Then existingDatabases.Add(currentValue)
		          
		          rs.MoveToNextRow
		        Wend
		      End If
		      
		      rs.Close
		    End If
		    
		  Catch DatabaseException
		    
		  Finally
		    existingDatabases.Sort()
		    
		    For Each addDatabase As String In existingDatabases
		      lstFilterDatabase.AddRow(addDatabase, addDatabase)
		    Next
		    lstFilterDatabase.SelectedRowIndex = 0
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadGroups()
		  lstFilterGroup.RemoveAllRows
		  lstFilterGroup.AddRow("(ALL)", "")
		  lstFilterGroup.AddSeparator()
		  
		  Var iPreselectIndex As Integer = 0
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW GROUPS")
		    If (rs = Nil) Then Return
		    
		    Var sessionStateGroupname As String = Session.State.Lookup("groupname", "").StringValue
		    
		    If (rs.RowCount > 0) Then
		      rs.MoveToFirstRow
		      While (Not rs.AfterLastRow)
		        
		        lstFilterGroup.AddRow(rs.Column("groupname").StringValue, rs.Column("groupname").StringValue)
		        
		        If (sessionStateGroupname <> "") And (sessionStateGroupname = rs.Column("groupname").StringValue) Then
		          iPreselectIndex = lstFilterGroup.LastAddedRowIndex
		        End If
		        
		        rs.MoveToNextRow
		      Wend
		    End If
		    
		    rs.Close
		    
		  Catch DatabaseException
		    
		  Finally
		    lstFilterGroup.SelectedRowIndex = iPreselectIndex
		    Session.State.Value("groupname") = lstFilterGroup.RowTagAt(lstFilterGroup.SelectedRowIndex)
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  Var bSet, bEdit, bDrop As Boolean
		  
		  Var selectedEnginePreference As Dictionary = Me.GetSelectedTableRowTag()
		  
		  bSet = True
		  If (selectedEnginePreference <> Nil) Then
		    bEdit = True
		    bDrop = True
		  End If
		  
		  If (btnSet.Enabled <> bSet) Then btnSet.Enabled = bSet
		  If (btnEdit.Enabled <> bEdit) Then btnEdit.Enabled = bEdit
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
		  col.DatabaseColumnName = "engine"
		  col.Heading = "Engine"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.Ascending
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "18%"
		  col.DatabaseColumnName = "databasename"
		  col.Heading = "Database"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "18%"
		  col.DatabaseColumnName = "groupname"
		  col.Heading = "Group"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "15%"
		  col.DatabaseColumnName = "key"
		  col.Heading = "Key"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "33%" '-1% seems to prevent horizontal scrollbars
		  col.DatabaseColumnName = "value"
		  col.Heading = "Value"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableLoadFilters()
		  Super.TableLoadFilters()
		  
		  Var filterGroupname As String = lstFilterGroup.RowTagAt(lstFilterGroup.SelectedRowIndex)
		  Var filterDatabasename As String = lstFilterDatabase.RowTagAt(lstFilterDatabase.SelectedRowIndex)
		  
		  If (filterGroupname <> "") Then
		    Me.Filters.Value("groupname") = filterGroupname
		  End If
		  
		  If (filterDatabasename <> "") Then
		    Me.Filters.Value("databasename") = filterDatabasename
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableLoadRowSet() As RowSet
		  Return Session.DB.SelectSQL("SHOW ENGINE PREFERENCES")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableNoRowsMessage() As String
		  Var sInfo As String = "No Engine Preferences"
		  
		  Var filterGroupname As String = lstFilterGroup.RowTagAt(lstFilterGroup.SelectedRowIndex)
		  Var filterDatabasename As String = lstFilterDatabase.RowTagAt(lstFilterDatabase.SelectedRowIndex)
		  If (filterGroupname <> "") Or (filterDatabasename <> "") Then
		    Var sFilterParts() As String
		    If (filterGroupname <> "") Then sFilterParts.Add("Group " + filterGroupname)
		    If (filterDatabasename <> "") Then sFilterParts.Add("Database " + filterDatabasename)
		    sInfo = sInfo + " with Filter " + String.FromArray(sFilterParts, " and ")
		  End If
		  
		  If (Me.SearchValue <> "") Then
		    sInfo = sInfo + " matching '" + Me.SearchValue + "'"
		  End If
		  
		  Return sInfo
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableRowDataLoaded()
		  super.TableRowDataLoaded()
		  
		  If (edictSelectAfterReload = Nil) Then
		    Me.RefreshButtons()
		    Return
		  End If
		  
		  Var sSelectAfterReload As Dictionary = edictSelectAfterReload
		  edictSelectAfterReload = Nil
		  
		  Var bFound As Boolean = False
		  For i As Integer = Me.TableRows.LastIndex DownTo 0
		    Var tableRow As Dictionary = Me.TableRows(i)
		    If(tableRow.Lookup("engine", "").StringValue = sSelectAfterReload.Lookup("engine", "-").StringValue) And _ 
		      (tableRow.Lookup("groupname", "").StringValue = sSelectAfterReload.Lookup("groupname", "-").StringValue) And _
		      (tableRow.Lookup("databasename", "").StringValue = sSelectAfterReload.Lookup("databasename", "-").StringValue) And _
		      (tableRow.Lookup("key", "").StringValue = sSelectAfterReload.Lookup("key", "-").StringValue) Then
		      
		      Me.Table.SelectedRowIndex = i
		      bFound = True
		      Exit 'Loop
		    End If
		  Next
		  
		  If (Not bFound) Then Me.Table.SelectedRowIndex = -1
		  
		  Me.RefreshButtons()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private edictActionEnginePreference As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private edictSelectAfterReload As Dictionary
	#tag EndProperty


#tag EndWindowCode

#tag Events lstInfos
	#tag Event
		Sub SelectionChanged(rows() As Integer)
		  #Pragma unused rows
		  
		  If (Not ebOpened) Then Return
		  
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
#tag Events btnSet
	#tag Event
		Sub Pressed()
		  Self.ActionSet()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstFilterGroup
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  #Pragma unused item
		  
		  If (Not ebOpened) Then Return
		  
		  Session.State.Value("groupname") = Me.RowTagAt(Me.SelectedRowIndex)
		  
		  Self.RefreshInfos()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstFilterDatabase
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  #Pragma unused item
		  
		  If (Not ebOpened) Then Return
		  
		  Self.RefreshInfos()
		  
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
#tag Events btnEdit
	#tag Event
		Sub Pressed()
		  Self.ActionEdit()
		  
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
