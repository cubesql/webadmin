#tag WebContainerControl
Begin cntDatasourceBase cntUsers
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
      NoRowsMessage   =   "No Users"
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
      TabIndex        =   6
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
      TabIndex        =   5
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
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   100
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
   Begin WebButton btnPassword
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Set Password"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   5
      Left            =   374
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
      Width           =   140
      _mPanelIndex    =   -1
   End
   Begin WebButton btnGroups
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Groups"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   6
      Left            =   266
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
      Begin WebLabel labFilterGroup
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
         Text            =   "Group:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   370
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
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Opening()
		  Self.Load()
		  
		  Self.ShowInfos()
		  
		  ebOpened = True
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub ActionCreate()
		  Var dlgCreate As New dlgUserCreate
		  AddHandler dlgCreate.UserCreateAction, WeakAddressOf ActionCreateButtonPressed
		  dlgCreate.Show(lstFilterGroup.RowTagAt(lstFilterGroup.SelectedRowIndex))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionCreateButtonPressed(obj As dlgUserCreate, Name As String, Password As String, Group As String) As Boolean
		  #Pragma unused obj
		  
		  If (Name = "") Then Return False
		  
		  Try
		    
		    Session.DB.ExecuteSQL("CREATE USER '" + Name.EscapeSqlQuotes + "' WITH PASSWORD '" + Password.EscapeSqlQuotes + "'")
		    
		    If (Group <> "") Then
		      Session.DB.ExecuteSQL("ADD USER '" + Name.EscapeSqlQuotes + "' TO GROUP '" + Group.EscapeSqlQuotes + "'")
		    End If
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Create User"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not create user."
		    dialog.Explanation = "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message
		    dialog.Show
		    Return False
		    
		  End Try
		  
		  Var filterGroupname As String = lstFilterGroup.RowTagAt(lstFilterGroup.SelectedRowIndex)
		  
		  If (filterGroupname <> "") Then
		    ebOpened = False
		    If (Group = "") Then
		      'Added user doesn't have a group yet
		      If (filterGroupname <> kGroupTagUnassigned) Then
		        lstFilterGroup.SelectedRowIndex = 0
		      End If
		    Else
		      'Added user to a group
		      lstFilterGroup.SelectRowWithTag(Group)
		    End If
		    ebOpened = True
		  End If
		  
		  'Success - no dialog
		  Self.RefreshInfos(Name)
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDrop()
		  Var username As String = Me.GetSelectedUsername()
		  If (username = "") Then Return
		  
		  dlgDrop.Title = "Drop User"
		  dlgDrop.Indicator = Indicators.Danger
		  dlgDrop.ActionButton.Caption = "Drop"
		  dlgDrop.CancelButton.Visible = True
		  dlgDrop.Message = "Are you sure you want to drop user '" + username + "'?"
		  dlgDrop.Explanation = "This action cannot be undone."
		  
		  esActionUsername = username
		  
		  dlgDrop.ShowWithActionDanger()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDropButtonPressed(obj As WebMessageDialog, button As WebMessageDialogButton)
		  Var sDropUsername As String = esActionUsername
		  esActionUsername = ""
		  
		  If (button <> obj.ActionButton) Then Return
		  If (sDropUsername = "") Then Return
		  
		  Try
		    Session.DB.ExecuteSQL("DROP USER '" + sDropUsername.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Drop User"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not drop user."
		    dialog.Explanation = "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message
		    dialog.Show
		    
		  Finally
		    Me.RefreshInfos()
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionGroups()
		  Var username As String = Me.GetSelectedUsername()
		  If (username = "") Then Return
		  
		  esActionUsername = username
		  
		  Var dlgGroups As New dlgUserGroups
		  AddHandler dlgGroups.NeedsRefresh, WeakAddressOf ActionGroupsButtonPressed
		  dlgGroups.Show(username)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionGroupsButtonPressed(obj As dlgUserGroups)
		  #Pragma unused obj
		  
		  Var sUsername As String = esActionUsername
		  esActionUsername = ""
		  
		  Self.RefreshInfos(sUsername)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionPassword()
		  Var username As String = Me.GetSelectedUsername()
		  If (username = "") Then Return
		  
		  Var dlgPassword As New dlgUserCreate
		  AddHandler dlgPassword.UserCreateAction, WeakAddressOf ActionPasswordButtonPressed
		  dlgPassword.ShowSetPassword(username)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionPasswordButtonPressed(obj As dlgUserCreate, Name As String, Password As String, Group As String) As Boolean
		  #Pragma unused obj
		  #Pragma unused Group
		  
		  If (Name = "") Then Return False
		  
		  Try
		    
		    Session.DB.ExecuteSQL("SET PASSWORD '" + Password.EscapeSqlQuotes + "' FOR USER '" + Name.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Set User Password"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not set user password."
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
		Private Sub ActionRename()
		  Var username As String = Me.GetSelectedUsername()
		  If (username = "") Then Return
		  
		  esActionUsername = username
		  
		  Var dlgRename As New dlgCommonName
		  AddHandler dlgRename.NameAction, WeakAddressOf ActionRenameButtonPressed
		  dlgRename.Show("Rename User", "Name", "Rename", Indicators.Primary, username)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionRenameButtonPressed(obj As dlgCommonName, Name As String) As Boolean
		  #Pragma unused obj
		  
		  If (esActionUsername = "") Then Return False
		  If (Name = "") Then Return False
		  If (esActionUsername = Name) Then Return False
		  
		  Try
		    
		    Session.DB.ExecuteSQL("RENAME USER '" + esActionUsername + "' TO '" + Name.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Rename User"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not rename user."
		    dialog.Explanation = "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message
		    dialog.Show
		    Return False
		    
		  End Try
		  
		  'Success - no dialog
		  Self.RefreshInfos(Name)
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Close()
		  Try
		    thrDetails.Stop
		  Catch err As RuntimeException
		    
		  End Try
		  
		  Super.Close()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  
		  Me.Area = "Security"
		  Me.Title = "Users"
		  Me.SearchAvailable = True
		  
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW USERS")
		    ebShowDetails = (rs <> Nil) And (rs.RowCount <= 10)
		    
		  Catch err As DatabaseException
		    ebShowDetails = False
		    
		  End Try
		  
		  
		  Redim Me.Columns(-1)
		  
		  Var col As DatasourceColumn
		  col = New DatasourceColumn()
		  col.Width = "*"
		  col.DatabaseColumnName = "username"
		  col.Heading = "Username"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.Ascending
		  Me.Columns.Add(col)
		  
		  If ebShowDetails Then
		    col = New DatasourceColumn()
		    col.Width = "10%"
		    col.DatabaseColumnName = "groupcount"
		    col.Heading = "#"
		    col.IsVirtual = True
		    col.IsSearchable = False
		    col.FieldType = DatasourceColumn.FieldTypes.Integer
		    col.Sortable = True
		    col.SortDirection = WebListBox.SortDirections.None
		    Me.Columns.Add(col)
		    
		    col = New DatasourceColumn()
		    col.Width = "50%"
		    col.DatabaseColumnName = "groupnames"
		    col.Heading = "Groups"
		    col.IsVirtual = True
		    col.FieldType = DatasourceColumn.FieldTypes.Text
		    col.Sortable = False
		    col.SortDirection = WebListBox.SortDirections.None
		    Me.Columns.Add(col)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetColumnData(col As DatasourceColumn, row As Dictionary) As Variant
		  Select Case col.DatabaseColumnName
		    
		  Case "groupcount"
		    Var iCount As Integer = row.Lookup(col.DatabaseColumnName, 0).IntegerValue
		    If (iCount < 1) Then Return ""
		    return New WebListBoxStyleRenderer(StyleListboxTextAlignCenter(), iCount.ToString)
		    
		  Else
		    Return super.GetColumnData(col, row)
		    
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSelectedUsername() As String
		  If (lstInfos.SelectedRowIndex < 0) Then Return ""
		  
		  Var selectedRowTag As Variant = lstInfos.RowTagAt(lstInfos.SelectedRowIndex)
		  If (selectedRowTag IsA Dictionary) Then
		    Return Dictionary(selectedRowTag).Lookup("username", "").StringValue
		  End If
		  
		  Return ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Load()
		  Me.LoadGroups()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadGroups()
		  lstFilterGroup.RemoveAllRows
		  lstFilterGroup.AddRow("(ALL)", "")
		  lstFilterGroup.AddRow("-", "")
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW GROUPS")
		    If (rs = Nil) Then Return
		    
		    If (rs.RowCount > 0) Then
		      rs.MoveToFirstRow
		      While (Not rs.AfterLastRow)
		        
		        If (rs.Column("groupname").StringValue <> "admin") Then
		          lstFilterGroup.AddRow(rs.Column("groupname").StringValue, rs.Column("groupname").StringValue)
		        End If
		        
		        rs.MoveToNextRow
		      Wend
		    End If
		    
		    rs.Close
		    
		  Catch DatabaseException
		    
		  Finally
		    If (lstFilterGroup.RowCount > 0) Then lstFilterGroup.SelectedRowIndex = 0
		    
		  End Try
		  
		  lstFilterGroup.AddRow("-", "")
		  lstFilterGroup.AddRow("(UNASSIGNED)", kGroupTagUnassigned)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  Var bGroups, bPassword, bRename, bDrop As Boolean
		  
		  Var username As String = Me.GetSelectedUsername()
		  If (username <> "admin") And (username <> "") Then
		    bGroups = True
		    bPassword = True
		    bRename = (username <> Session.DB.UserName)
		    bDrop = (username <> Session.DB.UserName)
		  End If
		  
		  If (btnGroups.Enabled <> bGroups) Then btnGroups.Enabled = bGroups
		  If (btnPassword.Enabled <> bPassword) Then btnPassword.Enabled = bPassword
		  If (btnRename.Enabled <> bRename) Then btnRename.Enabled = bRename
		  If (btnDrop.Enabled <> bDrop) Then btnDrop.Enabled = bDrop
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshInfos(selectUsername As String = "")
		  If (selectUsername = "") Then
		    selectUsername = Me.GetSelectedUsername()
		  End If
		  
		  esSelectAfterReload = selectUsername
		  
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
		Private Sub ShowDetails()
		  If (Not ebShowDetails) Then Return
		  
		  For Each dictRow As Dictionary In Me.TableRows
		    Try
		      Var username As String = dictRow.Lookup("username", "").StringValue
		      if (username = "") then continue
		      
		      Var rs As RowSet = Session.DB.SelectSQL("SHOW GROUPS FOR USER '" + username.EscapeSqlQuotes + "'")
		      
		      Var iCount As Integer = 0
		      Var sGroups() As String
		      
		      If (rs <> Nil) Then
		        iCount = rs.RowCount
		        
		        If (iCount > 0) Then
		          rs.MoveToFirstRow
		          While (Not rs.AfterLastRow)
		            sGroups.Add(rs.Column("groupname").StringValue)
		            
		            rs.MoveToNextRow
		          Wend
		        End If
		        
		        rs.Close
		      End If
		      
		      dictRow.Value("groupcount") = iCount
		      dictRow.Value("groupnames") = String.FromArray(sGroups, ", ")
		      
		    catch err As DatabaseException
		    end try
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowInfos()
		  Me.UpdateNoRowsMessage()
		  
		  Var filterGroupname As String = lstFilterGroup.RowTagAt(lstFilterGroup.SelectedRowIndex)
		  
		  If (filterGroupname <> "") Then
		    If (filterGroupname = kGroupTagUnassigned) Then
		      Me.LoadDatasource(Session.DB.SelectSQL("SHOW USERS IN GROUP ''"))
		    Else
		      Me.LoadDatasource(Session.DB.SelectSQL("SHOW USERS IN GROUP '" + filterGroupname.EscapeSqlQuotes + "'"))
		    End If
		  Else
		    Me.LoadDatasource(Session.DB.SelectSQL("SHOW USERS"))
		  End If
		  
		  
		  If (lstInfos.DataSource = Nil) Then
		    lstInfos.DataSource = Self
		  Else
		    lstInfos.ReloadData()
		  End If
		  
		  
		  If ebShowDetails Then
		    Try
		      thrDetails.Start
		    Catch err As RuntimeException
		      
		    End Try
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateNoRowsMessage()
		  Var sInfo As String = "No Users"
		  
		  Var filterGroupname As String = lstFilterGroup.RowTagAt(lstFilterGroup.SelectedRowIndex)
		  If (filterGroupname <> "") Then
		    sInfo = sInfo + " in Group " + filterGroupname
		    If (filterGroupname = kGroupTagUnassigned) Then
		      sInfo = "No Users unassigned to a Group"
		    End If
		  End If
		  
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
		      If (rowTag.Lookup("username", "").StringValue <> sSelectAfterReload) Then Continue
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
		Private ebOpened As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ebShowDetails As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esActionUsername As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esSelectAfterReload As String
	#tag EndProperty


	#tag Constant, Name = kGroupTagUnassigned, Type = , Dynamic = False, Default = \"-----", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events lstInfos
	#tag Event
		Sub Opening()
		  Me.ExecuteJavaScript("$('#" + Me.ControlID + "').addClass('listboxUsersHeaderAlignment')")
		  
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
#tag Events btnRename
	#tag Event
		Sub Pressed()
		  Self.ActionRename()
		  
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
#tag Events btnPassword
	#tag Event
		Sub Pressed()
		  Self.ActionPassword()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnGroups
	#tag Event
		Sub Pressed()
		  Self.ActionGroups()
		  
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
#tag Events lstFilterGroup
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  #Pragma unused item
		  
		  If (Not ebOpened) Then Return
		  
		  Self.RefreshInfos()
		  
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
