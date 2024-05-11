#tag WebContainerControl
Begin cntBase cntDatabases
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
      ColumnCount     =   5
      ColumnWidths    =   "10%,50%,10%,20%,10%"
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
      NoRowsMessage   =   "No Databases"
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
      TabIndex        =   5
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
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
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   4
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
   Begin dlgDatabaseCreate dlgCreate
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
      Left            =   306
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
      Width           =   100
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
      Left            =   60
      LockBottom      =   False
      LockedInPosition=   True
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
      Top             =   60
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
		Private Function ActionCreateButtonPressed(Name As String, Key As String, Encoding As String) As Boolean
		  If (Name = "") Then Return False
		  
		  Try
		    
		    Var sqlCreateDb As String = "CREATE DATABASE " + "'" + Name + "'"
		    If (Key <> "") Then sqlCreateDb = sqlCreateDb + " WITH KEY " + "'" + Key + "'"
		    If (Encoding <> "UTF-8") Then sqlCreateDb = sqlCreateDb + " WITH ENCODING " + Encoding
		    
		    Session.DB.ExecuteSQL(sqlCreateDb)
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Create Database"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not create database."
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
		  Var dbRowTag As Dictionary = Me.GetSelectedDbRowTag()
		  If (dbRowTag = Nil) Or (dbRowTag.Lookup("databasename", "") = "") Then Return
		  
		  
		  dlgDrop.Title = "Drop Database"
		  dlgDrop.Indicator = Indicators.Danger
		  dlgDrop.ActionButton.Caption = "Drop"
		  dlgDrop.CancelButton.Visible = True
		  dlgDrop.Message = "Are you sure you want to drop database '" + dbRowTag.Lookup("databasename", "") + "'?"
		  dlgDrop.Explanation = "This action cannot be undone."
		  
		  esActionDatabasename = dbRowTag.Lookup("databasename", "")
		  
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
		    Session.DB.ExecuteSQL("DROP DATABASE '" + sDropDatabasename + "' IF EXISTS")
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Drop Database"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not drop database."
		    dialog.Explanation = "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message
		    dialog.Show
		    
		  Finally
		    Me.RefreshInfos()
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionRename()
		  Var dbRowTag As Dictionary = Me.GetSelectedDbRowTag()
		  If (dbRowTag = Nil) Or (dbRowTag.Lookup("databasename", "") = "") Then Return
		  
		  Var databasename As String = dbRowTag.Lookup("databasename", "")
		  esActionDatabasename = databasename
		  
		  dlgRename.Show("Rename Database", "Name", "Rename", Indicators.Primary, databasename)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionRenameButtonPressed(Name As String) As Boolean
		  If (esActionDatabasename = "") Then Return False
		  If (Name = "") Then Return False
		  If (esActionDatabasename = Name) Then Return False
		  
		  Try
		    
		    Session.DB.ExecuteSQL("RENAME DATABASE '" + esActionDatabasename + "' TO " + "'" + Name + "'")
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Rename Database"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not rename database."
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
		Private Sub ActionStart()
		  Var dbRowTag As Dictionary = Me.GetSelectedDbRowTag()
		  If (dbRowTag = Nil) Then Return
		  
		  Try
		    Session.DB.ExecuteSQL("START DATABASE '" + dbRowTag.Lookup("databasename", "") + "'")
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Start database"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not start database."
		    dialog.Explanation = "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message
		    dialog.Show
		    
		  Finally
		    Me.RefreshInfos()
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionStop()
		  Var dbRowTag As Dictionary = Me.GetSelectedDbRowTag()
		  If (dbRowTag = Nil) Then Return
		  
		  Try
		    Session.DB.ExecuteSQL("STOP DATABASE '" + dbRowTag.Lookup("databasename", "") + "'")
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Stop database"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not stop database."
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
		  
		  me.Title = "Databases"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSelectedDbRowTag() As Dictionary
		  If (lstInfos.SelectedRowIndex < 0) Then Return Nil
		  
		  If (lstInfos.RowTagAt(lstInfos.SelectedRowIndex) IsA Dictionary) Then
		    Var dbRowTag As Dictionary = lstInfos.RowTagAt(lstInfos.SelectedRowIndex)
		    Return dbRowTag
		  End If
		  
		  Return Nil
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  Var bRename, bStart, bStop, bDrop As Boolean
		  
		  If (lstInfos.SelectedRowIndex >= 0) Then
		    If (lstInfos.RowTagAt(lstInfos.SelectedRowIndex) IsA Dictionary) Then
		      Var dbRowTag As Dictionary = lstInfos.RowTagAt(lstInfos.SelectedRowIndex)
		      
		      bRename = True
		      bStart = dbRowTag.Lookup("stopped", False) = True
		      bStop = (Not bStart)
		      bDrop = True
		      
		    End If
		  End If
		  
		  If (btnRename.Enabled <> bRename) Then btnRename.Enabled = bRename
		  If (btnStart.Enabled <> bStart) Then btnStart.Enabled = bStart
		  If (btnStop.Enabled <> bStop) Then btnStop.Enabled = bStop
		  If (btnDrop.Enabled <> bDrop) Then btnDrop.Enabled = bDrop
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshInfos(selectDatabasename As String = "")
		  If (selectDatabasename = "") Then
		    Var dbRowTag As Dictionary = Me.GetSelectedDbRowTag()
		    If (dbRowTag <> Nil) Then
		      selectDatabasename = dbRowTag.Lookup("databasename", "")
		    End If
		  End If
		  
		  Me.ShowInfos()
		  
		  If (selectDatabasename = "") Then
		    Me.RefreshButtons()
		    Return
		  End If
		  
		  For i As Integer = lstInfos.LastRowIndex DownTo 0
		    If (lstInfos.CellTextAt(i, 1) <> selectDatabasename) Then Continue
		    
		    lstInfos.SelectedRowIndex = i
		    Exit 'Loop
		  Next
		  
		  Me.RefreshButtons()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowInfos()
		  lstInfos.RemoveAllRows
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW DATABASES WITH DETAILS")
		    If (rs = Nil) Then Return
		    
		    Var styleCenter As WebStyle = StyleListboxTextAlignCenter()
		    Var styleCenterGreen As WebStyle = StyleListboxTextAlignCenterGreen()
		    
		    If (rs.RowCount > 0) Then
		      rs.MoveToFirstRow
		      While (Not rs.AfterLastRow)
		        lstInfos.AddRow("")
		        
		        Var icon As WebPicture
		        If rs.Column("stopped").BooleanValue Then
		          icon = WebPicture.BootstrapIcon("stop-circle-fill", Color.Orange)
		        Else
		          If rs.Column("available").BooleanValue Then
		            icon = WebPicture.BootstrapIcon("check-circle-fill", Color.Green)
		          Else
		            icon = WebPicture.BootstrapIcon("exclamation-circle-fill", Color.Red)
		          End If
		        End If
		        
		        lstInfos.CellTextAt(lstInfos.LastAddedRowIndex, 0) = New WebListboxImageRenderer(icon.URL, True)
		        lstInfos.CellTextAt(lstInfos.LastAddedRowIndex, 1) = rs.Column("databasename").StringValue
		        lstInfos.CellTextAt(lstInfos.LastAddedRowIndex, 2) = New WebListBoxStyleRenderer(styleCenter, If(rs.Column("locked").IntegerValue > 0, "yes", "no"))
		        lstInfos.CellTextAt(lstInfos.LastAddedRowIndex, 3) = rs.Column("lockowner").StringValue
		        If rs.Column("encrypted").BooleanValue Then
		          lstInfos.CellTextAt(lstInfos.LastAddedRowIndex, 4) = New WebListBoxStyleRenderer(styleCenterGreen, "yes")
		        Else
		          lstInfos.CellTextAt(lstInfos.LastAddedRowIndex, 4) = New WebListBoxStyleRenderer(styleCenter, "no")
		        End If
		        
		        Var dbRowTag As New Dictionary
		        dbRowTag.Value("stopped") = rs.Column("stopped").BooleanValue
		        dbRowTag.Value("available") = rs.Column("available").BooleanValue
		        dbRowTag.Value("databasename") = rs.Column("databasename").StringValue
		        
		        lstInfos.RowTagAt(lstInfos.LastAddedRowIndex) = dbRowTag
		        
		        rs.MoveToNextRow
		      Wend
		    End If
		    
		    
		    rs.Close
		    
		    
		  Catch DatabaseException
		    
		  End Try
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private esActionDatabasename As String
	#tag EndProperty


#tag EndWindowCode

#tag Events lstInfos
	#tag Event
		Sub Opening()
		  Me.ExecuteJavaScript("$('#" + Me.ControlID + "').addClass('listboxDbHeaderAlignment')")
		  
		  Me.HeaderAt(0) = "Status"
		  Me.HeaderAt(1) = "Name"
		  Me.HeaderAt(2) = "Locked"
		  Me.HeaderAt(3) = "Lock Owner"
		  Me.HeaderAt(4) = "Encrypted"
		  
		  Me.ColumnSortTypeAt(0) = WebListBox.SortTypes.Unsortable
		  Me.ColumnSortDirectionAt(0) = WebListbox.SortDirections.None
		  
		  Me.ColumnSortTypeAt(1) = WebListBox.SortTypes.Sortable
		  Me.ColumnSortDirectionAt(1) = WebListbox.SortDirections.Ascending
		  
		  Me.ColumnSortTypeAt(2) = WebListBox.SortTypes.Sortable
		  Me.ColumnSortDirectionAt(2) = WebListbox.SortDirections.None
		  Me.ColumnSortTypeAt(3) = WebListBox.SortTypes.Sortable
		  Me.ColumnSortDirectionAt(3) = WebListbox.SortDirections.None
		  Me.ColumnSortTypeAt(4) = WebListBox.SortTypes.Sortable
		  Me.ColumnSortDirectionAt(4) = WebListbox.SortDirections.None
		  
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
#tag Events dlgCreate
	#tag Event
		Function DatabaseCreateAction(Name As String, Key As String, Encoding As String) As Boolean
		  Return Self.ActionCreateButtonPressed(Name, Key, Encoding)
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnRename
	#tag Event
		Sub Pressed()
		  Self.ActionRename()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events dlgRename
	#tag Event
		Function NameAction(Name As String) As Boolean
		  Return Self.ActionRenameButtonPressed(Name)
		  
		End Function
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
