#tag Class
Protected Class cntDatasourceBase
Inherits cntBase
Implements WebDataSource
	#tag Method, Flags = &h0
		Sub Close()
		  For Each cntrl As WebUIControl In Self.Controls
		    If cntrl IsA WebListBox Then WebListBox(cntrl).DataSource = Nil
		  Next
		  
		  If (timRefresh <> Nil) Then
		    timRefresh.RunMode = WebTimer.RunModes.Off
		    timRefresh.Enabled = False
		  End If
		  
		  Super.Close()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ColumnData() As WebListboxColumnData()
		  // Part of the WebDataSource interface.
		  
		  Var cols() As WebListBoxColumnData
		  
		  For Each col As DatasourceColumn In Me.Columns
		    If col.IsHidden Then Continue
		    cols.Add(col)
		  Next
		  
		  Return cols
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  
		  timRefresh = New WebTimer(WebTimer.Locations.Server)
		  timRefresh.Period = 1
		  timRefresh.RunMode = WebTimer.RunModes.Off
		  timRefresh.Enabled = False
		  Me.AddControl(timRefresh)
		  
		  AddHandler timRefresh.Run, WeakAddressOf WebTimer_RowDataLoaded
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetSelectedTableRowTag() As Variant
		  If (Me.Table = Nil) Then Return Nil
		  
		  Var rowIndex As Integer = Me.Table.SelectedRowIndex
		  If (rowIndex < 0) Then Return Nil
		  
		  Return Me.Table.RowTagAt(rowIndex)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub LoadDatasource(rs As RowSet)
		  Redim Me.TableRows(-1)
		  
		  If (Me.Filters = Nil) Then Me.Filters = New Dictionary
		  Var bSearchFilter As Boolean = (Me.SearchValue <> "")
		  
		  Try
		    If (rs <> Nil) Then
		      If (rs.RowCount > 0) Then
		        Var bIdFromRowset As Boolean = False
		        Var id As Integer = 1
		        Var bFilteredOut As Boolean
		        Var bSearchFilterShowRow As Boolean
		        rs.MoveToFirstRow
		        While (Not rs.AfterLastRow)
		          Var tableRow As New Dictionary
		          bFilteredOut = False
		          bSearchFilterShowRow = False
		          bIdFromRowset = False
		          
		          For Each col As DatasourceColumn In Me.Columns
		            If (col.DatabaseColumnName = "id") Then bIdFromRowset = True
		            If col.IsVirtual Then
		              tableRow.Value(col.DatabaseColumnName) = ""
		              Continue
		            End If
		            
		            Select Case col.FieldType
		            Case DatasourceColumn.FieldTypes.Text
		              tableRow.Value(col.DatabaseColumnName) = rs.Column(col.DatabaseColumnName).StringValue
		              If Me.Filters.HasKey(col.DatabaseColumnName) Then
		                If (Me.Filters.Value(col.DatabaseColumnName).StringValue.Compare(rs.Column(col.DatabaseColumnName).StringValue, ComparisonOptions.CaseInsensitive) <> 0) Then
		                  bFilteredOut = True
		                End If
		              End If
		            Case DatasourceColumn.FieldTypes.Integer
		              tableRow.Value(col.DatabaseColumnName) = rs.Column(col.DatabaseColumnName).IntegerValue
		              If Me.Filters.HasKey(col.DatabaseColumnName) Then
		                If (Me.Filters.Value(col.DatabaseColumnName).IntegerValue = rs.Column(col.DatabaseColumnName).IntegerValue) Then
		                  bFilteredOut = True
		                End If
		              End If
		            Case DatasourceColumn.FieldTypes.Boolean
		              tableRow.Value(col.DatabaseColumnName) = rs.Column(col.DatabaseColumnName).BooleanValue
		              If Me.Filters.HasKey(col.DatabaseColumnName) Then
		                If (Me.Filters.Value(col.DatabaseColumnName).BooleanValue = rs.Column(col.DatabaseColumnName).BooleanValue) Then
		                  bFilteredOut = True
		                End If
		              End If
		            Case DatasourceColumn.FieldTypes.SQLDateTime
		              tableRow.Value(col.DatabaseColumnName) = rs.Column(col.DatabaseColumnName).StringValue
		              If Me.Filters.HasKey(col.DatabaseColumnName) Then
		                If (Me.Filters.Value(col.DatabaseColumnName).StringValue.Compare(rs.Column(col.DatabaseColumnName).StringValue, ComparisonOptions.CaseInsensitive) <> 0) Then
		                  bFilteredOut = True
		                End If
		              End If
		            Else
		              Break
		            End Select
		            
		            If bSearchFilter And col.IsSearchable Then
		              'Note: This is a technical web app. It'll show Dates as SQLDate/Time
		              'so we can just use rowSet's .StringValue even for Date Columns.
		              'Otherwise we would need to get the displayed value out of
		              'me.TableRowColumnData (which could by a WebListBoxCellRenderer)
		              If rs.Column(col.DatabaseColumnName).StringValue.Contains(Me.SearchValue, ComparisonOptions.CaseInsensitive) Then
		                'We want so see rows that contain the text of the SearchFilter
		                bSearchFilterShowRow = True
		              End If
		            End If
		          Next
		          
		          If bSearchFilter And (Not bSearchFilterShowRow) Then bFilteredOut = True
		          
		          If (Not bFilteredOut) Then
		            If (Not bIdFromRowset) Then
		              tableRow.Value("id") = id
		            End If
		            id = id + 1
		            Me.TableRows.Add(tableRow)
		          End If
		          
		          rs.MoveToNextRow
		        Wend
		      End If
		    End If
		    
		  Catch err As DatabaseException
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RowCount() As Integer
		  // Part of the WebDataSource interface.
		  
		  Return Me.TableRows.Count
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RowData(rowCount As Integer, rowOffset As Integer, sortColumns As String) As WebListboxRowData()
		  // Part of the WebDataSource interface.
		  Var rows() As WebListboxRowData
		  If (rowOffset < 0) Then Return rows
		  
		  'Sort Table Rows
		  Var sortCol As String = sortColumns.NthField(" ", 1)
		  Var bSortDesc As Boolean = sortColumns.NthField(" ", 2) = "desc"
		  Var sortFieldType As DatasourceColumn.FieldTypes = DataSourceColumn.FieldTypes.Text
		  For Each col As DatasourceColumn In Me.Columns
		    If (col.DatabaseColumnName = sortCol) Then
		      sortFieldType = col.FieldType
		      Exit 'Loop
		    End If
		  Next
		  
		  mSortColumname = sortCol
		  mSortDesc = bSortDesc
		  mSortFieldType = sortFieldType
		  
		  TableRows.Sort(AddressOf SortedTableRowsDelegate)
		  
		  'Return requested sorted Rows
		  Var dictRow As Dictionary
		  For i As Integer = rowOffset To rowOffset + rowCount-1
		    If (Me.TableRows.LastIndex < i) Then Continue
		    dictRow = Me.TableRows(i)
		    
		    Var dictRowTag As New Dictionary
		    dictRowTag.Value("id") = Me.TableRows(i).Lookup("id", -1).IntegerValue
		    
		    Var row As New WebListBoxRowData
		    row.PrimaryKey = Me.TableRows(i).Lookup("id", -1).IntegerValue
		    row.Tag = dictRow
		    
		    For Each col As DatasourceColumn In Me.Columns
		      Var colData As Variant = Me.TableRowColumnData(col, dictRow)
		      
		      If (colData <> Nil) Then
		        If (colData IsA WebListBoxCellRenderer) Then
		          row.Value(col.DatabaseColumnName) = WebListBoxCellRenderer(colData)
		        Else
		          row.Value(col.DatabaseColumnName) = colData.StringValue
		        End If
		      Else
		        row.Value(col.DatabaseColumnName) = ""
		      End If
		      
		      Select Case col.FieldType
		      Case DatasourceColumn.FieldTypes.Text
		        dictRowTag.Value(col.DatabaseColumnName) = dictRow.Lookup(col.DatabaseColumnName, "").StringValue
		      Case DatasourceColumn.FieldTypes.Integer
		        dictRowTag.Value(col.DatabaseColumnName) = dictRow.Lookup(col.DatabaseColumnName, 0).IntegerValue
		      Case DatasourceColumn.FieldTypes.Boolean
		        dictRowTag.Value(col.DatabaseColumnName) = dictRow.Lookup(col.DatabaseColumnName, 0).BooleanValue
		      Case DatasourceColumn.FieldTypes.SQLDateTime
		        dictRowTag.Value(col.DatabaseColumnName) = dictRow.Lookup(col.DatabaseColumnName, "").StringValue
		      Else
		        Break
		      End Select
		    Next
		    
		    row.Tag = dictRowTag
		    rows.Add(row)
		    
		  Next
		  
		  timRefresh.RunMode = WebTimer.RunModes.Single
		  timRefresh.Enabled = true
		  
		  Return rows
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Search(SearchValue As String)
		  Me.SearchValue = SearchValue
		  Me.TableLoad()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SortedPrimaryKeys(sortColumns As String) As Integer()
		  // Part of the WebDataSource interface.
		  
		  Var sortCol As String = sortColumns.NthField(" ", 1)
		  Var bSortDesc As Boolean = sortColumns.NthField(" ", 2) = "desc"
		  Var sortFieldType As DatasourceColumn.FieldTypes = DataSourceColumn.FieldTypes.Text
		  For Each col As DatasourceColumn In Me.Columns
		    If (col.DatabaseColumnName = sortCol) Then
		      sortFieldType = col.FieldType
		      Exit 'Loop
		    End If
		  Next
		  
		  mSortColumname = sortCol
		  mSortDesc = bSortDesc
		  mSortFieldType = sortFieldType
		  
		  Var keys() As Integer
		  
		  For i As Integer = 0 To Me.TableRows.LastIndex
		    keys.Add(i)
		  Next
		  
		  keys.Sort(AddressOf SortedPrimaryKeysDelegate)
		  
		  'Primary Key is "id": 0-x
		  
		  Var sortedPrimaryKeys() As Integer
		  For i As Integer = 0 To keys.LastIndex
		    sortedPrimaryKeys.Add(Me.TableRows(keys(i)).Lookup("id", -1).IntegerValue)
		  Next
		  
		  Return sortedPrimaryKeys
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SortedPrimaryKeysDelegate(index1 As Integer, index2 As Integer) As Integer
		  Var row1 As Dictionary = Me.TableRows(index1)
		  Var row2 As Dictionary = Me.TableRows(index2)
		  
		  Return SortedTableRowsDelegate(row1, row2)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SortedTableRowsDelegate(row1 As Dictionary, row2 As Dictionary) As Integer
		  Var desc As Integer = 1
		  If mSortDesc Then desc = -1
		  
		  Select Case mSortFieldType
		  Case DatasourceColumn.FieldTypes.Text
		    Var s1 As String = row1.Lookup(mSortColumname, "").StringValue
		    Var s2 As String = row2.Lookup(mSortColumname, "").StringValue
		    Return s1.Compare(s2, ComparisonOptions.CaseInsensitive) * desc
		  Case DatasourceColumn.FieldTypes.Integer
		    Var i1 As Integer = row1.Lookup(mSortColumname, 0).IntegerValue
		    Var i2 As Integer = row2.Lookup(mSortColumname, 0).IntegerValue
		    If (i1 < i2) Then Return -1 * desc
		    If (i1 > i2) Then Return 1 * desc
		    Return 0
		  Case DatasourceColumn.FieldTypes.Boolean
		    Var b1 As Boolean = row1.Lookup(mSortColumname, 0).BooleanValue
		    Var b2 As Boolean = row2.Lookup(mSortColumname, 0).BooleanValue
		    If (b1 = True) And (b2 = False) Then Return 1 * desc
		    If (b1 = False) And (b2 = True) Then Return -1 * desc
		    Return 0
		  Case DatasourceColumn.FieldTypes.SQLDateTime
		    Var d1 As DateTime = SQLDateTime_AsDateTime_AsLocal(row1.Lookup(mSortColumname, "").StringValue)
		    Var d2 As DateTime = SQLDateTime_AsDateTime_AsLocal(row2.Lookup(mSortColumname, "").StringValue)
		    Return d1.Operator_Compare(d2) * desc
		  Else
		    Break
		    Return 0
		  End Select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableDataAsTxt() As String
		  If (Me.Columns = Nil) Or (Me.Columns.LastIndex < 0) Then Return ""
		  If (Me.TableRows = Nil) Or (Me.TableRows.LastIndex < 0) Then Return ""
		  
		  Const kTab = &u9
		  
		  Var sRows() As String
		  Var sRowItems() As String
		  
		  For Each col As DatasourceColumn In Me.Columns
		    If col.IsHidden Then Continue
		    If col.IsVirtual Then Continue
		    
		    sRowItems.Add(col.Heading.ReplaceAll(kTab, " "))
		  Next
		  
		  sRows.Add(String.FromArray(sRowItems, kTab))
		  
		  For i As Integer = 0 To Me.TableRows.LastIndex
		    Redim sRowItems(-1)
		    For Each col As DatasourceColumn In Me.Columns
		      If col.IsHidden Then Continue
		      If col.IsVirtual Then Continue
		      
		      sRowItems.Add(Me.TableRows(i).Lookup(col.DatabaseColumnName, "").StringValue.ReplaceAll(kTab, " "))
		    Next
		    
		    sRows.Add(String.FromArray(sRowItems, kTab))
		  Next
		  
		  Return String.FromArray(sRows, EndOfLine.LF)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableInitColumns()
		  Redim Me.Columns(-1)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableInitRows()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableLoad()
		  Me.Table.NoRowsMessage = Me.TableNoRowsMessage()
		  
		  Me.TableLoadFilters
		  Me.LoadDatasource(Me.TableLoadRowSet)
		  
		  If (Me.Table.DataSource = Nil) Then
		    Me.Table.DataSource = Self
		  Else
		    Me.Table.ReloadData()
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableLoadFilters()
		  Me.Filters = New Dictionary
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableLoadRowSet() As RowSet
		  Return Nil
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableNoRowsMessage() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TableRowColumnData(col As DatasourceColumn, row As Dictionary) As Variant
		  Select Case col.FieldType
		  Case DatasourceColumn.FieldTypes.Text
		    Return row.Lookup(col.DatabaseColumnName, "").StringValue
		  Case DatasourceColumn.FieldTypes.Integer
		    Return row.Lookup(col.DatabaseColumnName, 0).IntegerValue.ToString
		  Case DatasourceColumn.FieldTypes.Boolean
		    Return If(row.Lookup(col.DatabaseColumnName, 0).BooleanValue, "true", "false")
		  Case DatasourceColumn.FieldTypes.SQLDateTime
		    Return SQLDateTime_AsDateTime_AsLocal(row.Lookup(col.DatabaseColumnName, "").StringValue)
		  Else
		    Break
		    Return ""
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TableRowDataLoaded()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function UnsortedPrimaryKeys() As Integer()
		  // Part of the WebDataSource interface.
		  
		  'Primary Key is "id": 0-x
		  Var keys() As Integer
		  
		  For i As Integer = 0 To Me.TableRows.LastIndex
		    keys.Add(Me.TableRows(i).Lookup("id", -1).IntegerValue)
		  Next
		  
		  Return keys
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub WebTimer_RowDataLoaded(obj As WebTimer)
		  obj.RunMode = WebTimer.RunModes.Off
		  obj.Enabled = False
		  
		  Me.TableRowDataLoaded()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected Columns() As DatasourceColumn
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Filters As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSortColumname As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSortDesc As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSortFieldType As DatasourceColumn.FieldTypes
	#tag EndProperty

	#tag Property, Flags = &h0
		SearchAvailable As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SearchValue As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected TableRows() As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private timRefresh As WebTimer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Area"
			Visible=false
			Group="Behavior"
			InitialValue="Home"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SearchAvailable"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
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
			Name="ControlCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Behavior"
			InitialValue="300"
			Type="Integer"
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
			Name="Width"
			Visible=true
			Group="Behavior"
			InitialValue="300"
			Type="Integer"
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
	#tag EndViewBehavior
End Class
#tag EndClass
