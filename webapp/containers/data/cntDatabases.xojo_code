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
      Height          =   380
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
      Top             =   396
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
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   396
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
      Top             =   396
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
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   396
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
      TabIndex        =   9
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
      Left            =   128
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   "0"
      Scope           =   2
      TabIndex        =   6
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebThread thrUpload
      DebugIdentifier =   ""
      Index           =   -2147483648
      LockedInPosition=   True
      Priority        =   5
      Scope           =   2
      StackSize       =   0
      ThreadID        =   0
      ThreadState     =   ""
   End
   Begin WebProgressWheel pgrWheel
      Colorize        =   False
      ControlID       =   ""
      Enabled         =   True
      Height          =   32
      Index           =   -2147483648
      Indicator       =   0
      Left            =   236
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   "0"
      Parent          =   "rctFilter"
      Scope           =   2
      SVGColor        =   &c00000000
      SVGData         =   ""
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   446
      Visible         =   False
      Width           =   32
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
   Begin WebButton btnUpload
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Upload"
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
      TabIndex        =   5
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebTimer timUpload
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
   Begin WebButton btnEncryption
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Encryption"
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
      TabIndex        =   8
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   208
      _mPanelIndex    =   -1
   End
   Begin WebMessageDialog dlgDecrypt
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
   Begin WebButton btnSchedules
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Schedules"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   6
      Left            =   286
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   "0"
      Scope           =   2
      TabIndex        =   7
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   False
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
	#tag Method, Flags = &h21
		Private Sub ActionChangeKey(obj As cntDatabasesEncryption)
		  Var databasename As String = Me.GetSelectedDatabasename()
		  If (databasename = "") Then Return
		  
		  esActionDatabasename = databasename
		  
		  If (obj <> Nil) Then obj.Close
		  
		  Var dlgChangeKey As New dlgCommonName
		  AddHandler dlgChangeKey.NameAction, WeakAddressOf ActionChangeKeyButtonPressed
		  dlgChangeKey.Show("Change Key for Database", "New Key", "Change", Indicators.Warning, "")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionChangeKeyButtonPressed(obj As dlgCommonName, Name As String) As Boolean
		  #Pragma unused obj
		  
		  If (esActionDatabasename = "") Then Return False
		  If (Name = "") Then Return False
		  
		  Try
		    
		    Session.DB.ExecuteSQL("ENCRYPT DATABASE '" + esActionDatabasename.EscapeSqlQuotes + "' WITH KEY '" + Name.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Change Key for Database", "Could not set change key for database.", err)
		    Return False
		    
		  End Try
		  
		  'Success - no dialog
		  Me.RefreshInfos()
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionCreate()
		  Var dlgCreate As New dlgDatabaseCreate
		  AddHandler dlgCreate.DatabaseCreateAction, WeakAddressOf ActionCreateButtonPressed
		  dlgCreate.Show(GetDatabasesList)
		  
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
		    ShowErrorDialog(dlgMessage, "Create Database", "Could not create database.", err)
		    Return False
		    
		  End Try
		  
		  'Success - no dialog
		  Me.RefreshInfos(Name)
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDecrypt(obj As cntDatabasesEncryption)
		  Var databasename As String = Me.GetSelectedDatabasename()
		  If (databasename = "") Then Return
		  
		  esActionDatabasename = databasename
		  
		  If (obj <> Nil) Then obj.Close
		  
		  dlgDecrypt.Title = "Decypt Database"
		  dlgDecrypt.Indicator = Indicators.Danger
		  dlgDecrypt.ActionButton.Caption = "Decrypt"
		  dlgDecrypt.CancelButton.Visible = True
		  dlgDecrypt.Message = "Are you sure you want to decrypt database '" + databasename + "'?"
		  dlgDecrypt.Explanation = "Database file will be saved unencrypted on cubeSQL Server."
		  
		  esActionDatabasename = databasename
		  
		  dlgDecrypt.ShowWithActionDanger()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDecryptButtonPressed(obj As WebMessageDialog, button As WebMessageDialogButton)
		  Var sDecryptDatabasename As String = esActionDatabasename
		  esActionDatabasename = ""
		  
		  If (button <> obj.ActionButton) Then Return
		  If (sDecryptDatabasename = "") Then Return
		  
		  Try
		    Session.DB.ExecuteSQL("DECRYPT DATABASE '" + sDecryptDatabasename.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Decrypt Database", "Could not decrypt database.", err)
		    
		  Finally
		    Me.RefreshInfos()
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDownload()
		  If Me.IsThreadRunning Then Return
		  
		  Var databasename As String = Me.GetSelectedDatabasename()
		  If (databasename = "") Then Return
		  
		  esActionDatabasename = databasename
		  
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
		    ShowErrorDialog(dlgMessage, "Drop Database", "Could not drop database.", err)
		    
		  Finally
		    Me.RefreshInfos()
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionEncrypt(obj As cntDatabasesEncryption)
		  Var databasename As String = Me.GetSelectedDatabasename()
		  If (databasename = "") Then Return
		  
		  esActionDatabasename = databasename
		  
		  If (obj <> Nil) Then obj.Close
		  
		  Var dlgEncrypt As New dlgCommonName
		  AddHandler dlgEncrypt.NameAction, WeakAddressOf ActionEncryptButtonPressed
		  dlgEncrypt.Show("Encrypt Database", "Key", "Encrypt", Indicators.Success, "")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionEncryptButtonPressed(obj As dlgCommonName, Name As String) As Boolean
		  #Pragma unused obj
		  
		  If (esActionDatabasename = "") Then Return False
		  If (Name = "") Then Return False
		  
		  Try
		    
		    Session.DB.ExecuteSQL("ENCRYPT DATABASE '" + esActionDatabasename.EscapeSqlQuotes + "' WITH KEY '" + Name.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Encrypt Database", "Could not encrypt database.", err)
		    Return False
		    
		  End Try
		  
		  'Success - no dialog
		  Me.RefreshInfos()
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionEncryption()
		  Var rowTag As Dictionary = Me.GetSelectedTableRowTag()
		  
		  Var popEncryption As New cntDatabasesEncryption
		  popEncryption.Init(rowTag)
		  
		  
		  AddHandler popEncryption.ActionSetKey, WeakAddressOf ActionSetKey
		  AddHandler popEncryption.ActionChangeKey, WeakAddressOf ActionChangeKey
		  AddHandler popEncryption.ActionEncrypt, WeakAddressOf ActionEncrypt
		  AddHandler popEncryption.ActionDecrypt, WeakAddressOf ActionDecrypt
		  
		  popEncryption.ShowPopover(btnEncryption, WebContainer.DisplaySides.Top)
		  
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
		    ShowErrorDialog(dlgMessage, "Rename Database", "Could not rename database.", err)
		    Return False
		    
		  End Try
		  
		  'Success - no dialog
		  Me.RefreshInfos(Name)
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionSchedules()
		  Var databasename As String = Me.GetSelectedDatabasename()
		  If (databasename = "") Then Return
		  
		  esActionDatabasename = databasename
		  
		  Var dlgSchedules As New dlgDatabaseSchedules
		  AddHandler dlgSchedules.NeedsRefresh, WeakAddressOf ActionSchedulesButtonPressed
		  dlgSchedules.Show(databasename)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionSchedulesButtonPressed(obj As dlgDatabaseSchedules)
		  #Pragma unused obj
		  
		  'no need to refresh this list
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionSetKey(obj As cntDatabasesEncryption)
		  Var databasename As String = Me.GetSelectedDatabasename()
		  If (databasename = "") Then Return
		  
		  esActionDatabasename = databasename
		  
		  If (obj <> Nil) Then obj.Close
		  
		  Var dlgSetKey As New dlgCommonName
		  AddHandler dlgSetKey.NameAction, WeakAddressOf ActionSetKeyButtonPressed
		  dlgSetKey.Show("Set Key for Database", "Key", "Set Key", Indicators.Warning, "")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionSetKeyButtonPressed(obj As dlgCommonName, Name As String) As Boolean
		  #Pragma unused obj
		  
		  If (esActionDatabasename = "") Then Return False
		  If (Name = "") Then Return False
		  
		  Try
		    
		    Session.DB.ExecuteSQL("SET KEY '" + Name.EscapeSqlQuotes + "' FOR DATABASE '" + esActionDatabasename.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Set Key for Database", "Could not set key for database.", err)
		    Return False
		    
		  End Try
		  
		  'Success - no dialog
		  Me.RefreshInfos()
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
		    ShowErrorDialog(dlgMessage, "Start database", "Could not start database.", err)
		    
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
		    ShowErrorDialog(dlgMessage, "Stop database", "Could not stop database.", err)
		    
		  Finally
		    Me.RefreshInfos()
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionUpload()
		  Var dlgUpload As New dlgDatabaseUpload
		  AddHandler dlgUpload.DatabaseUploadAction, WeakAddressOf ActionUploadButtonPressed
		  dlgUpload.Show(GetDatabasesList)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionUploadButtonPressed(obj As dlgDatabaseUpload, Name As String, Key As String, File As WebUploadedFile) As Boolean
		  #Pragma unused obj
		  
		  If Me.IsThreadRunning Then Return False
		  If (Name = "") Then Return False
		  If (File.Data = Nil) Then Return False
		  
		  esActionDatabasename = Name
		  esSelectAfterReload = Name
		  esUploadKey = Key
		  pgrWheel.Visible = True
		  
		  Me.Upload = File
		  timUpload.RunMode = WebTimer.RunModes.Multiple
		  thrUpload.Start
		  timThread.RunMode = WebTimer.RunModes.Multiple
		  
		  Return True 'dismiss dialog, process in Thread
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  
		  Me.Area = "Data"
		  Me.Title = "Databases"
		  Me.Table = lstInfos
		  Me.SearchAvailable = True
		  
		  ebSchedulesAvailable = cntSchedules.GetSchedulesAvailable()
		  esSelectAfterReload = Session.State.Lookup("databasename", "").StringValue
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function GetDatabasesList() As String()
		  Var databases() As String
		  
		  Try
		    
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW DATABASES WITH DETAILS")
		    If (rs <> Nil) Then
		      If (rs.RowCount > 0) Then
		        rs.MoveToFirstRow
		        While (Not rs.AfterLastRow)
		          If (databases.IndexOf(rs.Column("databasename").StringValue) < 0) Then
		            databases.Add(rs.Column("databasename").StringValue)
		          End If
		          
		          rs.MoveToNextRow
		        Wend
		      End If
		      
		      rs.Close
		    End If
		    
		    
		  Catch DatabaseException
		    
		  Finally
		    databases.Sort()
		    return databases
		    
		  End Try
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSelectedDatabasename() As String
		  Var selectedRowTag As Variant = Me.GetSelectedTableRowTag()
		  If (selectedRowTag IsA Dictionary) Then
		    Return Dictionary(selectedRowTag).Lookup("databasename", "").StringValue
		  End If
		  
		  Return ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function IsThreadRunning() As Boolean
		  If (thrDownload.ThreadState <> Thread.ThreadStates.NotRunning) Then Return True
		  Return False
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  Var bDownload, bRename, bStart, bStop, bDrop, bEncryption, bSchedules As Boolean
		  
		  Var rowTag As Dictionary = Me.GetSelectedTableRowTag()
		  If (rowTag <> Nil) Then
		    
		    bDownload = True
		    bRename = True
		    bStart = rowTag.Lookup("stopped", False) = True
		    bStop = (Not bStart)
		    bDrop = True
		    bEncryption = True
		    bSchedules = ebSchedulesAvailable
		    
		  End If
		  
		  If (btnDownload.Enabled <> bDownload) Then btnDownload.Enabled = bDownload
		  If (btnRename.Enabled <> bRename) Then btnRename.Enabled = bRename
		  If (btnStart.Enabled <> bStart) Then btnStart.Enabled = bStart
		  If (btnStop.Enabled <> bStop) Then btnStop.Enabled = bStop
		  If (btnDrop.Enabled <> bDrop) Then btnDrop.Enabled = bDrop
		  If (btnEncryption.Enabled <> bEncryption) Then btnEncryption.Enabled = bEncryption
		  If (btnSchedules.Enabled <> bSchedules) Then btnSchedules.Enabled = bSchedules
		  If (btnSchedules.Visible <> ebSchedulesAvailable) Then btnSchedules.Visible = ebSchedulesAvailable
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshInfos(selectDatabasename As String = "")
		  If (selectDatabasename = "") Then
		    selectDatabasename = Me.GetSelectedDatabasename()
		  End If
		  
		  esSelectAfterReload = selectDatabasename
		  
		  Me.TableLoad()
		  
		  'Select Row async via TableRowDataLoaded
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableInitColumns()
		  Super.TableInitColumns()
		  
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
		  col.Width = "50%"
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
		Protected Function TableLoadRowSet() As RowSet
		  Return Session.DB.SelectSQL("SHOW DATABASES WITH DETAILS")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableNoRowsMessage() As String
		  Var sInfo As String = "No Databases"
		  
		  If (Me.SearchValue <> "") Then
		    sInfo = sInfo + " matching '" + Me.SearchValue + "'"
		  End If
		  
		  Return sInfo
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableRowColumnData(col As DatasourceColumn, row As Dictionary) As Variant
		  Select Case col.DatabaseColumnName
		    
		  Case "status"
		    Var icon As WebPicture
		    If row.Lookup("stopped", False).BooleanValue Then
		      icon = WebPicture.BootstrapIcon("stop-circle-fill", Color.Orange)
		    Else
		      If row.Lookup("available", True).BooleanValue Then
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
		      If (rowTag.Lookup("databasename", "").StringValue <> sSelectAfterReload) Then Continue
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
		Private ebSchedulesAvailable As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esActionDatabasename As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esSelectAfterReload As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esUploadKey As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Upload As WebUploadedFile
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
		  
		  Session.State.Value("databasename") = Self.GetSelectedDatabasename()
		  
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
#tag Events btnDownload
	#tag Event
		Sub Pressed()
		  Self.ActionDownload()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events thrUpload
	#tag Event
		Sub Run()
		  Var sUploadKey As String = esUploadKey
		  esUploadKey = ""
		  
		  Var sUploadToDatabase As String = esActionDatabasename
		  If (sUploadToDatabase = "") Then Return
		  
		  Var DB As CubeSQLServer = Session.DB
		  If (DB = Nil) Then Return
		  
		  If (Self.Upload = Nil) Or (Self.Upload.Data = Nil) Then Return
		  
		  Var iDbTimeout As Integer = DB.Timeout
		  
		  Try
		    Const kChunkSize = 102400
		    
		    DB.Timeout = 600 'a long Timeout for Download
		    DB.ExecuteSQL("UPLOAD DATABASE '" + sUploadToDatabase.EscapeSqlQuotes + "'")
		    
		    Dim bs As New BinaryStream(Self.Upload.Data)
		    Dim chunk As String 'upload data in chunks
		    While Not bs.EndOfFile
		      'read the next chunk
		      chunk = bs.Read(kChunkSize)
		      
		      'send the chunk to the server
		      DB.SendChunk chunk
		      
		      'if there was an error; report it and bail
		      If (DB.ErrCode <> 0) or (DB.ErrMsg <> "") Then
		        Var errorMessage As String = DB.ErrMsg
		        If (errorMessage = "") Then errorMessage = "Unknown Error while uploading..."
		        Raise New DatabaseException(errorMessage, DB.ErrCode)
		      End If
		      
		      Me.YieldToNext
		    Wend
		    
		    'send the stop end chunk command (the server needs this to know that the file has been completely sent)
		    DB.SendEndChunk
		    
		    If (sUploadKey <> "") Then
		      Try
		        DB.ExecuteSQL("SET KEY '" + sUploadKey.EscapeSqlQuotes + "' FOR DATABASE '" + sUploadToDatabase.EscapeSqlQuotes + "'")
		      Catch err As DatabaseException
		        Select Case err.ErrorNumber
		        Case 7015 'encryption key wrong
		          Me.AddUserInterfaceUpdate("Hint" : "Encryption Key is wrong.|Database will not be available until you set the correct Encryption Key.")
		        Case 7029 'db doesn't seem to be encrypted
		          Me.AddUserInterfaceUpdate("Hint" : "Database doesn't seem to be encrypted.|Database has been uploaded successfully.")
		        Else
		          Raise err
		        End Select
		      End Try
		    End If
		    
		  Catch err As DatabaseException
		    
		    Me.AddUserInterfaceUpdate("Error" : "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message)
		    
		  Finally
		    DB.Timeout = iDbTimeout
		    
		  End Try
		  
		  Self.Upload = Nil
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub UserInterfaceUpdate(data() As Dictionary)
		  For Each update As Dictionary In data
		    
		    If update.HasKey("Success") Then
		      'nothing to do
		    End If
		    
		    If update.HasKey("Hint") Then
		      ShowInfoDialog(dlgMessage, "Upload Database", update.Lookup("Hint", "").StringValue.NthField("|", 1), update.Lookup("Hint", "").StringValue.NthField("|", 2))
		    End If
		    
		    If update.HasKey("Error") Then
		      ShowErrorDialog(dlgMessage, "Upload Database", "Could not upload database.", update.Lookup("Error", "").StringValue)
		    End If
		    
		  Next
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events timThread
	#tag Event
		Sub Run()
		  If (Self.IsThreadRunning) Then Return
		  
		  Me.RunMode = WebTimer.RunModes.Off
		  
		  pgrWheel.Visible = False
		  
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
#tag Events btnUpload
	#tag Event
		Sub Pressed()
		  Self.ActionUpload()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events timUpload
	#tag Event
		Sub Run()
		  If (Self.Upload <> Nil) Then Return
		  
		  Me.RunMode = WebTimer.RunModes.Off
		  
		  Self.TableLoad()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events thrDownload
	#tag Event
		Sub Run()
		  Self.Download = Nil
		  
		  Var sDownloadFromDatabase As String = esActionDatabasename
		  If (sDownloadFromDatabase = "") Then Return
		  
		  Var DB As CubeSQLServer = Session.DB
		  If (DB = Nil) Then Return
		  
		  Var iDbTimeout As Integer = DB.Timeout
		  Var bSuccess As Boolean = False
		  Var prepareDownload As WebFile
		  
		  Try
		    DB.Timeout = 600 'a long Timeout for Download
		    DB.ExecuteSQL("DOWNLOAD DATABASE '" + sDownloadFromDatabase.EscapeSqlQuotes + "'")
		    
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
		    prepareDownload.FileName = sDownloadFromDatabase
		    prepareDownload.Data = data
		    AddHandler prepareDownload.Downloaded, WeakAddressOf Self.ActionDownloadStarted
		    
		  Catch err As DatabaseException
		    
		    Me.AddUserInterfaceUpdate("Error" : "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message)
		    
		  Finally
		    DB.Timeout = iDbTimeout
		    
		  End Try
		  
		  esActionDatabasename = ""
		  
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
		      ShowErrorDialog(dlgMessage, "Download Database", "Could not download database.", update.Lookup("Error", "").StringValue)
		    End If
		    
		  Next
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnEncryption
	#tag Event
		Sub Pressed()
		  Self.ActionEncryption()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events dlgDecrypt
	#tag Event
		Sub ButtonPressed(button As WebMessageDialogButton)
		  Self.ActionDecryptButtonPressed(Me, button)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSchedules
	#tag Event
		Sub Pressed()
		  Self.ActionSchedules()
		  
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
