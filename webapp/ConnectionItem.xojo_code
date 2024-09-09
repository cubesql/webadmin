#tag Class
Protected Class ConnectionItem
	#tag Method, Flags = &h0
		Function Caption() As String
		  Return esCaption
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(jsonItem As JSONItem, pbIsNewConnection As Boolean)
		  Me.Init(jsonItem, pbIsNewConnection)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Encryption() As UInt8
		  Return eiEncryption
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Hostname() As String
		  Return esHostname
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Init(jsonItem As JSONItem, pbIsNewConnection As Boolean)
		  ebIsNewConnection = pbIsNewConnection
		  If (jsonItem = Nil) Then Return
		  
		  eiEncryption = CubeSQLPlugin.kAESNONE
		  
		  esCaption = jsonItem.Lookup("caption", "").StringValue.Trim
		  esHostname = jsonItem.Lookup("hostname", "").StringValue.Trim
		  eiPort = jsonItem.Lookup("port", 0).IntegerValue
		  
		  If (esCaption = "") Then esCaption = esHostname + ":" + eiPort.ToString
		  
		  Select Case jsonItem.Lookup("encryption", "").StringValue.Trim
		    
		  Case "NONE"
		    eiEncryption = CubeSQLPlugin.kAESNONE
		    
		  Case "AES128"
		    eiEncryption = CubeSQLPlugin.kAES128
		    
		  Case "AES256"
		    eiEncryption = CubeSQLPlugin.kAES256
		    
		  Case "SSL"
		    eiEncryption = CubeSQLPlugin.kSSL
		    
		  End Select
		  
		  esUsername = jsonItem.Lookup("username", "").StringValue.Trim
		  esPassword = jsonItem.Lookup("password", "").StringValue.Trim
		  
		  If esPassword.EndsWith(".txt", ComparisonOptions.CaseInsensitive) Then
		    'try to read from .txt file
		    Var filePassword As FolderItem = modCubeSQLAdmin.GetFolderItemFromArgument(esPassword)
		    If (filePassword <> Nil) And filePassword.Exists And (Not filePassword.IsFolder) Then
		      Try
		        esPassword = ""
		        
		        Var stream As TextInputStream = TextInputStream.Open(filePassword)
		        Var s As String = stream.ReadAll(Encodings.UTF8)
		        stream.Close
		        
		        If (s.Trim <> "") Then esPassword = s.Trim
		      Catch e As IOException
		      End Try
		    End If
		  ElseIf esPassword.BeginsWith("`") And esPassword.EndsWith("`") Then
		    'try to read from shell command
		    Try
		      Var shellCommand As String = esPassword.Trim("`")
		      esPassword = ""
		      
		      Var shell As New Shell
		      shell.TimeOut = 10000
		      shell.Execute(shellCommand)
		      Var s As String
		      Select Case shell.ExitCode
		      Case 0 'the command succeeded
		        s = shell.Result
		      End Select
		      shell.Close
		      
		      If (s.Trim <> "") Then esPassword = s.Trim
		    Catch err As ShellNotAvailableException
		    Catch err As ShellNotRunningException
		    End Try
		  End If
		  
		  
		  Me.Init_SSL(jsonItem)
		  
		  ebSelected = jsonItem.Lookup("selected", False).BooleanValue
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Init_SSL(jsonItem As JSONItem)
		  #Pragma BreakOnExceptions False
		  
		  If (eiEncryption <> CubeSQLPlugin.kSSL) Then
		    eoSSLCertificate = Nil
		    esSSLCertificatePassword = ""
		    eoSSLRootCertificate = Nil
		    esSSLCipherlist = ""
		    Return
		  End If
		  
		  Var setSSLCertificate As String = jsonItem.Lookup("sslcertificate", "").StringValue.Trim
		  If (setSSLCertificate <> "") Then
		    Var fileSSLCertificate As FolderItem = modCubeSQLAdmin.GetFolderItemFromArgument(setSSLCertificate)
		    If (fileSSLCertificate <> Nil) And fileSSLCertificate.Exists And (Not fileSSLCertificate.IsFolder) Then
		      eoSSLCertificate = fileSSLCertificate
		    End If
		  End If
		  
		  Var setSSLCertificatePassword As String = jsonItem.Lookup("sslcertificatepassword", "").StringValue.Trim
		  If (setSSLCertificatePassword <> "") Then
		    'use value
		    esSSLCertificatePassword = setSSLCertificatePassword.Trim
		    
		    If setSSLCertificatePassword.EndsWith(".txt", ComparisonOptions.CaseInsensitive) Then
		      'try to read from .txt file
		      Var fileSSLCertificatePassword As FolderItem = modCubeSQLAdmin.GetFolderItemFromArgument(setSSLCertificatePassword)
		      If (fileSSLCertificatePassword <> Nil) And fileSSLCertificatePassword.Exists And (Not fileSSLCertificatePassword.IsFolder) Then
		        Try
		          esSSLCertificatePassword = ""
		          
		          Var stream As TextInputStream = TextInputStream.Open(fileSSLCertificatePassword)
		          Var s As String = stream.ReadAll(Encodings.UTF8)
		          stream.Close
		          
		          If (s.Trim <> "") Then esSSLCertificatePassword = s.Trim
		        Catch e As IOException
		        End Try
		      End If
		    End If
		  End If
		  
		  
		  Var setRootCertificate As String = jsonItem.Lookup("sslrootcertificate", "").StringValue.Trim
		  If (setRootCertificate <> "") Then
		    Var fileRootCertificate As FolderItem = modCubeSQLAdmin.GetFolderItemFromArgument(setRootCertificate)
		    If (fileRootCertificate <> Nil) And fileRootCertificate.Exists And (Not fileRootCertificate.IsFolder) Then
		      eoSSLRootCertificate = fileRootCertificate
		    End If
		  End If
		  
		  
		  Var setSSLCipherList As String = jsonItem.Lookup("sslcipherlist", "").StringValue.Trim
		  If (setSSLCipherList <> "") Then
		    'use value
		    esSSLCipherlist = setSSLCipherList.Trim
		    
		    If setSSLCipherList.EndsWith(".txt", ComparisonOptions.CaseInsensitive) Then
		      'try to read from .txt file
		      Var fileSSLCipherList As FolderItem = modCubeSQLAdmin.GetFolderItemFromArgument(setSSLCipherList)
		      If (fileSSLCipherList <> Nil) And fileSSLCipherList.Exists And (Not fileSSLCipherList.IsFolder) Then
		        Try
		          esSSLCipherlist = ""
		          
		          Var stream As TextInputStream = TextInputStream.Open(fileSSLCipherList)
		          Var s As String = stream.ReadAll(Encodings.UTF8)
		          stream.Close
		          
		          If (s.Trim <> "") Then esSSLCipherlist = s.Trim
		        Catch e As IOException
		        End Try
		      End If
		    End If
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsNewConnection() As Boolean
		  Return ebIsNewConnection
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsSeparator() As Boolean
		  If (esCaption = "-") Then Return True
		  if (esHostname = "-") then return true
		  
		  Return False
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsValid() As Boolean
		  If (esCaption = "") Then Return False
		  If (esHostname = "") Then Return False
		  If (eiPort < 1) Then Return False
		  
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Password() As String
		  return esPassword
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Port() As Integer
		  Return eiPort
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Selected() As Boolean
		  Return ebSelected
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SSLCertificate() As FolderItem
		  Return eoSSLCertificate
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SSLCertificatePassword() As String
		  Return esSSLCertificatePassword
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SSLCipherlist() As String
		  Return esSSLCipherlist
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SSLRootCertificate() As FolderItem
		  Return eoSSLRootCertificate
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Username() As String
		  Return esUsername
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private ebIsNewConnection As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ebSelected As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private eiEncryption As UInt8
	#tag EndProperty

	#tag Property, Flags = &h21
		Private eiPort As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private eoSSLCertificate As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private eoSSLRootCertificate As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esCaption As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esHostname As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esPassword As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esSSLCertificatePassword As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esSSLCipherlist As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esUsername As String
	#tag EndProperty


	#tag ViewBehavior
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
			InitialValue="-2147483648"
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
	#tag EndViewBehavior
End Class
#tag EndClass
