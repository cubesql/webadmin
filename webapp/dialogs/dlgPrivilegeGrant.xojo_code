#tag WebPage
Begin dlgBase dlgPrivilegeGrant
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   Enabled         =   True
   Height          =   372
   Index           =   -2147483648
   Indicator       =   0
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   LockVertical    =   False
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   600
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mName          =   ""
   _mPanelIndex    =   -1
   Begin WebLabel labTitle
      Bold            =   True
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   24.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   2
      TabIndex        =   0
      TabStop         =   True
      Text            =   "Grant Privilege"
      TextAlignment   =   2
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   560
      _mPanelIndex    =   -1
   End
   Begin WebRectangle rctFormContent
      BackgroundColor =   &cFFFFFF
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      HasBackgroundColor=   False
      Height          =   222
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   66
      Visible         =   True
      Width           =   580
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
      Begin WebLabel labPrivilege
         Bold            =   False
         ControlID       =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "rctFormContent"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Privilege:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   132
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebLabel labGroup
         Bold            =   False
         ControlID       =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "rctFormContent"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Group:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   86
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebLabel labDatabase
         Bold            =   False
         ControlID       =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "rctFormContent"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Database:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   178
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu lstGroup
         ControlID       =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "rctFormContent"
         InitialValue    =   ""
         LastAddedRowIndex=   0
         LastRowIndex    =   0
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Parent          =   "rctFormContent"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   0
         SelectedRowText =   ""
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   86
         Visible         =   True
         Width           =   392
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu lstPrivilege
         ControlID       =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   ""
         LastAddedRowIndex=   0
         LastRowIndex    =   0
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   0
         SelectedRowText =   ""
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   132
         Visible         =   True
         Width           =   392
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu lstDatabase
         ControlID       =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   ""
         LastAddedRowIndex=   0
         LastRowIndex    =   0
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   0
         SelectedRowText =   ""
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   178
         Visible         =   True
         Width           =   392
         _mPanelIndex    =   -1
      End
      Begin WebLabel labTable
         Bold            =   False
         ControlID       =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Table:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   224
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu lstTable
         ControlID       =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   ""
         LastAddedRowIndex=   0
         LastRowIndex    =   0
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   0
         SelectedRowText =   ""
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   224
         Visible         =   True
         Width           =   392
         _mPanelIndex    =   -1
      End
   End
   Begin WebButton btnGrant
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Grant"
      ControlID       =   ""
      Default         =   True
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   480
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
      Top             =   314
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebButton btnCancel
      AllowAutoDisable=   False
      Cancel          =   True
      Caption         =   "Cancel"
      ControlID       =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Left            =   372
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   314
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub Load()
		  Me.LoadGroup()
		  Me.LoadPrivileges()
		  Me.LoadDatabases()
		  Me.LoadTables()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadDatabases()
		  lstDatabase.RemoveAllRows
		  lstDatabase.AddRow("(ALL)", "*")
		  lstDatabase.AddRow("-", "*")
		  
		  Var databases() As String = cntPrivileges.GetDatabasesList()
		  for each database as string in databases
		    lstDatabase.AddRow(database, database)
		  next
		  
		  lstDatabase.SelectedRowIndex = 0
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadGroup()
		  lstGroup.RemoveAllRows
		  
		  Var iPreSelectGroup As Integer = -1
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW GROUPS")
		    If (rs = Nil) Then Return
		    
		    If (rs.RowCount > 0) Then
		      rs.MoveToFirstRow
		      While (Not rs.AfterLastRow)
		        
		        If (rs.Column("groupname").StringValue <> "admin") Then
		          lstGroup.AddRow(rs.Column("groupname").StringValue, rs.Column("groupname").StringValue)
		          If (esPreSelectGroup <> "") And (esPreSelectGroup = rs.Column("groupname").StringValue) Then
		            iPreSelectGroup = lstGroup.LastAddedRowIndex
		          End If
		        End If
		        
		        rs.MoveToNextRow
		      Wend
		    End If
		    
		    rs.Close
		    
		  Catch DatabaseException
		    
		  Finally
		    If (iPreSelectGroup >= 0) And (lstGroup.LastRowIndex >= iPreSelectGroup) Then
		      lstGroup.SelectedRowIndex = iPreSelectGroup
		    Else
		      If (lstGroup.RowCount > 0) Then lstGroup.SelectedRowIndex = 0
		    End If
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadPrivileges()
		  lstPrivilege.RemoveAllRows
		  
		  Var privileges() As String
		  
		  Try
		    
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW PRIVILEGES TABLE")
		    If (rs = Nil) Then Return
		    
		    If (rs.RowCount > 0) Then
		      rs.MoveToFirstRow
		      While (Not rs.AfterLastRow)
		        Var priv As String = rs.Column("name").StringValue
		        If (priv <> "") And (privileges.IndexOf(priv) < 0) Then
		          privileges.Add(priv)
		        End If
		        
		        rs.MoveToNextRow
		      Wend
		    End If
		    
		    rs.Close
		    
		    
		  Catch DatabaseException
		    
		  Finally
		    
		    privileges.Sort()
		    
		    For Each sAddPrivilege As String In privileges
		      lstPrivilege.AddRow(sAddPrivilege, sAddPrivilege)
		    Next
		    
		    If (lstPrivilege.RowCount > 0) Then lstPrivilege.SelectedRowIndex = 0
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadTables()
		  lstTable.RemoveAllRows
		  lstTable.AddRow("(ALL)", "*")
		  
		  Var databaseName As String = lstDatabase.RowTagAt(lstDatabase.SelectedRowIndex).StringValue
		  If (databaseName = "") Or (databaseName = "*") Then
		    If (lstTable.RowCount > 0) Then lstTable.SelectedRowIndex = 0
		    Return
		  End If
		  
		  lstTable.AddRow("-", "*")
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW TABLES FOR DATABASE '" + databaseName.EscapeSqlQuotes + "'")
		    If (rs = Nil) Then Return
		    
		    If (rs.RowCount > 0) Then
		      rs.MoveToFirstRow
		      While (Not rs.AfterLastRow)
		        lstTable.AddRow(rs.Column("tablename").StringValue, rs.Column("tablename").StringValue)
		        
		        rs.MoveToNextRow
		      Wend
		    End If
		    
		    rs.Close
		    
		  Catch DatabaseException
		    
		  Finally
		    If (lstTable.RowCount > 0) Then lstTable.SelectedRowIndex = 0
		    
		  End Try
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  Var Group As String = lstGroup.RowTagAt(lstGroup.SelectedRowIndex).StringValue
		  Var Privilege As String = lstPrivilege.RowTagAt(lstPrivilege.SelectedRowIndex).StringValue
		  
		  btnGrant.Enabled = (Group <> "admin") And (Group <> "*") And (Group <> "") _
		  And (Privilege <> "*") And (Privilege <> "")
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Show(PreSelectGroup As String)
		  esPreSelectGroup = PreSelectGroup
		  
		  Me.Load()
		  Me.RefreshButtons()
		  
		  Super.Show()
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event PrivilegeGrantAction(Group As String, Privilege As String, Database As String, Table As String) As Boolean
	#tag EndHook


	#tag Property, Flags = &h21
		Private esPreSelectGroup As String
	#tag EndProperty


#tag EndWindowCode

#tag Events lstGroup
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  #Pragma unused item
		  
		  If (Not ebShown) Then Return
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstPrivilege
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  #Pragma unused item
		  
		  If (Not ebShown) Then Return
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstDatabase
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  #Pragma unused item
		  
		  If (Not ebShown) Then Return
		  
		  Self.LoadTables()
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstTable
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  #Pragma unused item
		  
		  If (Not ebShown) Then Return
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnGrant
	#tag Event
		Sub Pressed()
		  If PrivilegeGrantAction( _
		    lstGroup.RowTagAt(lstGroup.SelectedRowIndex).StringValue, _
		    lstPrivilege.RowTagAt(lstPrivilege.SelectedRowIndex).StringValue, _
		    lstDatabase.RowTagAt(lstDatabase.SelectedRowIndex).StringValue, _
		    lstTable.RowTagAt(lstTable.SelectedRowIndex).StringValue _
		    ) Then
		    Self.Close()
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Pressed()
		  Self.Close()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
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
		Name="Index"
		Visible=false
		Group="ID"
		InitialValue="-2147483648"
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
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutType"
		Visible=true
		Group="Behavior"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
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
		Name="LayoutDirection"
		Visible=true
		Group="WebView"
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
#tag EndViewBehavior
