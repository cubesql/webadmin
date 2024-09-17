#tag Module
Protected Module modFunctions
	#tag Method, Flags = &h0, CompatibilityFlags = API2Only and ( (TargetWeb and (Target32Bit or Target64Bit)) )
		Sub SleepAndYieldToNext(Extends ThreadInstance As Thread, Milliseconds As Integer)
		  Var SleepInterval As Integer = Milliseconds / 10
		  
		  For i As Integer = 1 To 10
		    ThreadInstance.Sleep SleepInterval
		    ThreadInstance.YieldToNext
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = API2Only and ( (TargetWeb and (Target32Bit or Target64Bit)) )
		Sub SleepAndYieldToNext(Extends ThreadInstance As WebThread, Milliseconds As Integer)
		  Var SleepInterval As Integer = Milliseconds / 10
		  
		  For i As Integer = 1 To 10
		    ThreadInstance.Sleep SleepInterval
		    ThreadInstance.YieldToNext
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = API2Only and ( (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) )
		Function SQLDateTime_AsDateTime_AsLocal(sqlDateTime As String) As DateTime
		  Return DateTime.FromString(sqlDateTime, Nil, Timezone.Current)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = API2Only and ( (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) )
		Function SQLDateTime_AsDateTime_FromUTC_ToLocal(sqlDateTime As String) As DateTime
		  Var utcDateTimeValue As DateTime = DateTime.FromString(sqlDateTime, Nil, New TimeZone("UTC"))
		  Var localDateTimeValue As New DateTime(utcDateTimeValue.SecondsFrom1970, Timezone.Current)
		  Return localDateTimeValue
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = API2Only and ( (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) )
		Function Version_AsDouble(version As String) As Double
		  Var iMajor As Integer = version.NthField(".", 1).ToInteger
		  Var iMinor As Integer = version.NthField(".", 2).ToInteger
		  Var iBug As Integer = version.NthField(".", 3).ToInteger
		  
		  Return iMajor + (iMinor / 1000) + (iBug / 1000 / 1000)
		  
		End Function
	#tag EndMethod


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
