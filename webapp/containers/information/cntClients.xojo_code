#tag WebContainerControl
Begin cntDatasourceBase cntClients
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
      NoRowsMessage   =   "No Clients"
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
   Begin WebButton btnRefresh
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Refresh"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   502
      LockBottom      =   True
      LockedInPosition=   False
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
   Begin WebButton btnDisconnect
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Disconnect"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   4
      Left            =   610
      LockBottom      =   True
      LockedInPosition=   False
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
      Width           =   120
      _mPanelIndex    =   -1
   End
   Begin WebMessageDialog dlgDisconnect
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
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   5
      TabStop         =   True
      Title           =   ""
      Tooltip         =   ""
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Opening()
		  Self.RefreshButtons()
		  Self.ShowInfos()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub ActionDisconnect()
		  Var clientUsername As String
		  Var clientId As Integer = Me.GetSelectedClientId(clientUsername)
		  If (clientId <= 0) Then Return
		  
		  
		  dlgDisconnect.Title = "Disconnect Client"
		  dlgDisconnect.Indicator = Indicators.Danger
		  dlgDisconnect.ActionButton.Caption = "Disconnect"
		  dlgDisconnect.CancelButton.Visible = True
		  dlgDisconnect.Message = "Are you sure you want to disconnect client with ID " + clientId.ToString + " and username '" + clientUsername + "'?"
		  dlgDisconnect.Explanation = "This action cannot be undone."
		  
		  eiActionClientId = clientId
		  
		  dlgDisconnect.ShowWithActionDanger()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDisconnectButtonPressed(obj As WebMessageDialog, button As WebMessageDialogButton)
		  Var iDisconnectClientId As Integer = eiActionClientId
		  eiActionClientId = -1
		  
		  If (button <> obj.ActionButton) Then Return
		  If (iDisconnectClientId <= 0) Then Return
		  
		  Try
		    Session.DB.ExecuteSQL("CLOSE CONNECTION " + iDisconnectClientId.ToString)
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Disconnect Client"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not disconnect client."
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
		  
		  Me.Title = "Clients"
		  
		  Redim Me.Columns(-1)
		  
		  Var col As DatasourceColumn
		  
		  col = New DatasourceColumn()
		  col.Width = "5%"
		  col.DatabaseColumnName = "id"
		  col.Heading = "Client ID"
		  col.FieldType = DatasourceColumn.FieldTypes.Integer
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.Descending
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "15%"
		  col.DatabaseColumnName = "address"
		  col.Heading = "Address"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "15%"
		  col.DatabaseColumnName = "username"
		  col.Heading = "Username"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "15%"
		  col.DatabaseColumnName = "connection_date"
		  col.Heading = "Connection Date"
		  col.FieldType = DatasourceColumn.FieldTypes.SQLDateTime
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "15%"
		  col.DatabaseColumnName = "last_activity"
		  col.Heading = "Last Activity"
		  col.FieldType = DatasourceColumn.FieldTypes.SQLDateTime
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "18%"
		  col.DatabaseColumnName = "database"
		  col.Heading = "Database"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		  col = New DatasourceColumn()
		  col.Width = "17%"
		  col.DatabaseColumnName = "client_type"
		  col.Heading = "Client Type"
		  col.FieldType = DatasourceColumn.FieldTypes.Text
		  col.Sortable = True
		  col.SortDirection = WebListBox.SortDirections.None
		  Me.Columns.Add(col)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetColumnData(col As DatasourceColumn, row As Dictionary) As Variant
		  Select Case col.DatabaseColumnName
		    
		  Case "id"
		    Var id As Integer = row.Lookup(col.DatabaseColumnName, 0).IntegerValue
		    If (id < 1) Then Return ""
		    return New WebListBoxStyleRenderer(StyleListboxTextAlignCenter(), id.ToString)
		    
		  Else
		    Return super.GetColumnData(col, row)
		    
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSelectedClientId(ByRef username As String) As Integer
		  username = ""
		  If (lstInfos.SelectedRowIndex < 0) Then Return -1
		  If (lstInfos.RowTagAt(lstInfos.SelectedRowIndex) IsA Dictionary) Then
		    username = Dictionary(lstInfos.RowTagAt(lstInfos.SelectedRowIndex)).Lookup("username", "").StringValue
		    Return Dictionary(lstInfos.RowTagAt(lstInfos.SelectedRowIndex)).Lookup("id", "").IntegerValue
		  End If
		  
		  Return -1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  Var clientUsername As String
		  Var clientId As Integer = Me.GetSelectedClientId(clientUsername)
		  
		  Var bRefresh, bDisconnect As Boolean
		  
		  If (clientId > 0) Then
		    bDisconnect = (clientId <> Session.ClientId)
		    bRefresh = True
		  End If
		  
		  If (btnRefresh.Enabled <> bRefresh) Then btnRefresh.Enabled = bRefresh
		  If (btnDisconnect.Enabled <> bDisconnect) Then btnDisconnect.Enabled = bDisconnect
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshInfos(selectClientId As Integer = -1)
		  If (eiSelectAfterReload <= 0) Then
		    Var username As String
		    selectClientId = Me.GetSelectedClientId(username)
		  End If
		  
		  eiSelectAfterReload = selectClientId
		  
		  Me.ShowInfos()
		  
		  'Select Row async via WebTimer_RowDataLoaded
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowInfos()
		  Me.LoadDatasource(Session.DB.SelectSQL("SHOW CONNECTIONS"))
		  
		  If (lstInfos.DataSource = Nil) Then
		    lstInfos.DataSource = Self
		  Else
		    lstInfos.ReloadData()
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub WebTimer_RowDataLoaded(obj As WebTimer)
		  Super.WebTimer_RowDataLoaded(obj)
		  
		  If (eiSelectAfterReload <= 0) Then Return
		  
		  Var iSelectAfterReload As Integer = eiSelectAfterReload
		  eiSelectAfterReload = -1
		  
		  Var bFound As Boolean = False
		  For i As Integer = lstInfos.LastRowIndex DownTo 0
		    If (lstInfos.RowTagAt(i) IsA Dictionary) Then
		      Var rowTag As Dictionary = lstInfos.RowTagAt(i)
		      If (rowTag.Lookup("id", "").IntegerValue <> iSelectAfterReload) Then Continue
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
		Private eiActionClientId As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private eiSelectAfterReload As Integer = -1
	#tag EndProperty


#tag EndWindowCode

#tag Events lstInfos
	#tag Event
		Sub Opening()
		  Me.ExecuteJavaScript("$('#" + Me.ControlID + "').addClass('listboxClientsHeaderAlignment')")
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(rows() As Integer)
		  #Pragma unused rows
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRefresh
	#tag Event
		Sub Pressed()
		  Self.ShowInfos()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDisconnect
	#tag Event
		Sub Pressed()
		  Self.ActionDisconnect()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events dlgDisconnect
	#tag Event
		Sub ButtonPressed(button As WebMessageDialogButton)
		  Self.ActionDisconnectButtonPressed(Me, button)
		  
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
