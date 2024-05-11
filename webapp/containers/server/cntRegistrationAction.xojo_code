#tag WebContainerControl
Begin WebContainer cntRegistrationAction
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   Enabled         =   True
   Height          =   78
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
   Begin WebButton btnGetServerKey
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Get a Server Key"
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
      TabIndex        =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   266
      _mPanelIndex    =   -1
   End
   Begin WebButton btnRegisterServer
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Register Server"
      ControlID       =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Left            =   464
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   "0"
      Scope           =   2
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   266
      _mPanelIndex    =   -1
   End
   Begin WebMessageDialog dlgGetServerKey
      ControlID       =   ""
      Enabled         =   True
      Explanation     =   ""
      Index           =   -2147483648
      Indicator       =   ""
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
		Private Sub ActionGetServerKey()
		  dlgGetServerKey.Title = "Server Key"
		  dlgGetServerKey.Indicator = Indicators.Default
		  dlgGetServerKey.ActionButton.Caption = "Get a Key"
		  dlgGetServerKey.CancelButton.Visible = True
		  dlgGetServerKey.Message = "Get a Server Key from SQlabs."
		  dlgGetServerKey.Explanation = "Open this URL in a new Browser Window: " + constUrl_DeveloperKey
		  
		  dlgGetServerKey.Show()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionGetServerKeyButtonPressed(obj As WebMessageDialog, button As WebMessageDialogButton)
		  If (button = obj.ActionButton) Then
		    Self.GoToURL(constUrl_DeveloperKey, True)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionRegistration()
		  Var Name, Key As String
		  
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW PREFERENCES")
		    If (rs <> Nil) Then
		      Var infos As New Dictionary
		      For Each row As DatabaseRow In rs
		        infos.Value(row.ColumnAt(0).StringValue) = row.ColumnAt(1).StringValue
		      Next
		      
		      rs.Close
		      
		      Name = infos.Lookup("KEY_NAME", "").StringValue
		      Key = infos.Lookup("KEY_VALUE", "").StringValue
		    End If
		    
		    
		  Catch DatabaseException
		    
		  Finally
		    Var dlgRegistration As New dlgRegisterServer
		    AddHandler dlgRegistration.RegistrationAction, WeakAddressOf ActionRegistrationButtonPressed
		    dlgRegistration.Show(Name, Key)
		    
		  End Try
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionRegistrationButtonPressed(obj As dlgRegisterServer, Name As String, Key As String) As Boolean
		  #Pragma unused obj
		  
		  If (Name = "") Or (Key = "") Then Return False
		  
		  Try
		    If Name.Contains("'", ComparisonOptions.CaseInsensitive) Then
		      Session.DB.ExecuteSQL("SET BASE64 REGISTRATION TO '" + EncodeBase64(Name) + "' WITH KEY '" + Key + "'")
		    Else
		      Session.DB.ExecuteSQL("SET REGISTRATION TO '" + Name + "' WITH KEY '" + Key + "'")
		    End If
		    
		  Catch err As DatabaseException
		    Var dialog As New WebMessageDialog
		    dialog.Title = "Registration"
		    dialog.Indicator = Indicators.Warning
		    dialog.ActionButton.Caption = "OK"
		    dialog.CancelButton.Visible = False
		    dialog.Message = "Could not register cubeSQL."
		    dialog.Explanation = "Error" + If(err.ErrorNumber > 0, " " + err.ErrorNumber.ToString, "") + ": " + err.Message
		    dialog.Show
		    NeedsRefresh
		    Return False
		    
		  End Try
		  
		  Var dialog As New WebMessageDialog
		  dialog.Title = "Registration"
		  dialog.Indicator = Indicators.Success
		  dialog.ActionButton.Caption = "OK"
		  dialog.CancelButton.Visible = False
		  dialog.Message = "Thanks for registering cubeSQL Server!"
		  dialog.Explanation = ""
		  dialog.Show
		  NeedsRefresh
		  
		  Return True
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event NeedsRefresh()
	#tag EndHook


#tag EndWindowCode

#tag Events btnGetServerKey
	#tag Event
		Sub Pressed()
		  self.ActionGetServerKey()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRegisterServer
	#tag Event
		Sub Pressed()
		  self.ActionRegistration()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events dlgGetServerKey
	#tag Event
		Sub ButtonPressed(button As WebMessageDialogButton)
		  Self.ActionGetServerKeyButtonPressed(Me, button)
		  
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
