#tag Class
Protected Class thrConnectionChoices
Inherits Thread
	#tag Event
		Sub Run()
		  Var defaultConnectionItem As ConnectionItem = GetDefaultNewConnection()
		  
		  AddToList(defaultConnectionItem)
		  
		  Me.SleepAndYieldToNext(50)
		  
		  ProcessChoicesFromJson()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddToList(poConnectionChoice As ConnectionItem)
		  modCubeSQLAdmin.AddConnectionChoice(poConnectionChoice)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetDefaultNewConnection() As ConnectionItem
		  Var setHostname As String
		  If (Not modCubeSQLAdmin.LaunchArgumentGetValue("--CubeSQLHostname", "CUBESQL_HOSTNAME", setHostname)) Then
		    setHostname = "localhost"
		  End If
		  
		  Var setPort As String
		  If (Not modCubeSQLAdmin.LaunchArgumentGetValue("--CubeSQLPort", "CUBESQL_PORT", setPort)) Then
		    setPort = "4430"
		  End If
		  If (setPort.ToInteger < 1) Then setPort = "4430"
		  
		  Var setEncryption As String
		  If (Not modCubeSQLAdmin.LaunchArgumentGetValue("--CubeSQLEncryption", "CUBESQL_ENCRYPTION", setEncryption)) Then
		    setEncryption = "AES256"
		  End If
		  
		  Var setUsername As String
		  Var setPassword As String
		  Var bUsernameIsSet As Boolean = True
		  If (Not modCubeSQLAdmin.LaunchArgumentGetValue("--CubeSQLUsername", "CUBESQL_USERNAME", setUsername)) Then
		    bUsernameIsSet = False
		    setUsername = "admin"
		  End If
		  If bUsernameIsSet Then
		    If (Not modCubeSQLAdmin.LaunchArgumentGetValue("--CubeSQLPassword", "CUBESQL_PASSWORD", setPassword)) Then
		      'never prefill a default password without a prefilled username
		    End If
		  End If
		  
		  Var jsonDefault As New JSONItem("")
		  jsonDefault.Value("caption") = "New Connection"
		  jsonDefault.Value("selected") = True
		  
		  jsonDefault.Value("hostname") = setHostname
		  jsonDefault.Value("port") = setPort.ToInteger
		  jsonDefault.Value("username") = setUsername
		  jsonDefault.Value("password") = setPassword
		  
		  'ensure valid encryption value
		  Select Case setEncryption
		    
		  Case "NONE", "AES128", "AES256", "SSL"
		    jsonDefault.Value("encryption") = setEncryption
		    
		  Else
		    jsonDefault.Value("encryption") = "NONE"
		    
		  End Select
		  
		  Var defaultConnectionItem As New ConnectionItem(jsonDefault, True)
		  Return defaultConnectionItem
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessChoicesFromJson()
		  Var setJsonFile As String
		  If (Not modCubeSQLAdmin.LaunchArgumentGetValue("--CubeSQLConnectionChoice", "CUBESQL_CONNECTIONCHOICE", setJsonFile)) Then
		    Return
		  End If
		  
		  Var fileJson As FolderItem = modCubeSQLAdmin.GetFolderItemFromArgument(setJsonFile)
		  
		  If (fileJson = Nil) Or (Not fileJson.Exists) Or (fileJson.IsFolder) Then Return
		  
		  Var json As JSONItem
		  Try
		    Var stream As TextInputStream = TextInputStream.Open(fileJson)
		    Var s As String = stream.ReadAll(Encodings.UTF8)
		    stream.Close
		    
		    If (s.Trim <> "") Then json = New JSONItem(s)
		  Catch err As IOException
		  Catch err As JSONException
		  End Try
		  
		  If (json = Nil) Or (Not json.IsArray) Then Return
		  
		  Me.SleepAndYieldToNext(50)
		  
		  Var jsonItem As JSONItem
		  For i As Integer = 0 To json.LastRowIndex
		    Me.SleepAndYieldToNext(50)
		    
		    jsonItem = json.ChildAt(i)
		    
		    Var connectionItem As New ConnectionItem(jsonItem, False)
		    
		    If (connectionItem.IsSeparator) Then
		      AddToList(connectionItem)
		      Continue
		    End If
		    
		    If (Not connectionItem.IsValid) Then Continue
		    
		    AddToList(connectionItem)
		  Next
		  
		End Sub
	#tag EndMethod


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
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
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugIdentifier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThreadID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThreadState"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ThreadStates"
			EditorType="Enum"
			#tag EnumValues
				"0 - Running"
				"1 - Waiting"
				"2 - Paused"
				"3 - Sleeping"
				"4 - NotRunning"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
