#tag Class
Protected Class CheckboxCellRenderer
Inherits WebListboxCellRenderer
	#tag Event
		Sub Deserialize(js As JSONItem)
		  // Restore the values of the column to the object
		  
		  Checked = js.Lookup("checked", False).BooleanValue
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function JavascriptClassCode(s As WebSession) As String
		  #Pragma unused s
		  
		  Var code() As String
		  
		  // All custom cells extend the XojoWeb.ListboxCellRenderer class
		  code.Add "class CheckboxCell extends XojoWeb.ListboxCellRenderer {"
		  
		  // You must override the "render" method
		  // controlID (string): The identifier of the listbox control that the renderer is currently running under
		  // row (HTMLElement): The HTML DOM element of the entire row. This is provided so that you can make modifications to the entire row if necessary, like applying a style.
		  // data (object): The data that the Xojo portion of your control provided for this column
		  // rowIndex (number): The row number that is currently being rendered
		  // columnIndex (number): The column number that is currently being rendered
		  // cell (HTMLElement): The HTML DOM element of the cell that your renderer is responsible for.
		  code.Add "  render(controlID, row, data, rowIndex, columnIndex, cell) {"
		  
		  // Remove the text that's already in the cell
		  code.Add "    cell.innerHTML = '';"
		  
		  // Make a bootstrap checkbox
		  code.Add "    let container = document.createElement('div');"
		  code.Add "    container.className = 'form-check';"
		  code.Add "    container.style = 'display: flex; align-items: center; margin-left: 5px;'"
		  
		  code.Add "    let checkbox = document.createElement('input');"
		  code.Add "    checkbox.type = 'checkbox';"
		  code.Add "    checkbox.className = 'form-check-input';"
		  code.Add "    checkbox.checked = data.checked;"
		  
		  // Handle clicking on the button
		  code.Add "    checkbox.addEventListener('click', function(ev) {"
		  code.Add "      ev.stopPropagation();"
		  code.Add "      var obj = new XojoWeb.JSONItem;"
		  code.Add "      obj.set('row', rowIndex);" // All extensions should include the row (default is -1)
		  code.Add "      obj.set('column', columnIndex);" // All extensions should include the column (default is -1)
		  code.Add "      obj.set('identifier', 'idCheckbox');" // All extensions should include an identifier (default is "")
		  code.Add "      obj.set('value', checkbox.checked);" // Including a value is optional (default is null)
		  code.Add "      XojoWeb.controls.lookup(controlID).triggerServerEvent('CustomCellAction', obj);"
		  code.Add "      return false;"
		  code.Add "    });"
		  
		  // Add our new content
		  code.Add "    container.appendChild(checkbox);"
		  code.Add "    cell.appendChild(container);"
		  code.Add "  }"
		  code.Add "}"
		  
		  Return String.FromArray(code, EndOfLine.Windows)
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Function Serialize() As JSONItem
		  // Use this code to convert the value(s) needed to render your codes to JSON.
		  // This is also used by non-datasource listboxes to store these settings for your column.
		  
		  Var js As New JSONItem
		  js.Value("checked") = Checked
		  
		  return js
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor(isChecked As Boolean)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  Self.Checked = isChecked
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Checked As Boolean
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
		#tag ViewProperty
			Name="Checked"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
