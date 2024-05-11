#tag WebContainerControl
Begin cntDatasourceBase cntPrivileges
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
	#tag Method, Flags = &h21
		Private Sub ActionGrant()
		  Var dlgGrant As New dlgPrivilegeGrant
		  AddHandler dlgGrant.PrivilegeGrantAction, WeakAddressOf ActionGrantButtonPressed
		  dlgGrant.Show(lstFilterGroup.SelectedRowText)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionGrantButtonPressed(obj As dlgPrivilegeGrant, Group As String, Privilege As String, Database As String, Table As String) As Boolean
		  #Pragma unused obj
		  
		  If (Group = "") Or (Group = "*") Or (Group = "admin") Then Return False
		  If (Privilege = "") Or (Privilege = "*") Then Return False
		  If (Database = "") Then Return False
		  If (Table = "") Then Return False
		  
		  Try
		    
		    Var sql As String = "GRANT '" + Privilege.EscapeSqlQuotes + "' TO GROUP '" + Group.EscapeSqlQuotes + "'"
		    If (Database <> "*") And (Table <> "*") Then sql = sql + " FOR TABLE '" + Table.EscapeSqlQuotes + "' IN DATABASE '" + Database.EscapeSqlQuotes + "'"
		    If (Database <> "*") And (Table = "*") Then sql = sql + " FOR DATABASE '" + Database.EscapeSqlQuotes + "'"
		    
		    Session.DB.ExecuteSQL(sql)
		    
		  Catch err As DatabaseException
		    ShowErrorDialog("Grant Privilege", "Could not grant privilege.", err)
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
		    lstFilterDatabase.SelectRowWithTag(Database)
		    ebOpened = True
		  End If
		  
		  
		  'Success - no dialog
		  Var selectRowTag As New Dictionary
		  selectRowTag.Value("groupname") = Group
		  selectRowTag.Value("privilege") = Privilege
		  selectRowTag.Value("databasename") = Database
		  selectRowTag.Value("tablename") = Table
		  
		  Me.RefreshInfos(selectRowTag)
		  Return True
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionRevoke()
		  Var privilege As Dictionary = Me.GetSelectedTableRowTag()
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
		    
		    Var sql As String = "REVOKE " + privName.EscapeSqlQuotes + " FROM GROUP '" + privGroup.EscapeSqlQuotes + "'"
		    If (privDB <> "*" And privTable = "*") Then sql = sql + " FOR DATABASE '" + privDB.EscapeSqlQuotes + "'"
		    If (privDB <> "*" And privTable <> "*") Then sql = sql + " FOR TABLE '" + privTable.EscapeSqlQuotes + "' IN DATABASE '" + privDB.EscapeSqlQuotes + "'"
		    
		    Session.DB.ExecuteSQL(sql)
		    
		  Catch err As DatabaseException
		    ShowErrorDialog("Revoke Privilege", "Could not revoke privilege.", err)
		    
		  Finally
		    Me.RefreshInfos()
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  
		  Me.Area = "Security"
		  Me.Title = "Privileges"
		  Me.Table = lstInfos
		  Me.SearchAvailable = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function GetDatabasesList() As String()
		  Var databases() As String
		  
		  Try
		    
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW DATABASES")
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
		    
		    rs = Session.DB.SelectSQL("SHOW ENGINE PREFERENCES")
		    If (rs <> Nil) Then
		      If (rs.RowCount > 0) Then
		        Var engineDatabase As String
		        rs.MoveToFirstRow
		        While (Not rs.AfterLastRow)
		          If (rs.Column("databasename").StringValue = "") Or (rs.Column("databasename").StringValue = "*") Then
		            rs.MoveToNextRow
		            Continue
		          End If
		          If (rs.Column("engine").StringValue = "") Then
		            rs.MoveToNextRow
		            Continue
		          End If
		          
		          engineDatabase = rs.Column("engine").StringValue + ":" + rs.Column("databasename").StringValue
		          If (databases.IndexOf(engineDatabase) < 0) Then
		            databases.Add(engineDatabase)
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
		  lstFilterDatabase.AddRow("-", "")
		  lstFilterDatabase.AddRow("*", "*")
		  lstFilterDatabase.AddRow("-", "")
		  
		  Var databases() As String = GetDatabasesList()
		  for each database as string in databases
		    lstFilterDatabase.AddRow(database, database)
		  next
		  
		  lstFilterDatabase.SelectedRowIndex = 0
		  
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
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  Var bGrant, bRevoke As Boolean
		  
		  Var selectedPrivilege As Dictionary = Me.GetSelectedTableRowTag()
		  
		  bGrant = True
		  If (selectedPrivilege <> Nil) And (selectedPrivilege.Lookup("groupname", "") <> "admin") Then
		    bRevoke = True
		  End If
		  
		  If (btnGrant.Enabled <> bGrant) Then btnGrant.Enabled = bGrant
		  If (btnRevoke.Enabled <> bRevoke) Then btnRevoke.Enabled = bRevoke
		  
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
		  col.Width = "*"
		  col.DatabaseColumnName = "groupname"
		  col.Heading = "Groupname"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.Ascending
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "15%"
		  col.DatabaseColumnName = "privilege"
		  col.Heading = "Privilege"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "25%"
		  col.DatabaseColumnName = "databasename"
		  col.Heading = "Databasename"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "30%"
		  col.DatabaseColumnName = "tablename"
		  col.Heading = "Tablename"
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
		  Return Session.DB.SelectSQL("SHOW ALL PRIVILEGES")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableNoRowsMessage() As String
		  Var sInfo As String = "No Privileges"
		  
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
		      If (rowTag.Lookup("groupname", "").StringValue = sSelectAfterReload.Lookup("groupname", "-").StringValue) And _
		        (rowTag.Lookup("privilege", "").StringValue = sSelectAfterReload.Lookup("privilege", "-").StringValue) And _
		        (rowTag.Lookup("databasename", "").StringValue = sSelectAfterReload.Lookup("databasename", "-").StringValue) And _
		        (rowTag.Lookup("tablename", "").StringValue = sSelectAfterReload.Lookup("tablename", "-").StringValue) Then
		        
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
		Private edictActionPrivilege As Dictionary
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
