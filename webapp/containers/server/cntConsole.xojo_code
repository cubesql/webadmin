#tag WebContainerControl
Begin cntBase cntConsole
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
      ColumnCount     =   1
      ColumnWidths    =   ""
      ControlID       =   ""
      Enabled         =   True
      HasHeader       =   False
      Height          =   319
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
      NoRowsMessage   =   "No SQL SELECT executed yet"
      ProcessingMessage=   ""
      RowCount        =   0
      RowSelectionType=   0
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
   Begin WebButton btnExecute
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Execute"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
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
   Begin WebLabel labDatabase
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      Multiline       =   False
      Scope           =   2
      TabIndex        =   2
      TabStop         =   True
      Text            =   "Database:"
      TextAlignment   =   0
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   442
      Underline       =   False
      Visible         =   True
      Width           =   100
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
      Left            =   128
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
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   400
      _mPanelIndex    =   -1
   End
   Begin WebTextArea edtCommand
      AllowReturnKey  =   True
      AllowSpellChecking=   False
      Caption         =   ""
      ControlID       =   ""
      Enabled         =   True
      Height          =   100
      Hint            =   "SQL Command"
      Index           =   -2147483648
      Indicator       =   0
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   1
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   334
      Visible         =   True
      Width           =   710
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Closed()
		  Try
		    Session.DB.ExecuteSQL("CLEAR CURRENT DATABASE")
		    
		  Catch err As DatabaseException
		    
		  End Try
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  self.Clear()
		  Self.RefreshButtons()
		  
		  ebOpened = True
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub ActionExecute()
		  Var isquery As Boolean = False
		  Var rs As RowSet
		  
		  Try
		    
		    Var sql As String = edtCommand.Text.Trim
		    Var fword As String = sql.NthField(" ", 1).Trim.Lowercase
		    
		    
		    If (fword = "select") Or (fword = "show") Then
		      isquery = True
		    ElseIf (fword = "engine") Then
		      If sql.Contains(" select ", ComparisonOptions.CaseInsensitive) Then isquery = True
		    ElseIf (fword = "pragma") Then
		      If (sql.IndexOf("=") = 0) Then isquery = True
		    End If
		    
		    If isquery Then
		      rs = Session.DB.SelectSQL(sql)
		      lstInfos.NoRowsMessage = "No Records from SELECT SQL"
		    Else
		      Session.DB.ExecuteSQL(sql)
		      lstInfos.NoRowsMessage = "EXECUTE SQL successful"
		    End If
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = If(isquery, "SELECT SQL", "EXECUTE SQL")
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not execute " + dialog.Title + " command."
		    dialog.Explanation = "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message
		    dialog.Show
		    
		    rs = Nil
		    If isquery Then
		      lstInfos.NoRowsMessage = "SELECT SQL Error"
		    Else
		      lstInfos.NoRowsMessage = "EXECUTE SQL Error"
		    End If
		    
		  Finally
		    Me.ShowInfos(rs)
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Clear()
		  lstInfos.RemoveAllRows
		  lstInfos.HasHeader = False
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  
		  me.Title = "Console"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  btnExecute.Enabled = (edtCommand.Text.Trim <> "")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowInfos(rs As RowSet)
		  Me.Clear
		  
		  Try
		    If (rs = Nil) Then Return
		    
		    lstInfos.HasHeader = True
		    
		    lstInfos.ColumnCount = rs.ColumnCount
		    For i As Integer = rs.ColumnCount - 1 DownTo 0
		      lstInfos.HeaderAt(i) = rs.ColumnAt(i).Name
		      lstInfos.ColumnSortTypeAt(i) = WebListBox.SortTypes.Sortable
		      lstInfos.ColumnSortDirectionAt(i) = WebListbox.SortDirections.None
		    Next
		    
		    If (rs.RowCount > 0) Then
		      rs.MoveToFirstRow
		      While (Not rs.AfterLastRow)
		        lstInfos.AddRow("")
		        
		        For i As Integer = rs.ColumnCount - 1 DownTo 0
		          lstInfos.CellTextAt(lstInfos.LastAddedRowIndex, i) = rs.ColumnAt(i).StringValue
		        Next
		        
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


#tag EndWindowCode

#tag Events btnExecute
	#tag Event
		Sub Pressed()
		  Self.ActionExecute()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstDatabase
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  Me.AddRow "- NONE -"
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW DATABASES")
		    
		    If (rs <> Nil) Then
		      If (rs.RowCount > 0) Then
		        rs.MoveToFirstRow
		        While (Not rs.AfterLastRow)
		          Me.AddRow(rs.Column("databasename").StringValue)
		          Me.RowTagAt(Me.LastAddedRowIndex) = rs.Column("databasename").StringValue
		          rs.MoveToNextRow
		        Wend
		      End If
		      
		      rs.Close
		    End If
		    
		  Catch DatabaseException
		    
		  Finally
		    Me.SelectedRowIndex = 0
		    
		  End Try
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  #Pragma unused item
		  
		  If (Not ebOpened) Then Return
		  
		  Try
		    If (Me.SelectedRowIndex < 1) Then
		      Session.DB.ExecuteSQL("CLEAR CURRENT DATABASE")
		    Else
		      Session.DB.ExecuteSQL("USE DATABASE '" + Me.SelectedRowText + "'")
		    End If
		    
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Change database"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not change database."
		    dialog.Explanation = "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message
		    dialog.Show
		    
		  Finally
		    Self.Clear()
		    
		  End Try
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edtCommand
	#tag Event
		Sub TextChanged()
		  Self.RefreshButtons()
		  
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
