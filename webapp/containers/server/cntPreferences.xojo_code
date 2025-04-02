#tag WebContainerControl
Begin cntBase cntPreferences
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   CSSClasses      =   ""
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
   PanelIndex      =   0
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
      ColumnCount     =   2
      ColumnWidths    =   "50%,50%"
      ControlID       =   ""
      CSSClasses      =   ""
      DefaultRowHeight=   49
      Enabled         =   True
      GridLineStyle   =   3
      HasBorder       =   True
      HasHeader       =   False
      HeaderHeight    =   0
      Height          =   422
      HighlightSortedColumn=   False
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
      NoRowsMessage   =   "No Preferences Information"
      PanelIndex      =   0
      ProcessingMessage=   ""
      RowCount        =   0
      RowSelectionType=   0
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
   Begin WebButton btnServerName
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Server Name"
      ControlID       =   ""
      CSSClasses      =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   5
      Left            =   530
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Outlined        =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   4
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   200
      _mPanelIndex    =   -1
   End
   Begin WebMessageDialog dlgMessage
      ControlID       =   ""
      CSSClasses      =   ""
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
      PanelIndex      =   0
      Scope           =   2
      Title           =   ""
      Tooltip         =   ""
      _mPanelIndex    =   -1
   End
   Begin WebButton btnLogFormat
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Log Format"
      ControlID       =   ""
      CSSClasses      =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   2
      Left            =   362
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Outlined        =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   160
      _mPanelIndex    =   -1
   End
   Begin WebButton btnLogVerbosity
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Log Verbosity"
      ControlID       =   ""
      CSSClasses      =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   2
      Left            =   194
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Outlined        =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   160
      _mPanelIndex    =   -1
   End
   Begin WebButton btnDebugFormat
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Debug"
      ControlID       =   ""
      CSSClasses      =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   6
      Left            =   26
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Outlined        =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   442
      Visible         =   True
      Width           =   160
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub ActionDebugFormat()
		  Var popDebugFormat As New cntPreferencesDebugFormat
		  
		  AddHandler popDebugFormat.ActionNone, WeakAddressOf ActionDebugFormatNone
		  AddHandler popDebugFormat.ActionFile, WeakAddressOf ActionDebugFormatFile
		  AddHandler popDebugFormat.ActionSystem, WeakAddressOf ActionDebugFormatSystem
		  AddHandler popDebugFormat.ActionConsole, WeakAddressOf ActionDebugFormatConsole
		  
		  popDebugFormat.ShowPopover(btnDebugFormat, WebContainer.DisplaySides.Top)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDebugFormatConsole(obj As cntPreferencesDebugFormat)
		  Try
		    If (obj <> Nil) Then obj.Close
		    
		    Session.DB.ExecuteSQL("SET PREFERENCE 'DEBUG_FORMAT' TO 'CONSOLE'")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Set Preference", "Could not set Debug Format.", err)
		    Return
		    
		  End Try
		  
		  Me.TableLoad()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDebugFormatFile(obj As cntPreferencesDebugFormat)
		  Try
		    If (obj <> Nil) Then obj.Close
		    
		    Session.DB.ExecuteSQL("SET PREFERENCE 'DEBUG_FORMAT' TO 'FILE'")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Set Preference", "Could not set Debug Format.", err)
		    Return
		    
		  End Try
		  
		  Me.TableLoad()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDebugFormatNone(obj As cntPreferencesDebugFormat)
		  Try
		    If (obj <> Nil) Then obj.Close
		    
		    Session.DB.ExecuteSQL("SET PREFERENCE 'DEBUG_FORMAT' TO 'NONE'")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Set Preference", "Could not set Debug Format.", err)
		    Return
		    
		  End Try
		  
		  Me.TableLoad()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionDebugFormatSystem(obj As cntPreferencesDebugFormat)
		  Try
		    If (obj <> Nil) Then obj.Close
		    
		    Session.DB.ExecuteSQL("SET PREFERENCE 'DEBUG_FORMAT' TO 'SYSTEM'")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Set Preference", "Could not set Debug Format.", err)
		    Return
		    
		  End Try
		  
		  Me.TableLoad()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionLogFormat()
		  Var popLogFormat As New cntPreferencesLogFormat
		  
		  AddHandler popLogFormat.ActionSqlite, WeakAddressOf ActionLogFormatSqlite
		  AddHandler popLogFormat.ActionText, WeakAddressOf ActionLogFormatText
		  
		  popLogFormat.ShowPopover(btnLogFormat, WebContainer.DisplaySides.Top)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionLogFormatSqlite(obj As cntPreferencesLogFormat)
		  Try
		    If (obj <> Nil) Then obj.Close
		    
		    Session.DB.ExecuteSQL("SET PREFERENCE 'LOG_FORMAT' TO 'SQLITE'")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Set Preference", "Could not set Log Format.", err)
		    Return
		    
		  End Try
		  
		  Me.TableLoad()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionLogFormatText(obj As cntPreferencesLogFormat)
		  Try
		    If (obj <> Nil) Then obj.Close
		    
		    Session.DB.ExecuteSQL("SET PREFERENCE 'LOG_FORMAT' TO 'TEXT'")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Set Preference", "Could not set Log Format.", err)
		    Return
		    
		  End Try
		  
		  Me.TableLoad()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionLogVerbosity()
		  Var popLogVerbosity As New cntPreferencesLogVerbosity
		  
		  AddHandler popLogVerbosity.ActionSqlErrors, WeakAddressOf ActionLogVerbositySqlErrors
		  AddHandler popLogVerbosity.ActionSqlCommands, WeakAddressOf ActionLogVerbositySqlCommands
		  AddHandler popLogVerbosity.ActionNone, WeakAddressOf ActionLogVerbosityNone
		  
		  popLogVerbosity.ShowPopover(btnLogVerbosity, WebContainer.DisplaySides.Top)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionLogVerbosityNone(obj As cntPreferencesLogVerbosity)
		  Try
		    If (obj <> Nil) Then obj.Close
		    
		    Session.DB.ExecuteSQL("SET PREFERENCE 'VERBOSE_LOG' TO 0")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Set Preference", "Could not set Log Verbosity.", err)
		    Return
		    
		  End Try
		  
		  Me.TableLoad()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionLogVerbositySqlCommands(obj As cntPreferencesLogVerbosity)
		  Try
		    If (obj <> Nil) Then obj.Close
		    
		    Session.DB.ExecuteSQL("SET PREFERENCE 'VERBOSE_LOG' TO 20")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Set Preference", "Could not set Log Verbosity.", err)
		    Return
		    
		  End Try
		  
		  Me.TableLoad()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionLogVerbositySqlErrors(obj As cntPreferencesLogVerbosity)
		  Try
		    If (obj <> Nil) Then obj.Close
		    
		    Session.DB.ExecuteSQL("SET PREFERENCE 'VERBOSE_LOG' TO 10")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Set Preference", "Could not set Log Verbosity.", err)
		    Return
		    
		  End Try
		  
		  Me.TableLoad()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionServerName()
		  Var ServerName As String
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW PREFERENCES")
		    If (rs <> Nil) Then
		      Var infos As New Dictionary
		      For Each row As DatabaseRow In rs
		        infos.Value(row.ColumnAt(0).StringValue) = row.ColumnAt(1).StringValue
		      Next
		      
		      rs.Close
		      
		      ServerName = infos.Lookup("SERVER_NAME", "").StringValue
		    End If
		    
		    
		  Catch DatabaseException
		    
		  Finally
		    Var dlgServerName As New dlgCommonName
		    AddHandler dlgServerName.NameAction, WeakAddressOf ActionServerNameButtonPressed
		    dlgServerName.Show("Server Name", "Name", "Set", Indicators.Primary, ServerName)
		    
		  End Try
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionServerNameButtonPressed(obj As dlgCommonName, Name As String) As Boolean
		  #Pragma unused obj
		  
		  If (Name = "") Then Return False
		  
		  Try
		    
		    Session.DB.ExecuteSQL("SET PREFERENCE 'SERVER_NAME' TO '" + Name.EscapeSqlQuotes + "'")
		    
		  Catch err As DatabaseException
		    ShowErrorDialog(dlgMessage, "Set Server Name", "Could not set server name.", err)
		    Return False
		    
		  End Try
		  
		  Me.TableLoad()
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  
		  Me.Area = "Server"
		  Me.Title = "Preferences"
		  Me.Table = lstInfos
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableInitRows()
		  Super.TableInitRows()
		  
		  Me.Table.AddRow "Server Name"
		  Me.Table.AddRow "Server Port"
		  Me.Table.AddRow ""
		  Me.Table.AddRow "Log Format"
		  Me.Table.AddRow "Log Verbosity"
		  Me.Table.AddRow ""
		  Me.Table.AddRow "Debug"
		  Me.Table.AddRow "Debug Format"
		  
		  Var styleKeyColumn As WebStyle = StyleListboxKeyColumn
		  For i As Integer = 0 To Me.Table.LastRowIndex
		    Me.Table.CellCustomContentAt(i, 0) = New WebListBoxStyleRenderer(styleKeyColumn, Me.Table.CellTextAt(i, 0))
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableLoad()
		  Super.TableLoad()
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW PREFERENCES")
		    If (rs = Nil) Then Return
		    
		    Var infos As New Dictionary
		    For Each row As DatabaseRow In rs
		      infos.Value(row.ColumnAt(0).StringValue) = row.ColumnAt(1).StringValue
		    Next
		    
		    rs.Close
		    
		    
		    Me.Table.CellTextAt(0, 1) = infos.Lookup("SERVER_NAME", "N/A").StringValue
		    Me.Table.CellTextAt(1, 1) = infos.Lookup("SERVER_PORT", "N/A").StringValue
		    
		    Me.Table.CellTextAt(3, 1) = infos.Lookup("LOG_FORMAT", "N/A").StringValue
		    
		    Select Case infos.Lookup("VERBOSE_LOG", -1).IntegerValue
		    Case 0
		      Me.Table.CellTextAt(4, 1) = "None"
		    Case 10
		      Me.Table.CellTextAt(4, 1) = "SQL Errors"
		    Case 20
		      Me.Table.CellTextAt(4, 1) = "SQL Commands"
		    Else
		      Me.Table.CellTextAt(4, 1) = "Unknown"
		    End Select
		    
		    Select Case infos.Lookup("DEBUG_FORMAT", "NONE").StringValue
		    Case "FILE"
		      Me.Table.CellTextAt(6, 1) = "Enabled"
		      Me.Table.CellTextAt(7, 1) = "File"
		    Case "SYSTEM"
		      Me.Table.CellTextAt(6, 1) = "Enabled"
		      Me.Table.CellTextAt(7, 1) = "System"
		    Case "CONSOLE"
		      Me.Table.CellTextAt(6, 1) = "Enabled"
		      Me.Table.CellTextAt(7, 1) = "Console"
		    Else 'NONE
		      Me.Table.CellTextAt(6, 1) = "Disabled"
		      Me.Table.CellTextAt(7, 1) = "N/A"
		    End Select
		    
		    
		  Catch DatabaseException
		    
		  End Try
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events btnServerName
	#tag Event
		Sub Pressed()
		  Self.ActionServerName()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnLogFormat
	#tag Event
		Sub Pressed()
		  Self.ActionLogFormat()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnLogVerbosity
	#tag Event
		Sub Pressed()
		  Self.ActionLogVerbosity()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDebugFormat
	#tag Event
		Sub Pressed()
		  Self.ActionDebugFormat()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="PanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Area"
		Visible=false
		Group="Behavior"
		InitialValue="Home"
		Type="String"
		EditorType="MultiLineEditor"
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
