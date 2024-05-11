#tag WebContainerControl
Begin cntDatasourceBase cntSchedules
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
   Width           =   850
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
      NoRowsMessage   =   "No Schedules"
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
      Width           =   850
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
      Width           =   850
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
         Text            =   "Filter"
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
      Begin WebButton btnDatabaseSchedules
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Schedules"
         ControlID       =   ""
         Default         =   False
         Enabled         =   False
         Height          =   38
         Index           =   -2147483648
         Indicator       =   6
         Left            =   710
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFilter"
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   370
         Visible         =   False
         Width           =   120
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
      Left            =   710
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   "0"
      Scope           =   2
      TabIndex        =   6
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   120
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
      Left            =   582
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
      Width           =   120
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
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   100
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
      Left            =   454
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
   Begin WebButton btnScheduleDatabases
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Attach/Detach Databases"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   6
      Left            =   206
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   "0"
      Parent          =   "nil"
      Scope           =   2
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   240
      _mPanelIndex    =   -1
   End
   Begin WebThread thrDetails
      DebugIdentifier =   ""
      Index           =   -2147483648
      LockedInPosition=   True
      Priority        =   5
      Scope           =   2
      StackSize       =   0
      ThreadID        =   0
      ThreadState     =   0
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
		Private Sub ActionCreate()
		  Var dlgCreate As New dlgSchedule
		  AddHandler dlgCreate.SaveScheduleAction, WeakAddressOf ActionCreateButtonPressed
		  dlgCreate.Show()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionCreateButtonPressed(obj As dlgSchedule, dictSchedule As Dictionary) As Boolean
		  #Pragma unused obj
		  
		  If (dictSchedule = Nil) Or (dictSchedule.Lookup("schedname", "").StringValue.Trim = "") Then Return False
		  
		  Try
		    Var sqlCreateSchedule As String =  "CREATE SCHEDULE '" + dictSchedule.Lookup("schedname", "").StringValue.EscapeSqlQuotes + "'" + _
		    " DAYS '" + dictSchedule.Lookup("scheddays", "").StringValue.EscapeSqlQuotes  + "'" + _
		    " HOURS '" + dictSchedule.Lookup("schedhours", "").StringValue.EscapeSqlQuotes + "'" + _
		    " MINUTES '" + dictSchedule.Lookup("schedminutes", "").StringValue.EscapeSqlQuotes + "'" + _
		    " WEEKS '" + dictSchedule.Lookup("schedweeks", "").StringValue.EscapeSqlQuotes + "'" + _
		    " TYPE '" + dictSchedule.Lookup("schedtype", "").StringValue.EscapeSqlQuotes + "'" + _
		    " WITH OPTIONS '" + dictSchedule.Lookup("schedoptions", "").StringValue.EscapeSqlQuotes + "'" + _
		    " ENABLED '" + dictSchedule.Lookup("schedenabled", "").StringValue.EscapeSqlQuotes  + "'"
		    
		    Session.DB.ExecuteSQL(sqlCreateSchedule)
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Create Schedule", "Could not create schedule.", err)
		    Return False
		    
		  End Try
		  
		  'Success - no dialog
		  Me.RefreshInfos(dictSchedule.Lookup("schedname", "").StringValue)
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDatabaseSchedules()
		  Var databasename As String = Me.GetSelectedDatabasename()
		  If (databasename = "") Then Return
		  
		  Var schedule As String = Me.GetSelectedSchedule()
		  esActionSchedule = schedule
		  
		  Var dlgSchedules As New dlgDatabaseSchedules
		  AddHandler dlgSchedules.NeedsRefresh, WeakAddressOf ActionDatabaseSchedulesButtonPressed
		  dlgSchedules.Show(databasename)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDatabaseSchedulesButtonPressed(obj As dlgDatabaseSchedules)
		  #Pragma unused obj
		  
		  Me.RefreshInfos(esActionSchedule)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDrop()
		  Var schedule As String = Me.GetSelectedSchedule()
		  If (schedule = "") Then Return
		  
		  dlgDrop.Title = "Drop Schedule"
		  dlgDrop.Indicator = Indicators.Danger
		  dlgDrop.ActionButton.Caption = "Drop"
		  dlgDrop.CancelButton.Visible = True
		  dlgDrop.Message = "Are you sure you want to drop schedule '" + schedule + "'?"
		  dlgDrop.Explanation = "This action cannot be undone."
		  
		  esActionschedule = schedule
		  
		  dlgDrop.ShowWithActionDanger()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDropButtonPressed(obj As WebMessageDialog, button As WebMessageDialogButton)
		  Var sDropSchedule As String = esActionSchedule
		  esActionSchedule = ""
		  
		  If (button <> obj.ActionButton) Then Return
		  If (sDropSchedule = "") Then Return
		  
		  Try
		    Session.DB.ExecuteSQL("DROP SCHEDULE '" + sDropSchedule.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Drop Schedule", "Could not drop schedule.", err)
		    
		  Finally
		    Me.RefreshInfos()
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionEdit()
		  Var schedule As String = Me.GetSelectedSchedule()
		  If (schedule = "") Then Return
		  
		  esActionSchedule = schedule
		  
		  Var dlgEdit As New dlgSchedule
		  AddHandler dlgEdit.SaveScheduleAction, WeakAddressOf ActionEditButtonPressed
		  dlgEdit.ShowAsEdit(schedule)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionEditButtonPressed(obj As dlgSchedule, dictSchedule As Dictionary) As Boolean
		  #Pragma unused obj
		  
		  If (dictSchedule = Nil) Or (dictSchedule.Lookup("schedname", "").StringValue = "") Then Return False
		  If (esActionSchedule <> dictSchedule.Lookup("schedname", "").StringValue) Then Return False
		  
		  Try
		    Var sqlCreateSchedule As String =  "RESET SCHEDULE '" + esActionSchedule.EscapeSqlQuotes + "' AS" + _
		    " DAYS='" + dictSchedule.Lookup("scheddays", "").StringValue.EscapeSqlQuotes  + "'," + _
		    " HOURS='" + dictSchedule.Lookup("schedhours", "").StringValue.EscapeSqlQuotes + "'," + _
		    " MINUTES='" + dictSchedule.Lookup("schedminutes", "").StringValue.EscapeSqlQuotes + "'," + _
		    " WEEKS='" + dictSchedule.Lookup("schedweeks", "").StringValue.EscapeSqlQuotes + "'," + _
		    " TYPE='" + dictSchedule.Lookup("schedtype", "").StringValue.EscapeSqlQuotes + "'," + _
		    " OPTIONS='" + dictSchedule.Lookup("schedoptions", "").StringValue.EscapeSqlQuotes + "'," + _
		    " ENABLED='" + dictSchedule.Lookup("schedenabled", "").StringValue.EscapeSqlQuotes  + "'"
		    
		    Session.DB.ExecuteSQL(sqlCreateSchedule)
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Create Schedule", "Could not create schedule.", err)
		    Return False
		    
		  End Try
		  
		  'Success - no dialog
		  Me.RefreshInfos(dictSchedule.Lookup("schedname", "").StringValue)
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionRename()
		  Var schedule As String = Me.GetSelectedSchedule()
		  If (schedule = "") Then Return
		  
		  esActionSchedule = schedule
		  
		  Var dlgRename As New dlgCommonName
		  AddHandler dlgRename.NameAction, WeakAddressOf ActionRenameButtonPressed
		  dlgRename.Show("Rename Schedule", "Name", "Rename", Indicators.Primary, schedule)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionRenameButtonPressed(obj As dlgCommonName, Name As String) As Boolean
		  #Pragma unused obj
		  
		  If (esActionSchedule = "") Then Return False
		  If (Name = "") Then Return False
		  If (esActionSchedule = Name) Then Return False
		  
		  Try
		    
		    Session.DB.ExecuteSQL("RENAME SCHEDULE '" + esActionSchedule.EscapeSqlQuotes + "' TO '" + Name.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Rename Schedule", "Could not rename schedule.", err)
		    Return False
		    
		  End Try
		  
		  'Success - no dialog
		  Me.RefreshInfos(Name)
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionScheduleDatabases()
		  Var schedule As String = Me.GetSelectedSchedule()
		  If (schedule = "") Then Return
		  
		  esActionSchedule = schedule
		  
		  Var dlgDatabases As New dlgScheduleDatabases
		  AddHandler dlgDatabases.NeedsRefresh, WeakAddressOf ActionScheduleDatabasesButtonPressed
		  dlgDatabases.Show(schedule)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionScheduleDatabasesButtonPressed(obj As dlgScheduleDatabases)
		  #Pragma unused obj
		  
		  Me.RefreshInfos(esActionSchedule)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  
		  Me.Area = "Data"
		  Me.Title = "Schedules"
		  Me.Table = lstInfos
		  Me.SearchAvailable = True
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW SCHEDULES")
		    ebShowDetails = (rs <> Nil) And (rs.RowCount <= 10)
		    
		  Catch err As DatabaseException
		    ebShowDetails = False
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GetSchedulesAvailable() As Boolean
		  Var bSchedulesAvailable As Boolean = False
		  
		  Try
		    
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW SCHEDULES")
		    If (rs <> Nil) Then
		      bSchedulesAvailable = (rs.RowCount > 0)
		      
		      rs.Close
		    End If
		    
		    
		  Catch DatabaseException
		    bSchedulesAvailable = False
		    
		  Finally
		    Return bSchedulesAvailable
		    
		  End Try
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSelectedDatabasename() As String
		  If (lstFilterDatabase.SelectedRowIndex < 0) Then Return ""
		  Return lstFilterDatabase.RowTagAt(lstFilterDatabase.SelectedRowIndex)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSelectedSchedule() As String
		  Var selectedRowTag As Variant = Me.GetSelectedTableRowTag()
		  If (selectedRowTag IsA Dictionary) Then
		    Return Dictionary(selectedRowTag).Lookup("schedname", "").StringValue
		  End If
		  
		  Return ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Load()
		  Me.LoadDatabases()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadDatabases()
		  lstFilterDatabase.RemoveAllRows
		  lstFilterDatabase.AddRow("(ALL)", "")
		  lstFilterDatabase.AddRow("-", "")
		  
		  Var iPreselectIndex As Integer = 0
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW DATABASES")
		    If (rs = Nil) Then Return
		    
		    Var sessionStateDatabasename As String = Session.State.Lookup("databasename", "").StringValue
		    
		    If (rs.RowCount > 0) Then
		      rs.MoveToFirstRow
		      While (Not rs.AfterLastRow)
		        lstFilterDatabase.AddRow(rs.Column("databasename").StringValue, rs.Column("databasename").StringValue)
		        
		        If (sessionStateDatabasename <> "") And (sessionStateDatabasename = rs.Column("databasename").StringValue) Then
		          iPreselectIndex = lstFilterDatabase.LastAddedRowIndex
		        End If
		        
		        rs.MoveToNextRow
		      Wend
		    End If
		    
		    rs.Close
		    
		  Catch DatabaseException
		    
		  Finally
		    If (lstFilterDatabase.RowCount > 0) Then lstFilterDatabase.SelectedRowIndex = iPreselectIndex
		    Session.State.Value("databasename") = Me.GetSelectedDatabasename()
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  Var bEdit, bRename, bDrop, bDatabaseSchedules, bScheduleDatabases As Boolean
		  Var bDatabaseSchedulesAvailable As Boolean = GetSchedulesAvailable()
		  Var bDatabaseSchedulesVisible As Boolean = (Me.GetSelectedDatabasename() <> "")
		  
		  Var schedule As String = Me.GetSelectedSchedule()
		  
		  If (schedule <> "") Then
		    bEdit = True
		    bRename = True
		    bDrop = True
		    bScheduleDatabases = True
		  End If
		  
		  bDatabaseSchedules = bDatabaseSchedulesVisible And bDatabaseSchedulesAvailable
		  
		  If (btnEdit.Enabled <> bEdit) Then btnEdit.Enabled = bEdit
		  If (btnRename.Enabled <> bRename) Then btnRename.Enabled = bRename
		  If (btnDrop.Enabled <> bDrop) then btnDrop.Enabled = bDrop
		  If (btnDatabaseSchedules.Enabled <> bDatabaseSchedulesAvailable) Then btnDatabaseSchedules.Enabled = bDatabaseSchedulesAvailable
		  If (btnDatabaseSchedules.Visible <> bDatabaseSchedulesVisible) Then btnDatabaseSchedules.Visible = bDatabaseSchedulesVisible
		  If (btnScheduleDatabases.Enabled <> bScheduleDatabases) Then btnScheduleDatabases.Enabled = bScheduleDatabases
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshInfos(selectSchedule As String = "")
		  If (selectSchedule = "") Then
		    selectSchedule = Me.GetSelectedSchedule()
		  End If
		  
		  esSelectAfterReload = selectSchedule
		  
		  Me.TableLoad()
		  
		  'Select Row async via TableRowDataLoaded
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowDetails()
		  If (Not ebShowDetails) Then Return
		  
		  For Each dictRow As Dictionary In Me.TableRows
		    Try
		      Var schedule As String = dictRow.Lookup("schedname", "").StringValue
		      If (schedule = "") Then Continue
		      
		      Var rs As RowSet = Session.DB.SelectSQL("SHOW SCHEDULE '" + schedule.EscapeSqlQuotes + "'")
		      
		      If (rs <> Nil) Then
		        rs.MoveToFirstRow
		        
		        dictRow.Value("schedtype") = rs.Column("schedtype").StringValue
		        dictRow.Value("schedenabled") = rs.Column("schedenabled").IntegerValue
		        
		      End If
		      
		      rs.Close
		      
		    Catch err As DatabaseException
		    End Try
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableInitColumns()
		  Super.TableInitColumns()
		  
		  Var col As DatasourceColumn
		  
		  col = New DatasourceColumn()
		  If ebShowDetails Then
		    col.Width = "70%"
		  Else
		    col.Width = "100%"
		  End If
		  col.DatabaseColumnName = "schedname"
		  col.Heading = "Schedule"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.Ascending
		  Me.Columns.Add(col)
		  
		  If ebShowDetails Then
		    col = New DatasourceColumn()
		    col.Width = "15%"
		    col.DatabaseColumnName = "schedtype"
		    col.Heading = "Type"
		    col.IsVirtual = True
		    col.FieldType = DatasourceColumn.FieldTypes.Text
		    col.Sortable = False
		    col.IsSearchable = False
		    col.SortDirection = WebListBox.SortDirections.None
		    Me.Columns.Add(col)
		    
		    col = New DatasourceColumn()
		    col.Width = "15%"
		    col.DatabaseColumnName = "schedenabled"
		    col.Heading = "Enabled"
		    col.IsVirtual = True
		    col.FieldType = DatasourceColumn.FieldTypes.Integer
		    col.Sortable = False
		    col.IsSearchable = False
		    col.SortDirection = WebListBox.SortDirections.None
		    Me.Columns.Add(col)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableLoad()
		  Super.TableLoad()
		  
		  If ebShowDetails Then
		    Try
		      thrDetails.Start
		    Catch err As RuntimeException
		      
		    End Try
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableLoadRowSet() As RowSet
		  Var filterDatabasename As String = Me.GetSelectedDatabasename()
		  Var filterSchedules As String
		  
		  If (filterDatabasename <> "") Then
		    filterSchedules = " FOR DATABASE '" + filterDatabasename.EscapeSqlQuotes + "'"
		  End If
		  
		  Return Session.DB.SelectSQL("SHOW SCHEDULES" + filterSchedules)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableNoRowsMessage() As String
		  Var sInfo As String = "No Schedules"
		  
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
		    
		  Case "schedenabled"
		    If (row.Lookup(col.DatabaseColumnName, 0).IntegerValue = 1) Then
		      Return New WebListBoxStyleRenderer(StyleListboxTextAlignCenterGreen(), "yes")
		    Else
		      Return New WebListBoxStyleRenderer(StyleListboxTextAlignCenter(), "no")
		    End If
		    
		  Else
		    Return Super.TableRowColumnData(col, row)
		    
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableRowDataLoaded()
		  Super.TableRowDataLoaded()
		  
		  If (esSelectAfterReload = "") Then
		    Me.RefreshButtons()
		    Return
		  End If
		  
		  Var sSelectAfterReload As String = esSelectAfterReload
		  esSelectAfterReload = ""
		  
		  Var bFound As Boolean = False
		  For i As Integer = Me.Table.LastRowIndex DownTo 0
		    Var rowTag As Dictionary = Me.Table.RowTagAt(i)
		    If (rowTag IsA Dictionary) Then
		      If (rowTag.Lookup("schedname", "").StringValue <> sSelectAfterReload) Then Continue
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
		Private ebShowDetails As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esActionSchedule As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esSelectAfterReload As String
	#tag EndProperty


#tag EndWindowCode

#tag Events lstInfos
	#tag Event
		Sub SelectionChanged(rows() As Integer)
		  #Pragma unused rows
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.ExecuteJavaScript("$('#" + Me.ControlID + "').addClass('listboxSchedulesHeaderAlignment')")
		  
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
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDatabaseSchedules
	#tag Event
		Sub Pressed()
		  Self.ActionDatabaseSchedules()
		  
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
#tag Events btnCreate
	#tag Event
		Sub Pressed()
		  Self.ActionCreate()
		  
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
#tag Events btnScheduleDatabases
	#tag Event
		Sub Pressed()
		  Self.ActionScheduleDatabases()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events thrDetails
	#tag Event
		Sub Run()
		  Try
		    If (Not ebShowDetails) Then Return
		    
		    Self.ShowDetails()
		    
		  Catch err As RuntimeException
		  End Try
		  
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
