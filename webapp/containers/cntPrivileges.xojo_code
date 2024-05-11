#tag WebContainerControl
Begin cntBase cntPrivileges
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
      ColumnCount     =   4
      ColumnWidths    =   "30%, 15%, 25%, 30%"
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
      NoRowsMessage   =   "No Privileges"
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
   Begin WebButton btnRevoke
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Revoke"
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
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebButton btnGrant
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Grant"
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
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin dlgPrivilegeGrant dlgGrant
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      esPreSelectGroup=   ""
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
         PanelIndex      =   0
         Parent          =   "rctFilter"
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Group(s):"
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
         PanelIndex      =   0
         Parent          =   "rctFilter"
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Database(s):"
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
         PanelIndex      =   0
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
   Begin WebMessageDialog dlgRevoke
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
		  Self.Load()
		  
		  Self.ShowInfos()
		  Self.RefreshButtons()
		  
		  ebOpened = True
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub ActionGrant()
		  dlgGrant.Show(lstFilterGroup.SelectedRowText)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionGrantButtonPressed(Group As String, Privilege As String, Database As String, Table As String) As Boolean
		  If (Group = "") Or (Group = "*") Or (Group = "admin") Then Return False
		  If (Privilege = "") Or (Privilege = "*") Then Return False
		  If (Database = "") Then Return False
		  If (Table = "") Then Return False
		  
		  Try
		    
		    Var sql As String = "GRANT '" + Privilege + "' TO GROUP '" + Group + "'"
		    If (Database <> "*") And (Table <> "*") Then sql = sql + " FOR TABLE '" + Table + "' IN DATABASE '" + Database + "'"
		    If (Database <> "*") And (Table = "*") Then sql = sql + " FOR DATABASE '" + Database + "'"
		    
		    Session.DB.ExecuteSQL(sql)
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Grant Privilege"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not grant privilege."
		    dialog.Explanation = "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message
		    dialog.Show
		    Return False
		    
		  End Try
		  
		  'Success - no dialog
		  Var selectRowTag As New Dictionary
		  selectRowTag.Value("groupname") = Group
		  selectRowTag.Value("privilege") = Privilege
		  selectRowTag.Value("databasename") = Database
		  selectRowTag.Value("tablename") = Table
		  
		  Self.RefreshInfos(selectRowTag)
		  Return True
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionRevoke()
		  Var privilege As Dictionary = Me.GetSelectedPrivilege()
		  If (privilege = Nil) Then Return
		  
		  Var privGroup As String = privilege.Lookup("groupname", "")
		  Var privName As String = privilege.Lookup("privilege", "")
		  Var privDB As String = privilege.Lookup("databasename", "")
		  Var privTable As String = privilege.Lookup("tablename", "")
		  
		  Var privilegeCaption As String = privName + " privilege"
		  If (privDB = "*" And privTable = "*") Then privilegeCaption = privilegeCaption + " on the entire server"
		  If (privDB <> "*" And privTable = "*") Then privilegeCaption = privilegeCaption + " on database " +  privDB
		  If (privDB <> "*" And privTable <> "*") Then privilegeCaption = privilegeCaption + " on database " +  privDB + " on table " + privTable
		  If (privDB = "*" And privTable <> "*") Then privilegeCaption = privilegeCaption + " on table " +  privTable
		  
		  
		  dlgRevoke.Title = "Revoke Privilege"
		  dlgRevoke.Indicator = Indicators.Danger
		  dlgRevoke.ActionButton.Caption = "Revoke"
		  dlgRevoke.CancelButton.Visible = True
		  dlgRevoke.Message = "Are you sure you want to revoke the " +  privilegeCaption + " for group " + privGroup + "?"
		  dlgRevoke.Explanation = "This action cannot be undone."
		  
		  edictActionPrivilege = privilege
		  
		  dlgRevoke.ShowWithActionDanger()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionRevokeButtonPressed(obj As WebMessageDialog, button As WebMessageDialogButton)
		  Var dictRevokePrivilege As Dictionary = edictActionPrivilege
		  edictActionPrivilege = Nil
		  
		  If (button <> obj.ActionButton) Then Return
		  If (dictRevokePrivilege = Nil) Then Return
		  
		  Try
		    Var privGroup As String = dictRevokePrivilege.Lookup("groupname", "")
		    Var privName As String = dictRevokePrivilege.Lookup("privilege", "")
		    Var privDB As String = dictRevokePrivilege.Lookup("databasename", "")
		    Var privTable As String = dictRevokePrivilege.Lookup("tablename", "")
		    
		    Var sql As String = "REVOKE " + privName + " FROM GROUP '" + privGroup + "'"
		    If (privDB <> "*" And privTable = "*") Then sql = sql + " FOR DATABASE '" + privDB + "'"
		    If (privDB <> "*" And privTable <> "*") Then sql = sql + " FOR TABLE '" + privTable + "' IN DATABASE '" + privDB + "'"
		    
		    Session.DB.ExecuteSQL(sql)
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Drop Privilege"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not drop privilege."
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
		  
		  me.Title = "Privileges"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSelectedPrivilege() As Dictionary
		  If (lstInfos.SelectedRowIndex >= 0) And (lstInfos.RowTagAt(lstInfos.SelectedRowIndex) IsA Dictionary) Then
		    Return lstInfos.RowTagAt(lstInfos.SelectedRowIndex)
		  End If
		  
		  Return Nil
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Load()
		  Me.LoadGroups()
		  me.LoadDatabases()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadDatabases()
		  lstFilterDatabase.RemoveAllRows
		  lstFilterDatabase.AddRow("(ALL)", "*")
		  lstFilterDatabase.AddRow("-", "*")
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW DATABASES")
		    If (rs = Nil) Then Return
		    
		    If (rs.RowCount > 0) Then
		      rs.MoveToFirstRow
		      While (Not rs.AfterLastRow)
		        lstFilterDatabase.AddRow(rs.Column("databasename").StringValue, rs.Column("databasename").StringValue)
		        
		        rs.MoveToNextRow
		      Wend
		    End If
		    
		    rs.Close
		    
		  Catch DatabaseException
		    
		  Finally
		    If (lstFilterDatabase.RowCount > 0) Then lstFilterDatabase.SelectedRowIndex = 0
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadGroups()
		  lstFilterGroup.RemoveAllRows
		  lstFilterGroup.AddRow("(ALL)", "*")
		  lstFilterGroup.AddRow("-", "*")
		  
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
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  Var bRevoke As Boolean
		  
		  Var selectedPrivilege As Dictionary = me.GetSelectedPrivilege()
		  
		  If (selectedPrivilege <> Nil) And (selectedPrivilege.Lookup("groupname", "*") <> "admin") Then
		    bRevoke = True
		  End If
		  
		  If (btnRevoke.Enabled <> bRevoke) Then btnRevoke.Enabled = bRevoke
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshInfos(selectRowTag As Dictionary = nil)
		  If (selectRowTag = Nil) And (lstInfos.SelectedRowIndex >= 0) Then
		    selectRowTag = Me.GetSelectedPrivilege()
		  End If
		  
		  Me.ShowInfos()
		  
		  If (selectRowTag = Nil) Then
		    Me.RefreshButtons()
		    Return
		  End If
		  
		  For i As Integer = lstInfos.LastRowIndex DownTo 0
		    Var rowTag As Dictionary
		    If (lstInfos.RowTagAt(i) IsA Dictionary) Then
		      rowTag = lstInfos.RowTagAt(i)
		    End If
		    If (rowTag = Nil) Then Continue
		    
		    
		    If (rowTag.Lookup("groupname", "").StringValue = selectRowTag.Lookup("groupname", "-").StringValue) And _
		      (rowTag.Lookup("privilege", "").StringValue = selectRowTag.Lookup("privilege", "-").StringValue) And _
		      (rowTag.Lookup("databasename", "").StringValue = selectRowTag.Lookup("databasename", "-").StringValue) And _
		      (rowTag.Lookup("tablename", "").StringValue = selectRowTag.Lookup("tablename", "-").StringValue) Then
		      
		      lstInfos.SelectedRowIndex = i
		      Exit 'Loop
		    End If
		  Next
		  
		  Me.RefreshButtons()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowInfos()
		  lstInfos.RemoveAllRows
		  
		  Var filterGroupname As String = lstFilterGroup.RowTagAt(lstFilterGroup.SelectedRowIndex)
		  Var filterDatabasename As String = lstFilterDatabase.RowTagAt(lstFilterDatabase.SelectedRowIndex)
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW ALL PRIVILEGES")
		    If (rs = Nil) Then Return
		    
		    If (rs.RowCount > 0) Then
		      rs.MoveToFirstRow
		      While (Not rs.AfterLastRow)
		        Var dictRowTag As New Dictionary
		        dictRowTag.Value("groupname") = rs.Column("groupname").StringValue
		        dictRowTag.Value("privilege") = rs.Column("privilege").StringValue
		        dictRowTag.Value("databasename") = rs.Column("databasename").StringValue
		        dictRowTag.Value("tablename") = rs.Column("tablename").StringValue
		        
		        'Filter
		        If (filterGroupname <> "") And (filterGroupname <> "*") Then
		          If (dictRowTag.Lookup("groupname", "").StringValue <> filterGroupname) Then
		            rs.MoveToNextRow
		            Continue
		          End If
		        End If
		        
		        If (filterDatabasename <> "") And (filterDatabasename <> "*") Then
		          If (dictRowTag.Lookup("databasename", "").StringValue <> "*") And _
		            (dictRowTag.Lookup("databasename", "").StringValue <> filterDatabasename) Then
		            rs.MoveToNextRow
		            Continue
		          End If
		        End If
		        
		        lstInfos.AddRow("")
		        lstInfos.RowTagAt(lstInfos.LastAddedRowIndex) = dictRowTag
		        
		        lstInfos.CellTextAt(lstInfos.LastAddedRowIndex, 0) = dictRowTag.Lookup("groupname", "").StringValue
		        lstInfos.CellTextAt(lstInfos.LastAddedRowIndex, 1) = dictRowTag.Lookup("privilege", "").StringValue
		        lstInfos.CellTextAt(lstInfos.LastAddedRowIndex, 2) = dictRowTag.Lookup("databasename", "").StringValue
		        lstInfos.CellTextAt(lstInfos.LastAddedRowIndex, 3) = dictRowTag.Lookup("tablename", "").StringValue
		        
		        rs.MoveToNextRow
		      Wend
		    End If
		    
		    rs.Close
		    
		    
		  Catch DatabaseException
		    
		  End Try
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private ebOpened As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private edictActionPrivilege As Dictionary
	#tag EndProperty


#tag EndWindowCode

#tag Events lstInfos
	#tag Event
		Sub Opening()
		  Me.HeaderAt(0) = "Groupname"
		  Me.HeaderAt(1) = "Privilege"
		  Me.HeaderAt(2) = "Databasename"
		  Me.HeaderAt(3) = "Tablename"
		  
		  Me.ColumnSortTypeAt(0) = WebListBox.SortTypes.Sortable
		  Me.ColumnSortDirectionAt(0) = WebListbox.SortDirections.Ascending
		  
		  For i As Integer = 1 To 3
		    Me.ColumnSortTypeAt(i) = WebListBox.SortTypes.Sortable
		    Me.ColumnSortDirectionAt(i) = WebListbox.SortDirections.None
		  Next
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(rows() As Integer)
		  #Pragma unused rows
		  
		  If (Not ebOpened) Then Return
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRevoke
	#tag Event
		Sub Pressed()
		  Self.ActionRevoke()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnGrant
	#tag Event
		Sub Pressed()
		  Self.ActionGrant()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events dlgGrant
	#tag Event
		Function PrivilegeGrantAction(Group As String, Privilege As String, Database As String, Table As String) As Boolean
		  Return Self.ActionGrantButtonPressed(Group, Privilege, Database, Table)
		  
		End Function
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
#tag Events lstFilterDatabase
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  #Pragma unused item
		  
		  If (Not ebOpened) Then Return
		  
		  Self.RefreshInfos()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events dlgRevoke
	#tag Event
		Sub ButtonPressed(button As WebMessageDialogButton)
		  Self.ActionRevokeButtonPressed(Me, button)
		  
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
