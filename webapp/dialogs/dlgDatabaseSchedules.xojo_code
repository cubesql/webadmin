#tag WebPage
Begin dlgBase dlgDatabaseSchedules
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   Enabled         =   True
   Height          =   346
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
   Width           =   750
   _mDesignHeight  =   0
   _mDesignWidth   =   0
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
      Text            =   "Schedules for Database"
      TextAlignment   =   2
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   710
      _mPanelIndex    =   -1
   End
   Begin WebButton btnAttach
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Attach"
      ControlID       =   ""
      Default         =   True
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   414
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   288
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebButton btnClose
      AllowAutoDisable=   False
      Cancel          =   True
      Caption         =   "Close"
      ControlID       =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
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
      Top             =   288
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebListBox lstDatabaseSchedules
      ColumnCount     =   1
      ColumnWidths    =   ""
      ControlID       =   ""
      Enabled         =   True
      HasHeader       =   False
      Height          =   200
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
      SelectedRowColor=   &c0d6efd
      SelectedRowIndex=   0
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   66
      Visible         =   True
      Width           =   750
      _mPanelIndex    =   -1
   End
   Begin WebPopupMenu lstAddSchedules
      ControlID       =   ""
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      InitialValue    =   ""
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      RowCount        =   0
      Scope           =   2
      SelectedRowIndex=   0
      SelectedRowText =   ""
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   288
      Visible         =   True
      Width           =   386
      _mPanelIndex    =   -1
   End
   Begin WebButton btnDetach
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Detach"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   4
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
      Top             =   288
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Method, Flags = &h21
		Private Function GetSelectedAddSchedule() As String
		  If (lstAddSchedules.SelectedRowIndex < 0) Then Return ""
		  return lstAddSchedules.SelectedRowText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSelectedDatabaseSchedule() As String
		  If (lstDatabaseSchedules.SelectedRowIndex < 0) Then Return ""
		  Return lstDatabaseSchedules.CellTextAt(lstDatabaseSchedules.SelectedRowIndex, 0)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Load()
		  Me.LoadDatabaseSchedules()
		  Me.LoadAddSchedules()
		  
		  labTitle.Text = lstDatabaseSchedules.RowCount.ToString + " " + _
		  If(lstDatabaseSchedules.RowCount = 1, "Schedule", "Schedules") + _
		  " for Database " + esDatabasename
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadAddSchedules()
		  lstAddSchedules.RemoveAllRows
		  
		  Var sDatabaseSchedules() As String
		  For i As Integer = lstDatabaseSchedules.LastRowIndex DownTo 0
		    sDatabaseSchedules.Add(lstDatabaseSchedules.CellTextAt(i, 0))
		  Next
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW SCHEDULES")
		    If (rs = Nil) Then Return
		    
		    If (rs.RowCount > 0) Then
		      rs.MoveToFirstRow
		      While (Not rs.AfterLastRow)
		        If (sDatabaseSchedules.IndexOf(rs.Column("schedname").StringValue) >= 0) Then
		          'schedule already added to this database
		          rs.MoveToNextRow
		          Continue
		        End If
		        
		        lstAddSchedules.AddRow(rs.Column("schedname").StringValue)
		        
		        rs.MoveToNextRow
		      Wend
		    End If
		    
		    rs.Close
		    
		    If (lstAddSchedules.LastRowIndex >= 0) Then lstAddSchedules.SelectedRowIndex = 0
		    
		  Catch DatabaseException
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadDatabaseSchedules()
		  lstDatabaseSchedules.RemoveAllRows
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW SCHEDULES FOR DATABASE '" + esDatabasename.EscapeSqlQuotes + "'")
		    If (rs = Nil) Then Return
		    
		    If (rs.RowCount > 0) Then
		      rs.MoveToFirstRow
		      While (Not rs.AfterLastRow)
		        lstDatabaseSchedules.AddRow(rs.Column("schedname").StringValue)
		        
		        rs.MoveToNextRow
		      Wend
		    End If
		    
		    rs.Close
		    
		    lstDatabaseSchedules.SelectedRowIndex = -1
		    
		  Catch DatabaseException
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  Var sAddSchedule As String = Me.GetSelectedAddSchedule
		  Var bAddScheduleSelected As Boolean = (sAddSchedule <> "")
		  
		  Var bAddScheduleAlreadyAssigned As Boolean = False
		  
		  If (sAddSchedule <> "") Then
		    For i As Integer = lstDatabaseSchedules.LastRowIndex DownTo 0
		      If (lstDatabaseSchedules.CellTextAt(i, 0) = sAddSchedule) Then
		        bAddScheduleAlreadyAssigned = True
		        Exit 'Loop
		      End If
		    Next
		  End If
		  
		  btnAttach.Enabled = bAddScheduleSelected And (Not bAddScheduleAlreadyAssigned)
		  
		  Var sRemoveSchedule As String = Me.GetSelectedDatabaseSchedule()
		  btnDetach.Enabled = (sRemoveSchedule <> "")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Show(Username As String)
		  esDatabasename = Username
		  
		  Me.Load()
		  
		  Me.RefreshButtons()
		  
		  Super.Show()
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event NeedsRefresh()
	#tag EndHook


	#tag Property, Flags = &h21
		Private ebNeedsRefresh As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esDatabasename As String
	#tag EndProperty


#tag EndWindowCode

#tag Events btnAttach
	#tag Event
		Sub Pressed()
		  Var schedule As String = Self.GetSelectedAddSchedule()
		  If (schedule = "") Then Return
		  
		  Try
		    
		    Session.DB.ExecuteSQL("ATTACH SCHEDULE '" + schedule.EscapeSqlQuotes + "' TO DATABASE '" + esDatabasename.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog("Attach Schedule to Database", "Could not attach schedule to database.", err)
		    Return
		    
		  End Try
		  
		  'Success - no dialog
		  ebNeedsRefresh = True
		  Self.Load()
		  
		  For i As Integer = lstDatabaseSchedules.LastRowIndex DownTo 0
		    If (lstDatabaseSchedules.CellTextAt(i, 0) = schedule) Then
		      lstDatabaseSchedules.SelectedRowIndex = i
		      Exit 'Loop
		    End If
		  Next
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnClose
	#tag Event
		Sub Pressed()
		  If ebNeedsRefresh Then NeedsRefresh
		  
		  Self.Close()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstDatabaseSchedules
	#tag Event
		Sub SelectionChanged(rows() As Integer)
		  #Pragma unused rows
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstAddSchedules
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  #Pragma unused item
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDetach
	#tag Event
		Sub Pressed()
		  Var schedule As String = Self.GetSelectedDatabaseSchedule()
		  If (schedule = "") Then Return
		  
		  Try
		    
		    Session.DB.ExecuteSQL("DETACH SCHEDULE '" + schedule.EscapeSqlQuotes + "' FROM DATABASE '" + esDatabasename.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog("Detach Schedule from Database", "Could not detach schedule from database.", err)
		    Return 
		    
		  End Try
		  
		  'Success - no dialog
		  ebNeedsRefresh = True
		  Self.Load()
		  Self.RefreshButtons()
		  
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
