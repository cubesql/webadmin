#tag WebPage
Begin dlgBase dlgTableEditor
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   Enabled         =   True
   Height          =   700
   Index           =   -2147483648
   Indicator       =   0
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   LockVertical    =   False
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   800
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebLabel labTitle
      Bold            =   True
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   24.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
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
      Scope           =   2
      TabIndex        =   0
      TabStop         =   True
      Text            =   "Table Editor"
      TextAlignment   =   2
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   760
      _mPanelIndex    =   -1
   End
   Begin WebRectangle rctFormContent
      BackgroundColor =   &cFFFFFF
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      HasBackgroundColor=   False
      Height          =   557
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   66
      Visible         =   True
      Width           =   760
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
      Begin WebLabel labTablename
         Bold            =   False
         ControlID       =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "rctFormContent"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Table Name:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   86
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebTextField edtTablename
         AllowAutoComplete=   False
         AllowSpellChecking=   False
         Caption         =   ""
         ControlID       =   ""
         Enabled         =   True
         FieldType       =   0
         Height          =   38
         Hint            =   ""
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "rctFormContent"
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         MaximumCharactersAllowed=   0
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         Tooltip         =   ""
         Top             =   86
         Visible         =   True
         Width           =   572
         _mPanelIndex    =   -1
      End
      Begin WebListBox lstFields
         ColumnCount     =   5
         ColumnWidths    =   "40, *, 20%, 20%, 25%"
         ControlID       =   ""
         Enabled         =   True
         HasHeader       =   True
         Height          =   418
         HighlightSortedColumn=   False
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   ""
         LastAddedRowIndex=   0
         LastColumnIndex =   0
         LastRowIndex    =   0
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         NoRowsMessage   =   "No Fields"
         Parent          =   "rctFormContent"
         ProcessingMessage=   ""
         RowCount        =   0
         RowSelectionType=   1
         Scope           =   0
         SearchCriteria  =   ""
         SelectedRowColor=   colWebListBoxSelectedRow
         SelectedRowIndex=   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   132
         Visible         =   True
         Width           =   720
         _mPanelIndex    =   -1
      End
      Begin WebButton btnFieldAdd
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Add"
         ControlID       =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         Left            =   660
         LockBottom      =   True
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   565
         Visible         =   True
         Width           =   100
         _mPanelIndex    =   -1
      End
      Begin WebLabel labField
         Bold            =   False
         ControlID       =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Field:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   565
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebButton btnFieldEdit
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Edit"
         ControlID       =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         Left            =   552
         LockBottom      =   True
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   565
         Visible         =   True
         Width           =   100
         _mPanelIndex    =   -1
      End
      Begin WebButton btnFieldDelete
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Delete"
         ControlID       =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         Left            =   444
         LockBottom      =   True
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   565
         Visible         =   True
         Width           =   100
         _mPanelIndex    =   -1
      End
   End
   Begin WebButton btnSave
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Create"
      ControlID       =   ""
      Default         =   True
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   680
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   642
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebButton btnCancel
      AllowAutoDisable=   False
      Cancel          =   True
      Caption         =   "Cancel"
      ControlID       =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Left            =   572
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   642
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebMessageDialog dlgMessage
      ControlID       =   ""
      Enabled         =   True
      Explanation     =   ""
      Index           =   -2147483648
      Indicator       =   ""
      LockBottom      =   False
      LockedInPosition=   True
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
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Shown()
		  If ebIsCreate Then
		    edtTablename.SetFocus()
		  End If
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub ActionFieldAdd()
		  Var dlgField As New dlgTableEditorField
		  AddHandler dlgField.FieldSaveAction, WeakAddressOf ActionFieldAddButtonPressed
		  dlgField.ShowAsAdd()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionFieldAddButtonPressed(obj As dlgTableEditorField, Name As String, Type As String, Default As String, Constraint As String) As Boolean
		  #Pragma unused obj
		  
		  If (Name = "") Then Return False
		  
		  Var dictField As New Dictionary
		  dictField.Value("isNew") = True
		  dictField.Value("fieldname") = Name
		  dictField.Value("fieldtype") = Type
		  dictField.Value("defaultvalue") = Default
		  dictField.Value("constraint") = Constraint
		  
		  Var sanityMessage As String = Me.SanityCheckField(dictField)
		  If (sanityMessage <> "") Then
		    ShowWarningDialog(dlgMessage, "Add Field", "Can't add field.", sanityMessage)
		    Return False
		  End If
		  
		  Me.AddField(dictField)
		  
		  Self.RefreshButtons()
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionFieldDelete()
		  Var selectedField As Dictionary = Me.GetSelectedField()
		  If (selectedField = Nil) Then Return
		  
		  If (selectedField.Lookup("isNew", True).BooleanValue = False) Then
		    If (Not ebDropColumnSupported) Then Return
		    If selectedField.Lookup("constraint", "").StringValue.Contains("PRIMARY", ComparisonOptions.CaseInsensitive) Or _
		      selectedField.Lookup("constraint", "").StringValue.Contains("UNIQUE", ComparisonOptions.CaseInsensitive) Or _
		      selectedField.Lookup("isIndexed", False).BooleanValue Then
		      Return
		    End If
		    
		    'Drop existing Column
		    If (lstFields.SelectedRowIndex >= 0) And (selectedField = lstFields.RowTagAt(lstFields.SelectedRowIndex)) Then
		      selectedField.Value("isDropped") = (Not selectedField.Lookup("isDropped", False).BooleanValue)
		      lstFields.CellTextAt(lstFields.SelectedRowIndex, 0) = Me.GetFieldIcon(selectedField)
		      lstFields.RowTagAt(lstFields.SelectedRowIndex) = selectedField
		    End If
		    
		    Self.RefreshButtons()
		    Return
		  End If
		  
		  'Remove new added Field
		  If (lstFields.SelectedRowIndex >= 0) Then
		    Var rowTag As Variant = lstFields.RowTagAt(lstFields.SelectedRowIndex)
		    If (rowTag IsA Dictionary) Then
		      If (Dictionary(rowTag).Lookup("isNew", False).BooleanValue = True) Then
		        lstFields.RemoveRowAt(lstFields.SelectedRowIndex)
		      End If
		    End If
		  End If
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ActionFieldEdit()
		  Var selectedField As Dictionary = Me.GetSelectedField()
		  If (selectedField = Nil) Then Return
		  
		  If (selectedField.Lookup("isNew", True).BooleanValue = False) Then
		    If (Not ebRenameColumnSupported) Then Return
		  End If
		  
		  Var dlgField As New dlgTableEditorField
		  AddHandler dlgField.FieldSaveAction, WeakAddressOf ActionFieldEditButtonPressed
		  
		  If (selectedField.Lookup("isNew", True).BooleanValue = True) Then
		    dlgField.ShowAsEdit(selectedField.Lookup("fieldname", ""), selectedField.Lookup("fieldtype", ""), selectedField.Lookup("defaultvalue", ""), selectedField.Lookup("constraint", ""))
		  Else
		    dlgField.ShowAsRename(selectedField.Lookup("fieldname", ""), selectedField.Lookup("fieldtype", ""), selectedField.Lookup("defaultvalue", ""), selectedField.Lookup("constraint", ""))
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ActionFieldEditButtonPressed(obj As dlgTableEditorField, Name As String, Type As String, Default As String, Constraint As String) As Boolean
		  #Pragma unused obj
		  
		  If (Name = "") Then Return False
		  
		  Var selectedField As Dictionary = Me.GetSelectedField()
		  If (selectedField = Nil) Then Return False
		  
		  Var modifiedField As New Dictionary
		  For Each vKey As Variant In selectedField.Keys
		    modifiedField.Value(vKey) = selectedField.Value(vKey)
		  Next
		  
		  modifiedField.Value("fieldname") = Name
		  modifiedField.Value("fieldtype") = Type
		  modifiedField.Value("defaultvalue") = Default
		  modifiedField.Value("constraint") = Constraint
		  
		  If (modifiedField.Lookup("isNew", False).BooleanValue = False) Then
		    Var bIsRenamed As Boolean = (modifiedField.Lookup("fieldname_loaded", "").StringValue.Compare(Name, ComparisonOptions.CaseInsensitive) <> 0)
		    modifiedField.Value("isRenamed") = bIsRenamed
		  End If
		  
		  Var sanityMessage As String = Me.SanityCheckField(modifiedField)
		  If (sanityMessage <> "") Then
		    ShowWarningDialog(dlgMessage, "Edit Field", "Can't edit field.", sanityMessage)
		    Return False
		  End If
		  
		  lstFields.CellTextAt(lstFields.SelectedRowIndex, 0) = Me.GetFieldIcon(modifiedField)
		  lstFields.CellTextAt(lstFields.SelectedRowIndex, 1) = modifiedField.Lookup("fieldname", "").StringValue
		  lstFields.CellTextAt(lstFields.SelectedRowIndex, 2) = modifiedField.Lookup("fieldtype", "").StringValue
		  lstFields.CellTextAt(lstFields.SelectedRowIndex, 3) = modifiedField.Lookup("defaultvalue", "").StringValue
		  lstFields.CellTextAt(lstFields.SelectedRowIndex, 4) = modifiedField.Lookup("constraint", "").StringValue
		  lstFields.RowTagAt(lstFields.SelectedRowIndex) = modifiedField
		  
		  Self.RefreshButtons()
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddField(dictField As Dictionary)
		  If (dictField = Nil) Then Return
		  
		  lstFields.AddRow("")
		  lstFields.CellTextAt(lstFields.LastAddedRowIndex, 0) = Me.GetFieldIcon(dictField)
		  lstFields.CellTextAt(lstFields.LastAddedRowIndex, 1) = dictField.Lookup("fieldname", "").StringValue
		  lstFields.CellTextAt(lstFields.LastAddedRowIndex, 2) = dictField.Lookup("fieldtype", "").StringValue
		  lstFields.CellTextAt(lstFields.LastAddedRowIndex, 3) = dictField.Lookup("defaultvalue", "").StringValue
		  lstFields.CellTextAt(lstFields.LastAddedRowIndex, 4) = dictField.Lookup("constraint", "").StringValue
		  lstFields.RowTagAt(lstFields.LastAddedRowIndex) = dictField
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetFieldIcon(field As Dictionary) As WebListboxImageRenderer
		  Var icon As WebPicture
		  
		  If (field.Lookup("isNew", False).BooleanValue = True) Then
		    icon = WebPicture.BootstrapIcon("plus-circle-fill", Color.Green)
		  Else
		    icon = WebPicture.BootstrapIcon("circle-fill", Color.Green)
		    If (field.Lookup("isRenamed", False).BooleanValue = True) Then
		      icon = WebPicture.BootstrapIcon("c-circle-fill", Color.Orange)
		    End If
		    If (field.Lookup("isDropped", False).BooleanValue = True) Then
		      icon = WebPicture.BootstrapIcon("x-circle-fill", Color.Red)
		    End If
		  End If
		  
		  Return New WebListboxImageRenderer(icon.URL, True)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetFields() As Dictionary()
		  Var fields() As Dictionary
		  
		  For i As Integer = 0 To lstFields.LastRowIndex
		    
		    Var rowTag As Variant = lstFields.RowTagAt(i)
		    If (rowTag IsA Dictionary) Then
		      fields.Add(Dictionary(rowTag))
		    End If
		  Next
		  
		  Return fields
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSelectedField() As Dictionary
		  If (lstFields.SelectedRowIndex >= 0) Then
		    Var rowTag As Variant = lstFields.RowTagAt(lstFields.SelectedRowIndex)
		    If (rowTag IsA Dictionary) Then
		      Return Dictionary(rowTag)
		    End If
		  End If
		  
		  Return Nil
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadTableForAlter(Tablename As String)
		  lstFields.RemoveAllRows()
		  
		  Try
		    Var rs As RowSet
		    
		    Var uniqueColumns() As String
		    Try
		      If (Session.DBEngineVersion >= Version_AsDouble("3.16.0")) Then
		        rs = Session.DB.SelectSQL("SELECT DISTINCT ii.name AS unique_column_name FROM sqlite_master AS m, pragma_index_list(m.name) AS il, pragma_index_info(il.name) AS ii WHERE m.type = 'table' AND m.name = '" + Tablename.EscapeSqlQuotes + "' AND il.[unique] = 1")
		        If (rs <> Nil) And (rs.RowCount > 0) Then
		          
		          rs.MoveToFirstRow
		          While (Not rs.AfterLastRow)
		            uniqueColumns.Add(rs.Column("unique_column_name").StringValue)
		            rs.MoveToNextRow
		          Wend
		        End If
		      End If
		    Catch err As DatabaseException
		      'ignore
		    End Try
		    
		    Var indexedColumns() As String
		    Try
		      If (Session.DBEngineVersion >= Version_AsDouble("3.16.0")) Then
		        rs = Session.DB.SelectSQL("SELECT DISTINCT ii.name AS indexed_column_name FROM sqlite_master AS m, pragma_index_list(m.name) AS il, pragma_index_info(il.name) AS ii WHERE m.type = 'table' AND m.name = '" + Tablename.EscapeSqlQuotes + "'")
		        If (rs <> Nil) And (rs.RowCount > 0) Then
		          
		          rs.MoveToFirstRow
		          While (Not rs.AfterLastRow)
		            indexedColumns.Add(rs.Column("indexed_column_name").StringValue)
		            rs.MoveToNextRow
		          Wend
		        End If
		      End If
		    Catch err As DatabaseException
		      'ignore
		    End Try
		    
		    
		    rs = Session.DB.SelectSQL("PRAGMA TABLE_INFO(" + Tablename.EscapeSqlFieldIfRequired + ")")
		    If (rs = Nil) Then Return
		    
		    If (rs.RowCount > 0) Then
		      rs.MoveToFirstRow
		      While (Not rs.AfterLastRow)
		        Var defaultValue As String = rs.Column("dflt_value").StringValue
		        If (defaultValue.Length >= 2) And (defaultValue.Left(1) = "'") And (defaultValue.Right(1) = "'") Then
		          defaultValue = defaultValue.Middle(1, defaultValue.Length-2)
		        End If
		        
		        Var dictField As New Dictionary
		        dictField.Value("isNew") = False
		        dictField.Value("fieldname") = rs.Column("name").StringValue
		        dictField.Value("fieldname_loaded") = rs.Column("name").StringValue
		        dictField.Value("fieldtype") = rs.Column("type").StringValue
		        dictField.Value("defaultvalue") = defaultValue
		        
		        If (rs.Column("pk").StringValue = "1") Then
		          dictField.Value("constraint") = "PRIMARY KEY"
		        ElseIf (rs.Column("notnull").StringValue = "1") Then
		          dictField.Value("constraint") = "NOT NULL"
		        ElseIf (uniqueColumns.IndexOf(rs.Column("name").StringValue) >= 0) Then
		          dictField.Value("constraint") = "UNIQUE"
		        End If
		        
		        If (indexedColumns.IndexOf(rs.Column("name").StringValue) >= 0) Then
		          dictField.Value("isIndexed") = True
		        Else
		          dictField.Value("isIndexed") = False
		        End If
		        
		        Me.AddField(dictField)
		        
		        rs.MoveToNextRow
		      Wend
		    End If
		    
		    rs.Close
		    
		  Catch DatabaseException
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  Var bHasRenamedTablename As Boolean
		  Var bHasNewFields As Boolean
		  Var bHasRenamedFields As Boolean
		  Var bHasDroppedFields As Boolean
		  
		  If ebIsAlter And ebRenameTablenameSupported And (esLoadedTablename <> edtTablename.Text.Trim) Then
		    bHasRenamedTablename = True
		  End If
		  
		  Var fields() As Dictionary = Me.GetFields()
		  For Each field As Dictionary In fields
		    If (field.Lookup("isNew", False).BooleanValue = True) Then bHasNewFields = True
		    If ebIsAlter And (field.Lookup("isNew", True).BooleanValue = False) Then
		      If (field.Lookup("isDropped", False) = True) Then
		        bHasDroppedFields = True
		      ElseIf (field.Lookup("isRenamed", False) = True) Then
		        bHasRenamedFields = True
		      End If
		    End If
		  Next
		  
		  Var selectedField As Dictionary = Me.GetSelectedField()
		  
		  Var bAdd As Boolean = True
		  If (btnFieldAdd.Enabled <> bAdd) Then btnFieldAdd.Enabled = bAdd
		  
		  Var bEdit As Boolean = (selectedField <> Nil)
		  If (bEdit = True) Then
		    If (selectedField.Lookup("isNew", True).BooleanValue = True) Then
		      If (btnFieldEdit.Indicator <> Indicators.Default) Then btnFieldEdit.Indicator = Indicators.Default
		      If (btnFieldEdit.Caption <> "Edit") Then btnFieldEdit.Caption = "Edit"
		      bEdit = True
		    Else
		      If (btnFieldEdit.Indicator <> Indicators.Warning) Then btnFieldEdit.Indicator = Indicators.Warning
		      If (btnFieldEdit.Caption <> "Rename") Then btnFieldEdit.Caption = "Rename"
		      bEdit = ebRenameColumnSupported
		    End If
		  End If
		  If (btnFieldEdit.Enabled <> bEdit) Then btnFieldEdit.Enabled = bEdit
		  If (btnFieldEdit.Visible <> bEdit) Then btnFieldEdit.Visible = bEdit
		  
		  Var bDelete As Boolean = (selectedField <> Nil)
		  If (bDelete = True) Then
		    If (selectedField.Lookup("isNew", False).BooleanValue = True) Then
		      If (btnFieldDelete.Indicator <> Indicators.Default) Then btnFieldDelete.Indicator = Indicators.Default
		      If (btnFieldDelete.Caption <> "Delete") Then btnFieldDelete.Caption = "Delete"
		      bDelete = True
		    Else
		      Var dropCaption As String = If(selectedField.Lookup("isDropped", False).BooleanValue = True, "UnDrop", "Drop")
		      If (btnFieldDelete.Caption <> dropCaption) Then btnFieldDelete.Caption = dropCaption
		      If (btnFieldDelete.Indicator <> Indicators.Danger) Then btnFieldDelete.Indicator = Indicators.Danger
		      bDelete = ebDropColumnSupported And _
		      (Not selectedField.Lookup("constraint", "").StringValue.Contains("PRIMARY", ComparisonOptions.CaseInsensitive)) And _
		      (Not selectedField.Lookup("constraint", "").StringValue.Contains("UNIQUE", ComparisonOptions.CaseInsensitive)) And _
		      (Not selectedField.Lookup("isIndexed", False).BooleanValue)
		    End If
		  End If
		  If (btnFieldDelete.Enabled <> bDelete) Then btnFieldDelete.Enabled = bDelete
		  If (btnFieldDelete.Visible <> bDelete) Then btnFieldDelete.Visible = bDelete
		  
		  Var bSave As Boolean = (edtTablename.Text.Trim <> "") And (bHasNewFields Or bHasDroppedFields Or bHasRenamedFields Or bHasRenamedTablename)
		  If (btnSave.Enabled <> bSave) Then btnSave.Enabled = bSave
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SanityCheckField(field As Dictionary) As String
		  If (field = Nil) Then Return ""
		  
		  If ebIsAlter And (field.Lookup("isNew", False).BooleanValue = True) Then
		    'new Fields in ALTER TABLE
		    Var defaultValue As String = field.Lookup("defaultvalue", "").StringValue
		    Select Case defaultValue
		    Case "CURRENT_TIME", "CURRENT_DATE", "CURRENT_TIMESTAMP"
		      Return "The column may not have a default value of CURRENT_TIME, CURRENT_DATE or CURRENT_TIMESTAMP in an ALTER TABLE command."
		    End Select
		    
		    Var constraint As String = field.Lookup("constraint", "").StringValue
		    If (constraint.Contains("PRIMARY KEY") Or constraint.Contains("UNIQUE")) Then
		      Return "The column may not have a PRIMARY KEY or UNIQUE constraint in an ALTER TABLE command."
		    End If
		  End If
		  
		  Return ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SaveAsSQL() As String()
		  If ebIsCreate Then
		    Return Me.SaveAsSQLCreate()
		  End If
		  
		  If ebIsAlter Then
		    Return Me.SaveAsSQLAlter()
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SaveAsSQLAlter() As String()
		  Var sqlStatements() As String
		  
		  If (esLoadedTablename <> edtTablename.Text.Trim) Then
		    If ebRenameTablenameSupported Then
		      'Rename Table
		      Var sqlRename As String = "ALTER TABLE " + esLoadedTablename.EscapeSqlFieldIfRequired + _
		      " RENAME TO " + edtTablename.Text.Trim.EscapeSqlFieldIfRequired
		      sqlStatements.Add(sqlRename)
		      
		    Else
		      'Oops, should not have happened...make sure altering the loaded tablename
		      edtTablename.Text = esLoadedTablename
		    End If
		  End If
		  
		  Var fields() As Dictionary = Me.GetFields()
		  
		  Var field As Dictionary
		  For i As Integer = 0 To fields.LastIndex
		    field = fields(i)
		    If (field.Lookup("isNew", False).BooleanValue <> True) Then
		      If (field.Lookup("isDropped", False) = True) And ebDropColumnSupported Then
		        'Drop Column
		        Var sqlDrop As String = "ALTER TABLE " + edtTablename.Text.Trim.EscapeSqlFieldIfRequired + _
		        " DROP COLUMN " + field.Lookup("fieldname_loaded", "").StringValue.EscapeSqlFieldIfRequired
		        sqlStatements.Add(sqlDrop)
		        
		        Continue
		      End If
		      
		      If (field.Lookup("isRenamed", False) = True) And ebRenameColumnSupported Then
		        'Rename Column
		        Var sqlRename As String = "ALTER TABLE " + edtTablename.Text.Trim.EscapeSqlFieldIfRequired + _
		        " RENAME COLUMN " + field.Lookup("fieldname_loaded", "").StringValue.EscapeSqlFieldIfRequired + _
		        " TO " + field.Lookup("fieldname", "").StringValue.EscapeSqlFieldIfRequired
		        sqlStatements.Add(sqlRename)
		        
		        Continue
		      End If
		      
		      Continue
		    End If
		    
		    'Add Column
		    Var sqlField As String = field.Lookup("fieldname", "").StringValue.EscapeSqlFieldIfRequired + _
		    If(field.Lookup("fieldtype", "").StringValue <> "", " " + field.Lookup("fieldtype", "").StringValue, "")
		    
		    Select Case field.Lookup("constraint", "").StringValue
		    Case "UNIQUE (multi)"
		      'not allowed in ALTER TABLE
		    Case "UNIQUE (single)"
		      'not allowed in ALTER TABLE
		    Else
		      sqlField = sqlField + " " + field.Lookup("constraint", "").StringValue
		    End Select
		    
		    If (field.Lookup("defaultvalue", "").StringValue <> "") Then
		      sqlField = sqlField + " DEFAULT " + field.Lookup("defaultvalue", "").StringValue.EscapeSqlDefaultValueIfRequired
		    End If
		    
		    Var sql As String = "ALTER TABLE " + edtTablename.Text.Trim.EscapeSqlFieldIfRequired + _
		    " ADD COLUMN " + sqlField
		    
		    sqlStatements.Add(sql)
		  Next
		  
		  Return sqlStatements
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SaveAsSQLCreate() As String()
		  Var fields() As Dictionary = Me.GetFields()
		  
		  Var field As Dictionary
		  Var sqlFields() As String
		  Var multiUniqueFields() As String
		  For i As Integer = 0 To fields.LastIndex
		    field = fields(i)
		    If (field.Lookup("isNew", False).BooleanValue <> True) Then Continue
		    
		    Var sqlField As String = field.Lookup("fieldname", "").StringValue.EscapeSqlFieldIfRequired + _
		    If(field.Lookup("fieldtype", "").StringValue <> "", " " + field.Lookup("fieldtype", "").StringValue, "")
		    
		    Select Case field.Lookup("constraint", "").StringValue
		    Case "UNIQUE (multi)"
		      'add later at table level
		      multiUniqueFields.Add(field.Lookup("fieldname", "").StringValue.EscapeSqlFieldIfRequired)
		    Case "UNIQUE (single)"
		      sqlField = sqlField + " UNIQUE"
		    Else
		      sqlField = sqlField + " " + field.Lookup("constraint", "").StringValue
		    End Select
		    
		    If (field.Lookup("defaultvalue", "").StringValue <> "") Then
		      sqlField = sqlField + " DEFAULT " + field.Lookup("defaultvalue", "").StringValue.EscapeSqlDefaultValueIfRequired
		    End If
		    
		    sqlFields.Add(sqlField)
		  Next
		  
		  Var sqlUniqueMulti As String
		  If (multiUniqueFields.LastIndex >= 0) Then
		    sqlUniqueMulti = ", UNIQUE (" + String.FromArray(multiUniqueFields, ", ") + ")"
		  End If
		  
		  Var sql As String = "CREATE TABLE " + edtTablename.Text.Trim.EscapeSqlFieldIfRequired + " (" + _
		  String.FromArray(sqlFields, ", ") + _
		  sqlUniqueMulti + _
		  ")"
		  
		  Return Array(sql)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowAsAlter(Tablename As String)
		  btnSave.Caption = "Alter"
		  edtTablename.Text = Tablename
		  ebIsCreate = False
		  ebIsAlter = True
		  esLoadedTablename = Tablename
		  
		  Me.Show_InitSupportedCommands()
		  Me.LoadTableForAlter(Tablename)
		  edtTablename.Enabled = ebRenameTablenameSupported
		  
		  Me.RefreshButtons()
		  
		  Super.Show()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowAsCreate()
		  btnSave.Caption = "Create"
		  ebIsCreate = True
		  ebIsAlter = False
		  esLoadedTablename = ""
		  
		  Me.Show_InitSupportedCommands()
		  Me.RefreshButtons()
		  
		  Super.Show()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Show_InitSupportedCommands()
		  ebRenameColumnSupported = (Session.DBEngineVersion >= Version_AsDouble("3.25.0"))
		  ebDropColumnSupported = (Session.DBEngineVersion >= Version_AsDouble("3.35.0"))
		  
		  'The behavior of ALTER TABLE when renaming a table was enhanced in versions 3.25.0 (2018-09-15) and 3.26.0 (2018-12-01) in order to carry the rename operation forward into triggers and views that reference the renamed table.
		  ebRenameTablenameSupported = (Session.DBEngineVersion >= Version_AsDouble("3.26.0"))
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event TableEditorSaveAction(Name As String, SQLStatements() As String) As Boolean
	#tag EndHook


	#tag Property, Flags = &h21
		Private ebDropColumnSupported As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ebIsAlter As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ebIsCreate As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ebRenameColumnSupported As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ebRenameTablenameSupported As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private esLoadedTablename As String
	#tag EndProperty


#tag EndWindowCode

#tag Events edtTablename
	#tag Event
		Sub TextChanged()
		  If ebIsAlter Then
		    If (Me.Text.Trim <> esLoadedTablename) Then
		      labTablename.TextColor = Color.Orange
		    Else
		      labTablename.TextColor = nil
		    End If
		  End If
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstFields
	#tag Event
		Sub Opening()
		  Me.HeaderAt(0) = " "
		  Me.HeaderAt(1) = "Fieldname"
		  Me.HeaderAt(2) = "Type"
		  Me.HeaderAt(3) = "Default"
		  Me.HeaderAt(4) = "Constraint"
		  
		  Me.ColumnSortTypeAt(0) = WebListBox.SortTypes.Unsortable
		  Me.ColumnSortTypeAt(1) = WebListBox.SortTypes.Unsortable
		  Me.ColumnSortTypeAt(2) = WebListBox.SortTypes.Unsortable
		  Me.ColumnSortTypeAt(3) = WebListBox.SortTypes.Unsortable
		  Me.ColumnSortTypeAt(4) = WebListBox.SortTypes.Unsortable
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(rows() As Integer)
		  #Pragma unused rows
		  
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnFieldAdd
	#tag Event
		Sub Pressed()
		  Self.ActionFieldAdd()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnFieldEdit
	#tag Event
		Sub Pressed()
		  Self.ActionFieldEdit()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnFieldDelete
	#tag Event
		Sub Pressed()
		  Self.ActionFieldDelete()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSave
	#tag Event
		Sub Pressed()
		  If TableEditorSaveAction(edtTablename.Text.Trim, Self.SaveAsSQL()) Then
		    Self.Close()
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Pressed()
		  Self.Close()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
		Visible=false
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
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=false
		Group="Behavior"
		InitialValue=""
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
