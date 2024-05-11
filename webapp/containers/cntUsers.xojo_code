#tag WebContainerControl
Begin cntBase cntUsers
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
   _mName          =   ""
   _mPanelIndex    =   -1
   Begin WebListBox lstInfos
      ColumnCount     =   3
      ColumnWidths    =   "30%, 10%, 60%"
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
      TabIndex        =   4
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
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   3
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
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin dlgUserCreate dlgCreate
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      Height          =   314
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   5
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   600
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin dlgCommonName dlgRename
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      Height          =   314
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   40
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   6
      TabStop         =   True
      Tooltip         =   ""
      Top             =   40
      Visible         =   True
      Width           =   600
      _mDesignHeight  =   0
      _mDesignWidth   =   0
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
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   140
      _mPanelIndex    =   -1
   End
   Begin dlgUserCreate dlgPassword
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      Height          =   314
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   40
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   7
      TabStop         =   True
      Tooltip         =   ""
      Top             =   40
      Visible         =   True
      Width           =   600
      _mDesignHeight  =   0
      _mDesignWidth   =   0
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
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   8
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin dlgUserGroups dlgGroups
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      Height          =   314
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   40
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   9
      TabStop         =   True
      Tooltip         =   ""
      Top             =   40
      Visible         =   True
      Width           =   600
      _mDesignHeight  =   0
      _mDesignWidth   =   0
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
		  dlgCreate.Show()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionCreateButtonPressed(Name As String, Password As String) As Boolean
		  If (Name = "") Then Return False
		  
		  Try
		    
		    Session.DB.ExecuteSQL("CREATE USER " + "'" + Name + "' WITH PASSWORD '" + Password + "'")
		    
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
		    Session.DB.ExecuteSQL("DROP USER '" + sDropUsername)
		    
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
		  
		  dlgGroups.Show(username)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionGroupsButtonPressed()
		  Var sUsername As String = esActionUsername
		  esActionUsername = ""
		  
		  Self.RefreshInfos(sUsername)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionPassword()
		  Var username As String = Me.GetSelectedUsername()
		  If (username = "") Then Return
		  
		  dlgPassword.ShowSetPassword(username)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionPasswordButtonPressed(Name As String, Password As String) As Boolean
		  If (Name = "") Then Return False
		  
		  Try
		    
		    Session.DB.ExecuteSQL("SET PASSWORD '" + Password + "' FOR USER " + "'" + Name)
		    
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
		  
		  dlgRename.Show("Rename User", "Name", "Rename", Indicators.Primary, username)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionRenameButtonPressed(Name As String) As Boolean
		  If (esActionUsername = "") Then Return False
		  If (Name = "") Then Return False
		  If (esActionUsername = Name) Then Return False
		  
		  Try
		    
		    Session.DB.ExecuteSQL("RENAME USER '" + esActionUsername + "' TO " + "'" + Name + "'")
		    
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
		  
		  me.Title = "Users"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSelectedUsername() As String
		  If (lstInfos.SelectedRowIndex < 0) Then Return ""
		  return lstInfos.CellTextAt(lstInfos.SelectedRowIndex, 0)
		  
		End Function
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
		  
		  Me.ShowInfos()
		  
		  If (selectUsername = "") Then
		    Me.RefreshButtons()
		    Return
		  End If
		  
		  For i As Integer = lstInfos.LastRowIndex DownTo 0
		    If (lstInfos.CellTextAt(i, 0) <> selectUsername) Then Continue
		    
		    lstInfos.SelectedRowIndex = i
		    Exit 'Loop
		  Next
		  
		  Me.RefreshButtons()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowDetails()
		  Var styleCenter As WebStyle = StyleListboxTextAlignCenter()
		  
		  Var iLast As Integer = lstInfos.LastRowIndex
		  For i As Integer = 0 To iLast
		    Var username As String = lstInfos.CellTextAt(i, 0)
		    If (username = "") Then Continue
		    
		    Try
		      Var rs As RowSet = Session.DB.SelectSQL("SHOW GROUPS FOR USER '" + username + "'")
		      
		      Var iCount As Integer = 0
		      Var sUsers() As String
		      
		      If (rs <> Nil) Then
		        iCount = rs.RowCount
		        
		        If (iCount > 0) Then
		          rs.MoveToFirstRow
		          While (Not rs.AfterLastRow)
		            sUsers.Add(rs.Column("groupname").StringValue)
		            
		            rs.MoveToNextRow
		          Wend
		        End If
		        
		        rs.Close
		      End If
		      
		      lstInfos.CellTextAt(i, 1) = New WebListBoxStyleRenderer(styleCenter, iCount.ToString)
		      lstInfos.CellTextAt(i, 2) = String.FromArray(sUsers, ", ")
		      
		    Catch DatabaseException
		      
		    End Try
		    
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowInfos()
		  lstInfos.RemoveAllRows
		  
		  Try
		    thrDetails.Stop
		  Catch err As RuntimeException
		    
		  End Try
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW USERS")
		    If (rs = Nil) Then Return
		    
		    If (rs.RowCount > 0) Then
		      rs.MoveToFirstRow
		      While (Not rs.AfterLastRow)
		        lstInfos.AddRow(rs.Column("username").StringValue)
		        
		        rs.MoveToNextRow
		      Wend
		    End If
		    
		    
		    rs.Close
		    
		    
		  Catch DatabaseException
		    
		  Finally
		    
		    Try
		      thrDetails.Start
		    Catch err As RuntimeException
		      
		    End Try
		    
		  End Try
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private esActionUsername As String
	#tag EndProperty


#tag EndWindowCode

#tag Events lstInfos
	#tag Event
		Sub Opening()
		  Me.ExecuteJavaScript("$('#" + Me.ControlID + "').addClass('listboxUsersHeaderAlignment')")
		  
		  Me.HeaderAt(0) = "Username"
		  Me.HeaderAt(1) = "#"
		  Me.HeaderAt(2) = "Groups"
		  
		  Me.ColumnSortTypeAt(0) = WebListBox.SortTypes.Sortable
		  Me.ColumnSortDirectionAt(0) = WebListbox.SortDirections.Ascending
		  
		  For i As Integer = 1 To 2
		    Me.ColumnSortTypeAt(i) = WebListBox.SortTypes.Unsortable
		    Me.ColumnSortDirectionAt(i) = WebListbox.SortDirections.None
		  Next
		  
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
#tag Events dlgCreate
	#tag Event
		Function UserCreateAction(Name As String, Password As String) As Boolean
		  Return Self.ActionCreateButtonPressed(Name, Password)
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events dlgRename
	#tag Event
		Function NameAction(Name As String) As Boolean
		  Return Self.ActionRenameButtonPressed(Name)
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events thrDetails
	#tag Event
		Sub Run()
		  Try
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
#tag Events dlgPassword
	#tag Event
		Function UserCreateAction(Name As String, Password As String) As Boolean
		  Return Self.ActionPasswordButtonPressed(Name, Password)
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnGroups
	#tag Event
		Sub Pressed()
		  Self.ActionGroups()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events dlgGroups
	#tag Event
		Sub NeedsRefresh()
		  self.ActionGroupsButtonPressed()
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
