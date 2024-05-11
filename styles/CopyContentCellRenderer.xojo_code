#tag Class
Protected Class CopyContentCellRenderer
Inherits WebListBoxCellRenderer
	#tag Event
		Sub Deserialize(js As JSONItem)
		  CopyContent = js.Lookup("copycontent", "")
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function JavascriptClassCode(s As WebSession) As String
		  #Pragma unused s
		  
		  Var code() As String
		  
		  // All custom cells extend the XojoWeb.ListboxCellRenderer class
		  code.Add "class TextWithCopyButtonCell extends XojoWeb.ListboxCellRenderer {"
		  
		  // You must override the "render" method
		  // controlID (string): The identifier of the listbox control that the renderer is currently running under
		  // row (HTMLElement): The HTML DOM element of the entire row. This is provided so that you can make modifications to the entire row if necessary, like applying a style.
		  // data (object): The data that the Xojo portion of your control provided for this column
		  // rowIndex (number): The row number that is currently being rendered
		  // columnIndex (number): The column number that is currently being rendered
		  // cell (HTMLElement): The HTML DOM element of the cell that your renderer is responsible for.
		  code.Add "  render(controlID, row, data, rowIndex, columnIndex, cell) {"
		  
		  // Remove the text that's already in the cell
		  code.Add "    cell.innerText = '';"
		  code.Add "    cell.innerHTML = '';"
		  
		  // Make a Container for both Text and Copy Button
		  code.Add "    let container = document.createElement('div');"
		  code.Add "    container.style = 'display: flex;';"
		  
		  // Div for Text
		  code.Add "    let textContainer = document.createElement('div');"
		  code.Add "    textContainer.innerText = data.copycontent;"
		  code.Add "    textContainer.style = 'white-space: nowrap; overflow: hidden; text-overflow: ellipsis; margin-right: 5px;';"
		  
		  // Make a bootstrap Button
		  code.Add "    let button = document.createElement('button');"
		  code.Add "    button.className = 'btn btn-outline-secondary btn-sm';"
		  code.Add "    button.innerText = 'Copy';"
		  code.Add "    button.style= 'float: right; margin-left: auto;';"
		  
		  // Handle clicking on the button
		  code.Add "    button.addEventListener('click', function(ev) {"
		  code.Add "        ev.stopPropagation();"
		  code.Add "        navigator.clipboard.writeText(data.copycontent);"
		  code.Add "        return false;"
		  code.Add "    });"
		  
		  // Add our new content
		  code.Add "    container.appendChild(textContainer);"
		  code.Add "    container.appendChild(button);"
		  code.Add "    cell.appendChild(container);"
		  code.Add "  }"
		  code.Add "}"
		  
		  Return String.FromArray(code, EndOfLine.Windows)
		  
		End Function
	#tag EndEvent

	#tag Event
		Function Serialize() As JSONItem
		  Var result As New JSONItem
		  result.Value("copycontent") = CopyContent
		  Return result
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor(Content As String)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  Me.CopyContent = Content.Trim
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private CopyContent As String
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
