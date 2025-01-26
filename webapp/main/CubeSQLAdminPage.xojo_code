#tag WebPage
Begin WebPage CubeSQLAdminPage
   AllowTabOrderWrap=   True
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   CSSClasses      =   ""
   Enabled         =   False
   Height          =   500
   ImplicitInstance=   False
   Index           =   -2147483648
   Indicator       =   0
   IsImplicitInstance=   False
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   MinimumHeight   =   500
   MinimumWidth    =   750
   PanelIndex      =   0
   ScaleFactor     =   0.0
   TabIndex        =   0
   Title           =   "cubeSQL Admin"
   Top             =   0
   Visible         =   True
   Width           =   750
   _ImplicitInstance=   False
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mName          =   ""
   _mPanelIndex    =   -1
   Begin WebToolbar tbrCubeSQLAdmin
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FullWidth       =   False
      Height          =   56
      Index           =   -2147483648
      Indicator       =   8
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      PanelIndex      =   0
      Position        =   0
      Scope           =   2
      TabIndex        =   0
      TabStop         =   True
      Title           =   ""
      Tooltip         =   ""
      Top             =   0
      Visible         =   True
      Width           =   750
      _mPanelIndex    =   -1
   End
   Begin WebLabel labContainerTitle
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   16.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      InitialParent   =   "rctContainer"
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
      PanelIndex      =   0
      Parent          =   "nil"
      Scope           =   2
      TabIndex        =   1
      TabStop         =   True
      Text            =   "Area → Container"
      TextAlignment   =   1
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   64
      Underline       =   False
      Visible         =   True
      Width           =   402
      _mPanelIndex    =   -1
   End
   Begin WebSearchField edtSearch
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      Height          =   38
      Hint            =   "Search"
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   430
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   2
      TabStop         =   True
      Text            =   ""
      Tooltip         =   ""
      Top             =   64
      Visible         =   True
      Width           =   300
      _mPanelIndex    =   -1
   End
   Begin WebTimer timSearch
      ControlID       =   ""
      Enabled         =   False
      Index           =   -2147483648
      Location        =   0
      LockedInPosition=   True
      PanelIndex      =   0
      Period          =   1
      RunMode         =   0
      Scope           =   2
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Opening()
		  Me.Title = "cubeSQL Admin - " + Session.DB.Host + ":" + Session.DB.Port.ToString
		  
		  Me.ShowContainer(ContainerKey.Status)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub CloseContainer()
		  If (Me.CurrentContainer <> Nil) Then
		    Me.CurrentContainer.Close
		    Me.CurrentContainer = Nil
		    Me.CurrentContainerKey = ContainerKey.None
		  End If
		  
		  edtSearch.Text = ""
		  edtSearch.Visible = False
		  labContainerTitle.Text = ""
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Search()
		  If (Me.CurrentContainer <> Nil) And (Me.CurrentContainer IsA cntDatasourceBase) Then
		    If (cntDatasourceBase(Me.CurrentContainer).SearchAvailable And edtSearch.Visible) Then
		      cntDatasourceBase(Me.CurrentContainer).Search(edtSearch.Text.Trim)
		    End If
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SearchSchedule(pbImmediately As Boolean)
		  'if already running, stop
		  timSearch.RunMode = WebTimer.RunModes.Off
		  timSearch.Enabled = False
		  
		  timSearch.Period = If(pbImmediately, 1, 800)
		  timSearch.RunMode = WebTimer.RunModes.Single
		  timSearch.Enabled = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowContainer(containerItem As ContainerKey)
		  If (Me.CurrentContainer <> Nil) And (Me.CurrentContainerKey = containerItem) Then Return
		  
		  Var showContainer As cntBase
		  
		  Select Case containerItem
		  Case ContainerKey.Status
		    showContainer = New cntStatus
		    
		  Case ContainerKey.Registration
		    showContainer = New cntRegistration
		    
		  Case ContainerKey.Plugins
		    showContainer = New cntPlugins
		    
		  Case ContainerKey.Console
		    showContainer = New cntConsole
		    
		  Case ContainerKey.Preferences
		    showContainer = New cntPreferences
		    
		  Case ContainerKey.Groups
		    showContainer = New cntGroups
		    
		  Case ContainerKey.Databases
		    showContainer = New cntDatabases
		    
		  Case ContainerKey.TablesAndIndexes
		    showContainer = New cntTablesIndexes
		    
		  Case ContainerKey.Backups
		    showContainer = New cntBackups
		    
		  Case ContainerKey.Schedules
		    showContainer = New cntSchedules
		    
		  Case ContainerKey.Users
		    showContainer = New cntUsers
		    
		  Case ContainerKey.Privileges
		    showContainer = new cntPrivileges
		    
		  Case ContainerKey.EnginePreferences
		    showContainer = New cntEnginePreferences
		    
		  Case ContainerKey.Commands
		    showContainer = New cntCommands
		    
		  Case ContainerKey.Clients
		    showContainer = New cntClients
		    
		  Case ContainerKey.Log
		    showContainer = New cntLog
		    
		  End Select
		  
		  If (showContainer = Nil) Then Return
		  
		  Me.CloseContainer()
		  
		  labContainerTitle.Text = "<raw>" + showContainer.Area + "&nbsp;&nbsp;&rarr;&nbsp;&nbsp;<b><font size=+2>" + showContainer.Title + "</font></b></raw>"
		  
		  Var top As Integer = labContainerTitle.Top + labContainerTitle.Height + 10
		  showContainer.EmbedWithin(Self, 0, top, Self.Width, Self.Height - top)
		  
		  Me.CurrentContainer = showContainer
		  Me.CurrentContainerKey = containerItem
		  edtSearch.Visible = (showContainer IsA cntDatasourceBase) And cntDatasourceBase(showContainer).SearchAvailable
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private CurrentContainer As cntBase
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CurrentContainerKey As ContainerKey
	#tag EndProperty


#tag EndWindowCode

#tag Events tbrCubeSQLAdmin
	#tag Event
		Sub Opening()
		  Me.Indicator = WebUIControl.Indicators.Dark
		  Me.Style.BackgroundColor = Color.RGB(0,50,100)
		  Me.Style.ForegroundColor = Color.White
		  
		  Me.Title = "cubeSQL Admin"
		  Me.Icon = icon_128
		  
		  Var btn As WebToolbarButton
		  
		  btn = New WebToolbarButton
		  btn.Style = WebToolbarButton.ButtonStyles.Menu
		  btn.Caption = "Server"
		  btn.Menu.AddMenuItem(New WebMenuItem("Registration", ContainerKey.Registration))
		  btn.Menu.AddMenuItem(New WebMenuItem("Plugins", ContainerKey.Plugins))
		  btn.Menu.AddMenuItem(New WebMenuItem("Console", ContainerKey.Console))
		  btn.Menu.AddMenuItem(New WebMenuItem("Preferences", ContainerKey.Preferences))
		  Me.AddItem(btn)
		  
		  btn = New WebToolbarButton
		  btn.Style = WebToolbarButton.ButtonStyles.Menu
		  btn.Caption = "Data"
		  btn.Menu.AddMenuItem(New WebMenuItem("Databases", ContainerKey.Databases))
		  btn.Menu.AddMenuItem(New WebMenuItem("Tables & Indexes", ContainerKey.TablesAndIndexes))
		  btn.Menu.AddMenuItem(New WebMenuItem("Backups", ContainerKey.Backups))
		  btn.Menu.AddMenuItem(New WebMenuItem("Schedules", ContainerKey.Schedules))
		  Me.AddItem(btn)
		  
		  btn = New WebToolbarButton
		  btn.Style = WebToolbarButton.ButtonStyles.Menu
		  btn.Caption = "Security"
		  btn.Menu.AddMenuItem(New WebMenuItem("Groups", ContainerKey.Groups))
		  btn.Menu.AddMenuItem(New WebMenuItem("Users", ContainerKey.Users))
		  btn.Menu.AddMenuItem(New WebMenuItem("Privileges", ContainerKey.Privileges))
		  btn.Menu.AddMenuItem(New WebMenuItem("Engine Preferences", ContainerKey.EnginePreferences))
		  Me.AddItem(btn)
		  
		  btn = New WebToolbarButton
		  btn.Style = WebToolbarButton.ButtonStyles.Menu
		  btn.Caption = "Information"
		  btn.Menu.AddMenuItem(New WebMenuItem("Commands", ContainerKey.Commands))
		  btn.Menu.AddMenuItem(New WebMenuItem("Clients", ContainerKey.Clients))
		  btn.Menu.AddMenuItem(New WebMenuItem("Log", ContainerKey.Log))
		  Me.AddItem(btn)
		  
		  btn = New WebToolbarButton
		  btn.Tag = "About"
		  btn.Style = WebToolbarButton.ButtonStyles.PushButton
		  btn.Caption = "About"
		  Me.AddItem(btn)
		  
		  btn = New WebToolbarButton
		  btn.Style = WebToolbarButton.ButtonStyles.FlexibleSpace
		  Me.AddItem(btn)
		  
		  btn = New WebToolbarButton
		  btn.Tag = "Logout"
		  'btn.Icon = WebPicture.BootstrapIcon("escape", Color.White)
		  btn.Style = WebToolbarButton.ButtonStyles.PushButton
		  btn.Caption = "Logout"
		  Me.AddItem(btn)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub TitlePressed()
		  Self.ShowContainer(ContainerKey.Status)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed(item As WebToolbarButton)
		  Select Case item.Tag
		    
		  Case "About"
		    Var dlgAboutCubeSQLAdmin As New dlgAbout
		    dlgAboutCubeSQLAdmin.Show()
		    
		  Case "Logout"
		    Self.CloseContainer()
		    Session.Logout
		    Self.Close()
		    Return
		    
		  End Select
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MenuSelected(item As WebToolbarButton, hitItem As WebMenuItem)
		  #Pragma unused item
		  
		  Self.ShowContainer(hitItem.Tag)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edtSearch
	#tag Event
		Sub Pressed()
		  Self.SearchSchedule(True)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  Self.SearchSchedule(False)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events timSearch
	#tag Event
		Sub Run()
		  Me.RunMode = WebTimer.RunModes.Off
		  Me.Enabled = False
		  
		  Self.Search()
		  
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
		Name="ScaleFactor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Double"
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
		Name="_mPanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
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
		Visible=false
		Group="Behavior"
		InitialValue=""
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
		Name="MinimumHeight"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=false
		Group="Behavior"
		InitialValue="True"
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
		Name="_ImplicitInstance"
		Visible=false
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
		Name="IsImplicitInstance"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabOrderWrap"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
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
