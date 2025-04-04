#tag WebContainerControl
Begin cntBase cntStatus
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
      Height          =   500
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
      NoRowsMessage   =   "No Status Information"
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
   Begin WebTimer timRefresh
      ControlID       =   ""
      Enabled         =   True
      Index           =   -2147483648
      Location        =   1
      LockedInPosition=   True
      PanelIndex      =   0
      Period          =   5000
      RunMode         =   2
      Scope           =   2
      _mPanelIndex    =   -1
   End
   Begin cntRegistrationAction cntServerRegistration
      ControlCount    =   0
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      Height          =   78
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
      PanelIndex      =   0
      Scope           =   2
      ScrollDirection =   0
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   422
      Visible         =   False
      Width           =   750
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Close()
		  timRefresh.RunMode = WebTimer.RunModes.Off
		  timRefresh.Enabled = False
		  
		  Super.Close()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  
		  Me.Area = "cubeSQL"
		  Me.Title = "Status"
		  Me.Table = lstInfos
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableInitRows()
		  Super.TableInitRows()
		  
		  Me.Table.AddRow "Version"
		  Me.Table.AddRow "Engine version"
		  Me.Table.AddRow "License"
		  Me.Table.AddRow ""
		  Me.Table.AddRow "Server Name"
		  Me.Table.AddRow "Address"
		  Me.Table.AddRow "Port"
		  Me.Table.AddRow "Host OS"
		  Me.Table.AddRow ""
		  Me.Table.AddRow "Current Date Time"
		  Me.Table.AddRow "Connections"
		  Me.Table.AddRow "Bytes"
		  Me.Table.AddRow "Counters"
		  Me.Table.AddRow "Memory Usage"
		  Me.Table.AddRow "Up since"
		  
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
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW DETAILED STATISTICS")
		    If (rs = Nil) Then Return
		    
		    Var infos As New Dictionary
		    For Each row As DatabaseRow In rs
		      infos.Value(row.ColumnAt(0).StringValue) = row.ColumnAt(1).StringValue
		    Next
		    
		    rs.Close
		    
		    rs = Session.DB.SelectSQL("SHOW PREFERENCE 'SERVER_NAME'")
		    If (rs <> Nil) Then
		      For Each row As DatabaseRow In rs
		        infos.Value(row.ColumnAt(0).StringValue) = row.ColumnAt(1).StringValue
		      Next
		      
		      rs.Close
		    End If
		    
		    
		    Me.Table.CellTextAt(0, 1) = infos.Lookup("server_release", "") + " (" + infos.Lookup("server_mode", "") + ")"
		    Me.Table.CellTextAt(1, 1) = infos.Lookup("engine_version", "").StringValue
		    Me.Table.CellTextAt(2, 1) = infos.Lookup("server_license", "").StringValue
		    
		    Me.Table.CellTextAt(4, 1) = infos.Lookup("SERVER_NAME", "").StringValue
		    Me.Table.CellTextAt(5, 1) = infos.Lookup("ip_address", "").StringValue
		    Me.Table.CellTextAt(6, 1) = infos.Lookup("server_port", "").StringValue
		    Me.Table.CellTextAt(7, 1) = infos.Lookup("os_version", "").StringValue
		    
		    Me.Table.CellTextAt(9, 1) = infos.Lookup("server_current_datetime", "").StringValue
		    Me.Table.CellTextAt(10, 1) = "Current: " + infos.Lookup("current_connections", "") + " | Total: " + infos.Lookup("total_connections", "") + " | Max: " + infos.Lookup("max_connections", "")
		    Me.Table.CellTextAt(11, 1) = "Sent: " + infos.Lookup("bytes_sent", "") + " | Received: " + infos.Lookup("bytes_received", "")
		    Me.Table.CellTextAt(12, 1) = "Query: " + infos.Lookup("query_count", "") + " | Exec: " + infos.Lookup("exec_count", "") + " | Custom Commands: " + infos.Lookup("commands_count", "")
		    Me.Table.CellTextAt(13, 1) = "Current: " + infos.Lookup("memory_usage", "") + " | Max: " + infos.Lookup("max_memory_usage", "")
		    Me.Table.CellTextAt(14, 1) = infos.Lookup("server_startup_datetime", "").StringValue
		    
		    If ebShown Then
		      ' Don't change Height before shown...
		      Var serverLicenseIsNotRegistered As Boolean = infos.Lookup("server_license", "").StringValue.Contains("NOT REGISTERED", ComparisonOptions.CaseInsensitive)
		      Var isNotRegistered As Boolean = infos.Lookup("registered", "").StringValue.Contains("NOT REGISTERED", ComparisonOptions.CaseInsensitive)
		      
		      If serverLicenseIsNotRegistered Or isNotRegistered Then
		        If (cntServerRegistration.Visible <> True) Then cntServerRegistration.Visible = True
		        If (Me.Table.Height <> Self.Height - cntServerRegistration.Height) Then Me.Table.Height = Self.Height - cntServerRegistration.Height
		      Else
		        If (cntServerRegistration.Visible <> False) Then cntServerRegistration.Visible = False
		        If (Me.Table.Height <> Self.Height) Then Me.Table.Height = Self.Height
		      End If
		    End If
		    
		    
		  Catch DatabaseException
		    
		  End Try
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events timRefresh
	#tag Event
		Sub Run()
		  Self.TableLoad()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cntServerRegistration
	#tag Event
		Sub NeedsRefresh()
		  Self.TableLoad()
		  
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
