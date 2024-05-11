#tag WebContainerControl
Begin cntDatasourceBase cntBackups
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
      NoRowsMessage   =   "No Backups"
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
   Begin WebButton btnDelete
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Delete"
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
   Begin WebButton btnBackup
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Backup"
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
   Begin WebButton btnRestore
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Restore"
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
   Begin WebMessageDialog dlgDelete
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
      Begin WebProgressWheel pgrWheel
         Colorize        =   False
         ControlID       =   ""
         Enabled         =   True
         Height          =   32
         Index           =   -2147483648
         Indicator       =   0
         Left            =   710
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Parent          =   "rctFilter"
         Scope           =   2
         SVGColor        =   &c00000000
         SVGData         =   ""
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   373
         Visible         =   False
         Width           =   32
         _mPanelIndex    =   -1
      End
   End
   Begin WebThread thrBackup
      DebugIdentifier =   ""
      Index           =   -2147483648
      LockedInPosition=   True
      Priority        =   5
      Scope           =   2
      StackSize       =   0
      ThreadID        =   0
      ThreadState     =   ""
   End
   Begin WebThread thrDelete
      DebugIdentifier =   ""
      Index           =   -2147483648
      LockedInPosition=   True
      Priority        =   5
      Scope           =   2
      StackSize       =   0
      ThreadID        =   0
      ThreadState     =   ""
   End
   Begin WebThread thrRestore
      DebugIdentifier =   ""
      Index           =   -2147483648
      LockedInPosition=   True
      Priority        =   5
      Scope           =   2
      StackSize       =   0
      ThreadID        =   0
      ThreadState     =   ""
   End
   Begin WebMessageDialog dlgRestore
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
   Begin WebButton btnDownload
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Download"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   2
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
   Begin WebThread thrDownload
      DebugIdentifier =   ""
      Index           =   -2147483648
      LockedInPosition=   True
      Priority        =   5
      Scope           =   2
      StackSize       =   0
      ThreadID        =   0
      ThreadState     =   ""
   End
   Begin WebTimer timDownload
      ControlID       =   ""
      Enabled         =   True
      Index           =   -2147483648
      Location        =   0
      LockedInPosition=   True
      Period          =   500
      RunMode         =   0
      Scope           =   2
      _mPanelIndex    =   -1
   End
   Begin WebTimer timThread
      ControlID       =   ""
      Enabled         =   True
      Index           =   -2147483648
      Location        =   0
      LockedInPosition=   True
      Period          =   500
      RunMode         =   0
      Scope           =   2
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
		Private Sub ActionBackup()
		  If Me.IsThreadRunning Then Return
		  
		  Var databasename As String = Me.GetSelectedDatabasename()
		  If (databasename = "") Then Return
		  
		  esActionDatabasename = databasename
		  esActionTimestamp = ""
		  
		  pgrWheel.Visible = True
		  
		  thrBackup.Start
		  timThread.RunMode = WebTimer.RunModes.Multiple
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDelete()
		  If Me.IsThreadRunning Then Return
		  
		  Var databasename As String = Me.GetSelectedDatabasename()
		  Var timestamp As String = Me.GetSelectedTimestamp()
		  If (databasename = "") Or (timestamp = "") Then Return
		  
		  Var backupDate As DateTime = Me.GetDateTimeFromTimestamp(timestamp)
		  
		  dlgDelete.Title = "Delete Backup"
		  dlgDelete.Indicator = Indicators.Danger
		  dlgDelete.ActionButton.Caption = "Delete"
		  dlgDelete.CancelButton.Visible = True
		  dlgDelete.Message = "Are you sure you want to delete Backup '" + backupDate.SQLDateTime + "' of Database " + databasename + "?"
		  dlgDelete.Explanation = "This action cannot be undone."
		  
		  esActionDatabasename = databasename
		  esActionTimestamp = timestamp
		  
		  dlgDelete.ShowWithActionDanger()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDeleteButtonPressed(obj As WebMessageDialog, button As WebMessageDialogButton)
		  If (button <> obj.ActionButton) Then Return
		  If (esActionTimestamp = "") Or (esActionDatabasename = "") Then Return
		  
		  pgrWheel.Visible = True
		  
		  thrDelete.Start
		  timThread.RunMode = WebTimer.RunModes.Multiple
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDownload()
		  If Me.IsThreadRunning Then Return
		  
		  Var databasename As String = Me.GetSelectedDatabasename()
		  Var timestamp As String = Me.GetSelectedTimestamp()
		  If (databasename = "") Or (timestamp = "") Then Return
		  
		  esActionDatabasename = databasename
		  esActionTimestamp = timestamp
		  
		  pgrWheel.Visible = True
		  
		  timDownload.RunMode = WebTimer.RunModes.Multiple
		  thrDownload.Start
		  timThread.RunMode = WebTimer.RunModes.Multiple
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDownloadStarted(file As WebFile)
		  If (file = Me.Download) Then
		    Me.Download = Nil
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionRestore()
		  If Me.IsThreadRunning Then Return
		  
		  Var databasename As String = Me.GetSelectedDatabasename()
		  Var timestamp As String = Me.GetSelectedTimestamp()
		  If (databasename = "") Or (timestamp = "") Then Return
		  
		  Var backupDate As DateTime = Me.GetDateTimeFromTimestamp(timestamp)
		  
		  dlgRestore.Title = "Restore Backup"
		  dlgRestore.Indicator = Indicators.Danger
		  dlgRestore.ActionButton.Caption = "Restore"
		  dlgRestore.CancelButton.Visible = True
		  dlgRestore.Message = "Are you sure you want to restore database " + databasename + " from Backup '" + backupDate.SQLDateTime + "' ?"
		  dlgRestore.Explanation = "This action cannot be undone."
		  
		  esActionDatabasename = databasename
		  esActionTimestamp = timestamp
		  
		  dlgRestore.ShowWithActionWarning()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionRestoreButtonPressed(obj As WebMessageDialog, button As WebMessageDialogButton)
		  If (button <> obj.ActionButton) Then Return
		  If (esActionTimestamp = "") Or (esActionDatabasename = "") Then Return
		  
		  pgrWheel.Visible = True
		  
		  thrRestore.Start
		  timThread.RunMode = WebTimer.RunModes.Multiple
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  
		  Me.Area = "Data"
		  Me.Title = "Backups"
		  Me.Table = lstInfos
		  Me.SearchAvailable = False
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetDateTimeFromTimestamp(psTimestamp As String) As DateTime
		  Var iYear As Integer = psTimestamp.Middle(0, 4).ToInteger
		  Var iMonth As Integer = psTimestamp.Middle(4, 2).ToInteger
		  Var iDay As Integer = psTimestamp.Middle(6, 2).ToInteger
		  
		  Var iHour As Integer = psTimestamp.Middle(9, 2).ToInteger
		  Var iMinute As Integer = psTimestamp.Middle(11, 2).ToInteger
		  Var iSecond As Integer = psTimestamp.Middle(13, 2).ToInteger
		  
		  Return New DateTime(iYear, iMonth, iDay, iHour, iMinute, iSecond, 0, Timezone.Current)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSelectedDatabasename() As String
		  If (lstFilterDatabase.SelectedRowIndex < 0) Then Return ""
		  Return lstFilterDatabase.RowTagAt(lstFilterDatabase.SelectedRowIndex)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSelectedTimestamp() As String
		  Var selectedRowTag As Variant = Me.GetSelectedTableRowTag()
		  If (selectedRowTag IsA Dictionary) Then
		    Return Dictionary(selectedRowTag).Lookup("timestamp", "").StringValue
		  End If
		  
		  Return ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function IsThreadRunning() As Boolean
		  If (thrBackup.ThreadState <> Thread.ThreadStates.NotRunning) Then Return True
		  If (thrDelete.ThreadState <> Thread.ThreadStates.NotRunning) Then Return True
		  If (thrDownload.ThreadState <> Thread.ThreadStates.NotRunning) Then Return True
		  If (thrRestore.ThreadState <> Thread.ThreadStates.NotRunning) Then Return True
		  Return False
		  
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
		  
		  lstFilterDatabase.AddRow(constDBName_CubeSQLSettings, constDBName_CubeSQLSettings)
		  Var bNeedsSeparator As Boolean = True
		  
		  Var iPreselectIndex As Integer = 0
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW DATABASES")
		    If (rs = Nil) Then Return
		    
		    Var sessionStateDatabasename As String = Session.State.Lookup("databasename", "").StringValue
		    
		    If (rs.RowCount > 0) Then
		      rs.MoveToFirstRow
		      While (Not rs.AfterLastRow)
		        If bNeedsSeparator Then
		          bNeedsSeparator = False
		          lstFilterDatabase.AddRow("-", "")
		        End If
		        
		        lstFilterDatabase.AddRow(rs.Column("databasename").StringValue, rs.Column("databasename").StringValue)
		        If (iPreselectIndex = 0) Then iPreselectIndex = lstFilterDatabase.LastAddedRowIndex
		        
		        If (sessionStateDatabasename <> "") And (sessionStateDatabasename = rs.Column("databasename").StringValue) Then
		          iPreselectIndex = lstFilterDatabase.LastAddedRowIndex
		        End If
		        
		        rs.MoveToNextRow
		      Wend
		    End If
		    
		    rs.Close
		    
		    If (sessionStateDatabasename = constDBName_CubeSQLSettings) Then iPreselectIndex = 0
		    
		  Catch DatabaseException
		    
		  Finally
		    lstFilterDatabase.SelectedRowIndex = iPreselectIndex
		    Session.State.Value("databasename") = Me.GetSelectedDatabasename()
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  Var bBackup, bDownload, bRestore, bDelete As Boolean
		  
		  Var timestamp As String = Me.GetSelectedTimestamp()
		  Var databasename As String = Me.GetSelectedDatabasename()
		  
		  bBackup = (databasename <> "")
		  
		  If (timestamp <> "") And (databasename <> "") Then
		    bDownload = True
		    bRestore = (databasename <> constDBName_CubeSQLSettings)
		    bDelete = True
		  End If
		  
		  If (btnBackup.Enabled <> bBackup) Then btnBackup.Enabled = bBackup
		  If (btnDownload.Enabled <> bDownload) Then btnDownload.Enabled = bDownload
		  If (btnRestore.Enabled <> bRestore) Then btnRestore.Enabled = bRestore
		  If (btnDelete.Enabled <> bDelete) Then btnDelete.Enabled = bDelete
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableInitColumns()
		  Super.TableInitColumns()
		  
		  Var col As DatasourceColumn
		  
		  col = New DatasourceColumn()
		  col.Width = "50%"
		  col.DatabaseColumnName = "timestamp"
		  col.Heading = "Date"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.Descending
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "50%"
		  col.DatabaseColumnName = "virtualtime"
		  col.Heading = "Time"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = False
		  col.IsVirtual = True
		  col.IsSearchable = False
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableLoadRowSet() As RowSet
		  Var filterDatabasename As String = Me.GetSelectedDatabasename()
		  
		  If (filterDatabasename <> "") Then
		    Return Session.DB.SelectSQL("SHOW BACKUPS FOR DATABASE '" + filterDatabasename.EscapeSqlQuotes + "'")
		  End If
		  
		  Return Nil
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableNoRowsMessage() As String
		  Var sInfo As String = "No Backups"
		  
		  Var filterDatabasename As String = Me.GetSelectedDatabasename()
		  If (filterDatabasename <> "") Then
		    sInfo = sInfo + " for Database " + filterDatabasename
		  End If
		  
		  Return sInfo
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableRowColumnData(col As DatasourceColumn, row As Dictionary) As Variant
		  Select Case col.DatabaseColumnName
		    
		  Case "timestamp", "virtualtime"
		    Var sTimestamp As String = row.Lookup("timestamp", "19000101_000000").StringValue
		    Var timestamp As DateTime = Me.GetDateTimeFromTimestamp(sTimestamp)
		    
		    'Note: This is a technical web app. It'll show Dates as SQLDate/Time
		    'Otherwise we would need to show in User Locale:
		    'Var userLanguageCode As String = Session.LanguageCode
		    'Var userLocale As New Locale(userLanguageCode)
		    
		    Select Case col.DatabaseColumnName
		    Case "timestamp"
		      Return timestamp.SQLDate
		      'Return timestamp.ToString(userLocale, DateTime.FormatStyles.Long, DateTime.FormatStyles.None)
		    Case "virtualtime"
		      Return timestamp.ToString("HH:mm:ss")
		      'Return timestamp.ToString(userLocale, DateTime.FormatStyles.None, DateTime.FormatStyles.Medium)
		    End Select
		    
		    
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
		      If (rowTag.Lookup("timestamp", "-").StringValue <> sSelectAfterReload) Then Continue
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
		Private Download As WebFile
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ebReloadAfterThread As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esActionDatabasename As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esActionTimestamp As String
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
#tag EndEvents
#tag Events btnDelete
	#tag Event
		Sub Pressed()
		  Self.ActionDelete()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnBackup
	#tag Event
		Sub Pressed()
		  Self.ActionBackup()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRestore
	#tag Event
		Sub Pressed()
		  Self.ActionRestore()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events dlgDelete
	#tag Event
		Sub ButtonPressed(button As WebMessageDialogButton)
		  Self.ActionDeleteButtonPressed(Me, button)
		  
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
#tag Events thrBackup
	#tag Event
		Sub Run()
		  Var Databasename As String = esActionDatabasename
		  
		  If (Databasename = "") Then
		    esActionTimestamp = ""
		    esActionDatabasename = ""
		    Return
		  End If
		  
		  Try
		    Select Case Databasename
		    Case constDBName_CubeSQLSettings
		      Session.DB.ExecuteSQL("BACKUP SETTINGS")
		    Else
		      Session.DB.ExecuteSQL("BACKUP NOW '" + Databasename.EscapeSqlQuotes + "'")
		    End Select
		    
		    Me.SleepAndYieldToNext 100
		    
		    Me.AddUserInterfaceUpdate("Success" : True)
		    
		    esSelectAfterReload = ""
		    Try
		      Var rs As RowSet = Session.DB.SelectSQL("SHOW BACKUPS FOR DATABASE '" + esActionDatabasename.EscapeSqlQuotes + "'")
		      If (rs <> Nil) Then
		        
		        If (rs.RowCount > 0) Then
		          rs.MoveToFirstRow
		          esSelectAfterReload = rs.Column("timestamp").StringValue
		        End If
		        
		        rs.Close
		      End If
		      
		    Catch DatabaseException
		      esSelectAfterReload = ""
		      
		    End Try
		    
		    
		  Catch err As DatabaseException
		    
		    Me.AddUserInterfaceUpdate("Error" : "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message)
		    
		  End Try
		  
		  esActionTimestamp = ""
		  esActionDatabasename = ""
		  ebReloadAfterThread = True
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub UserInterfaceUpdate(data() As Dictionary)
		  For Each update As Dictionary In data
		    
		    If update.HasKey("Success") Then
		      'nothing to do
		    End If
		    
		    If update.HasKey("Error") Then
		      ShowErrorDialog(dlgMessage, "Backup Database", "Could not backup database.", update.Lookup("Error", "").StringValue)
		    End If
		    
		  Next
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events thrDelete
	#tag Event
		Sub Run()
		  Var sDeleteTimestamp As String = esActionTimestamp
		  Var sDeleteFromDatabase As String = esActionDatabasename
		  
		  If (sDeleteTimestamp = "") Or (sDeleteFromDatabase = "") Then
		    esActionTimestamp = ""
		    esActionDatabasename = ""
		    Return
		  End If
		  
		  Try
		    
		    Session.DB.ExecuteSQL("DROP BACKUP FOR DATABASE '" + sDeleteFromDatabase.EscapeSqlQuotes + "' WITH TIMESTAMP '" + sDeleteTimestamp.EscapeSqlQuotes + "'")
		    
		    Me.AddUserInterfaceUpdate("Success" : True)
		    
		  Catch err As DatabaseException
		    
		    Me.AddUserInterfaceUpdate("Error" : "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message)
		    
		  End Try
		  
		  esActionTimestamp = ""
		  esActionDatabasename = ""
		  ebReloadAfterThread = True
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub UserInterfaceUpdate(data() As Dictionary)
		  For Each update As Dictionary In data
		    
		    If update.HasKey("Success") Then
		      'nothing to do
		    End If
		    
		    If update.HasKey("Error") Then
		      ShowErrorDialog(dlgMessage, "Delete Backup", "Could not delete backup.", update.Lookup("Error", "").StringValue)
		    End If
		    
		  Next
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events thrRestore
	#tag Event
		Sub Run()
		  Var sRestoreTimestamp As String = esActionTimestamp
		  Var sRestoreFromDatabase As String = esActionDatabasename
		  
		  If (sRestoreTimestamp = "") Or (sRestoreFromDatabase = "") Then
		    esActionTimestamp = ""
		    esActionDatabasename = ""
		    Return
		  End If
		  
		  Try
		    
		    Session.DB.ExecuteSQL("RESTORE BACKUP FOR DATABASE '" + sRestoreFromDatabase.EscapeSqlQuotes + "' WITH TIMESTAMP '" + sRestoreTimestamp + "'")
		    
		    Me.AddUserInterfaceUpdate("Success" : True)
		    
		  Catch err As DatabaseException
		    
		    Me.AddUserInterfaceUpdate("Error" : "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message)
		    
		  End Try
		  
		  esActionTimestamp = ""
		  esActionDatabasename = ""
		  ebReloadAfterThread = False
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub UserInterfaceUpdate(data() As Dictionary)
		  For Each update As Dictionary In data
		    
		    If update.HasKey("Success") Then
		      'nothing to do
		    End If
		    
		    If update.HasKey("Error") Then
		      ShowErrorDialog(dlgMessage, "Restore Backup", "Could not restore backup.", update.Lookup("Error", "").StringValue)
		    End If
		    
		  Next
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events dlgRestore
	#tag Event
		Sub ButtonPressed(button As WebMessageDialogButton)
		  Self.ActionRestoreButtonPressed(Me, button)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDownload
	#tag Event
		Sub Pressed()
		  Self.ActionDownload()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events thrDownload
	#tag Event
		Sub Run()
		  Self.Download = Nil
		  
		  Var sDownloadTimestamp As String = esActionTimestamp
		  Var sDownloadFromDatabase As String = esActionDatabasename
		  
		  If (sDownloadTimestamp = "") Or (sDownloadFromDatabase = "") Then
		    esActionTimestamp = ""
		    esActionDatabasename = ""
		    Return
		  End If
		  
		  Var DB As CubeSQLServer = Session.DB
		  if (DB = Nil) then return
		  
		  Var iDbTimeout As Integer = DB.Timeout
		  Var bSuccess As Boolean = False
		  Var prepareDownload As WebFile
		  
		  Try
		    DB.Timeout = 600 'a long Timeout for Download
		    DB.ExecuteSQL("DOWNLOAD BACKUP DATABASE '" + sDownloadFromDatabase.EscapeSqlQuotes + "' WITH TIMESTAMP '" + sDownloadTimestamp.EscapeSqlQuotes + "'")
		    
		    Var data As New MemoryBlock(1) 'we don't know the size - let the MemoryBlock increase as needed
		    Dim bs As New BinaryStream(data)
		    ' call ReceiveChunk in a loop until all chunks have been received
		    While True
		      ' read the next chunk from the server
		      Dim chunk As String = DB.ReceiveChunk
		      
		      ' there was an error receving a chunk, report the error and bail
		      If (DB.ErrCode <> 0) Or (DB.ErrMsg <> "") Then
		        Var errorMessage As String = DB.ErrMsg
		        If (errorMessage = "") Then errorMessage = "Unknown Error while downloading..."
		        Raise New DatabaseException(errorMessage, DB.ErrCode)
		      End If
		      
		      ' see if we have reached the end of the chunks and exit the loop if we have
		      If DB.EndChunk Or (chunk.Bytes = 0) Then
		        bSuccess = True
		        bs.Close
		        Exit 'Loop
		      End If
		      
		      ' write the chunk out to the stream and loop again
		      bs.Write chunk
		      
		      Me.YieldToNext
		    Wend
		    
		    If (Not bSuccess) Then
		      Raise New DatabaseException("Unknown Error while downloading...", -1)
		    End If
		    
		    prepareDownload = New WebFile
		    prepareDownload.MimeType = "application/octet-stream"
		    prepareDownload.ForceDownload = True
		    prepareDownload.FileName = sDownloadFromDatabase + "_" + sDownloadTimestamp
		    prepareDownload.Data = data
		    AddHandler prepareDownload.Downloaded, WeakAddressOf Self.ActionDownloadStarted
		    
		  Catch err As DatabaseException
		    
		    Me.AddUserInterfaceUpdate("Error" : "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message)
		    
		  Finally
		    DB.Timeout = iDbTimeout
		    
		  End Try
		  
		  esActionTimestamp = ""
		  esActionDatabasename = ""
		  ebReloadAfterThread = False
		  
		  If (prepareDownload <> Nil) Then
		    Self.Download = prepareDownload
		  End If
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub UserInterfaceUpdate(data() As Dictionary)
		  For Each update As Dictionary In data
		    
		    If update.HasKey("Success") Then
		      'nothing to do
		    End If
		    
		    If update.HasKey("Error") Then
		      ShowErrorDialog(dlgMessage, "Download Backup", "Could not download backup.", update.Lookup("Error", "").StringValue)
		    End If
		    
		  Next
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events timDownload
	#tag Event
		Sub Run()
		  If (Self.Download = Nil) Then Return
		  
		  Me.RunMode = WebTimer.RunModes.Off
		  
		  Call Self.Download.Download()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events timThread
	#tag Event
		Sub Run()
		  If (Self.IsThreadRunning) Then Return
		  
		  Me.RunMode = WebTimer.RunModes.Off
		  
		  pgrWheel.Visible = False
		  
		  If ebReloadAfterThread Then
		    Self.TableLoad()
		  End If
		  
		  
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
