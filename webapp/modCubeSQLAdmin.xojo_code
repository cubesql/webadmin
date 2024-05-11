#tag Module
Protected Module modCubeSQLAdmin
	#tag Method, Flags = &h0
		Function EscapeSqlDefaultValueIfRequired(Extends defaultValue As String) As String
		  If (defaultValue.Contains(" ") Or defaultValue.Contains("'")) Then
		    Return "'" + defaultValue.EscapeSqlQuotes + "'"
		  End If
		  
		  Return defaultValue
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EscapeSqlFieldIfRequired(Extends fieldname As String) As String
		  If (fieldname.Contains(" ") Or fieldname.Contains("""")) Then
		    Return """" + fieldname.ReplaceAll("""", """""") + """"
		  End If
		  
		  Return fieldname
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EscapeSqlQuotes(Extends value As String) As String
		  Return value.ReplaceAll("'", "''")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LaunchArgumentGetValue(argKey As String, envKey As String, ByRef argValue As String) As Boolean
		  ' Gets the Launch Argument from
		  ' 1. Launch Argument
		  ' 2. Environment Variable
		  
		  argValue = dictArgs.Lookup(argKey, "").StringValue.Trim
		  If (argValue = "") Then argValue = System.EnvironmentVariable(envKey).Trim
		  
		  Return (argValue <> "")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ServerVersion_AsDouble(Extends db As CubeSQLServer) As Double
		  Return Version_AsDouble(db.ServerVersion)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 436F6E766572747320636F6D6D616E64206C696E6520617267756D656E747320746F20612064696374696F6E6172792E2045616368206B657920697320616E20617267756D656E74206E616D6520616E642074686520636F72726573706F6E64696E672076616C75652069732074686520617267756D656E742076616C75652E
		Protected Sub StoreLaunchArguments(args() As String)
		  dictArgs = New Dictionary
		  
		  If (args = Nil) Then Return
		  
		  For Each argument As String In args
		    Var argParts() As String = argument.Split("=")
		    Var name As String = argParts(0)
		    Var value As String  = If(argParts.LastIndex = 1,  argParts(1), "")
		    
		    dictArgs.value(Name) = value
		  Next
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  If (mdictArgs = Nil) Then Return New Dictionary
			  
			  Return mdictArgs
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mdictArgs = value
			End Set
		#tag EndSetter
		Private dictArgs As Dictionary
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mdictArgs As Dictionary
	#tag EndProperty


	#tag Constant, Name = constDBName_CubeSQLSettings, Type = String, Dynamic = False, Default = \"cubesql.settings", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constUrl_CubeSQLPlugin, Type = String, Dynamic = False, Default = \"https://github.com/cubesql/cubeSQLAdmin", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constUrl_CubeSQLServer, Type = String, Dynamic = False, Default = \"https://sqlabs.com/cubesql", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constUrl_CubeSQLWebAdmin, Type = String, Dynamic = False, Default = \"https://github.com/jo-tools", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constUrl_DeveloperKey, Type = String, Dynamic = False, Default = \"https://www.sqlabs.com/cubesql_devkey.php", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constUrl_JOTools, Type = String, Dynamic = False, Default = \"https://www.jo-tools.ch/", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constUrl_MailTo_Contact, Type = String, Dynamic = False, Default = \"mailto:xojo@jo-tools.ch", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constUrl_SQLabs, Type = String, Dynamic = False, Default = \"https://sqlabs.com/", Scope = Public
	#tag EndConstant

	#tag Constant, Name = constUrl_Xojo, Type = String, Dynamic = False, Default = \"https://www.xojo.com/", Scope = Public
	#tag EndConstant


	#tag Enum, Name = ContainerKey, Type = Integer, Flags = &h0
		None = -1
		Status = 0
		Registration = 1
		Plugins = 2
		Console = 3
		Databases = 11
		TablesAndIndexes = 12
		Schedules = 14
		Backups = 13
		Groups = 21
		Users = 22
		Privileges = 23
		EnginePreferences = 24
		Commands = 31
		Clients = 32
		Log = 33
	#tag EndEnum


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
End Module
#tag EndModule
