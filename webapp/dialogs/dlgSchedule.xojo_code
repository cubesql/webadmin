#tag WebPage
Begin dlgBase dlgSchedule
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   Enabled         =   True
   Height          =   624
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
   Width           =   600
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
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
      Left            =   372
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   "0"
      Scope           =   2
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   566
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
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
      Left            =   480
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   "0"
      Scope           =   2
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   566
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
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
      PanelIndex      =   "0"
      Scope           =   2
      TabIndex        =   0
      TabStop         =   True
      Text            =   "Schedule"
      TextAlignment   =   2
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   560
      _mPanelIndex    =   -1
   End
   Begin WebRectangle rctFormContent
      BackgroundColor =   &cFFFFFF
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      HasBackgroundColor=   False
      Height          =   481
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
      PanelIndex      =   "0"
      Scope           =   2
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   66
      Visible         =   True
      Width           =   560
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
      Begin WebLabel labType
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
         TabIndex        =   2
         TabPanelIndex   =   -1
         TabStop         =   True
         Text            =   "Type:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   132
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebLabel labName
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
         TabIndex        =   0
         TabPanelIndex   =   -1
         TabStop         =   True
         Text            =   "Name:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   86
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebTextField edtName
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
         TabPanelIndex   =   -1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         Tooltip         =   ""
         Top             =   86
         Visible         =   True
         Width           =   372
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu lstType
         ControlID       =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   ""
         LastAddedRowIndex=   0
         LastRowIndex    =   0
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Parent          =   "rctFormContent"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   0
         SelectedRowText =   ""
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   132
         Visible         =   True
         Width           =   222
         _mPanelIndex    =   -1
      End
      Begin WebLabel labOptions
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
         TabIndex        =   4
         TabPanelIndex   =   -1
         TabStop         =   True
         Text            =   "Options:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   178
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebTextField edtOptions
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
         TabIndex        =   5
         TabPanelIndex   =   -1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         Tooltip         =   ""
         Top             =   178
         Visible         =   True
         Width           =   372
         _mPanelIndex    =   -1
      End
      Begin WebCheckbox chkMonday
         Caption         =   "Monday"
         ControlID       =   ""
         Enabled         =   True
         Height          =   34
         Indeterminate   =   False
         Index           =   -2147483648
         Indicator       =   0
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   316
         Value           =   False
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebCheckbox chkTuesday
         Caption         =   "Tuesday"
         ControlID       =   ""
         Enabled         =   True
         Height          =   34
         Indeterminate   =   False
         Index           =   -2147483648
         Indicator       =   0
         Left            =   310
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   316
         Value           =   False
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebCheckbox chkWednesday
         Caption         =   "Wednesday"
         ControlID       =   ""
         Enabled         =   True
         Height          =   34
         Indeterminate   =   False
         Index           =   -2147483648
         Indicator       =   0
         Left            =   432
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   316
         Value           =   False
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebCheckbox chkThursday
         Caption         =   "Thursday"
         ControlID       =   ""
         Enabled         =   True
         Height          =   34
         Indeterminate   =   False
         Index           =   -2147483648
         Indicator       =   0
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   358
         Value           =   False
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebCheckbox chkFriday
         Caption         =   "Friday"
         ControlID       =   ""
         Enabled         =   True
         Height          =   34
         Indeterminate   =   False
         Index           =   -2147483648
         Indicator       =   0
         Left            =   310
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   15
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   358
         Value           =   False
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebCheckbox chkSaturday
         Caption         =   "Saturday"
         ControlID       =   ""
         Enabled         =   True
         Height          =   34
         Indeterminate   =   False
         Index           =   -2147483648
         Indicator       =   0
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   16
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   400
         Value           =   False
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebCheckbox chkSunday
         Caption         =   "Sunday"
         ControlID       =   ""
         Enabled         =   True
         Height          =   34
         Indeterminate   =   False
         Index           =   -2147483648
         Indicator       =   0
         Left            =   310
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   17
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   400
         Value           =   False
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebLabel labDays
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
         TabIndex        =   10
         TabPanelIndex   =   -1
         TabStop         =   True
         Text            =   "Days:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   316
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebLabel labTime
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
         TabIndex        =   18
         TabPanelIndex   =   -1
         TabStop         =   True
         Text            =   "Time:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   442
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu lstHour
         ControlID       =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   ""
         LastAddedRowIndex=   0
         LastRowIndex    =   0
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   0
         SelectedRowText =   ""
         TabIndex        =   19
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   442
         Visible         =   True
         Width           =   100
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu lstMinute
         ControlID       =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   ""
         LastAddedRowIndex=   0
         LastRowIndex    =   0
         Left            =   310
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   0
         SelectedRowText =   ""
         TabIndex        =   21
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   442
         Visible         =   True
         Width           =   100
         _mPanelIndex    =   -1
      End
      Begin WebLabel labHourMinute
         Bold            =   False
         ControlID       =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         Italic          =   False
         Left            =   294
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
         TabIndex        =   20
         TabPanelIndex   =   -1
         TabStop         =   True
         Text            =   ":"
         TextAlignment   =   2
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   442
         Underline       =   False
         Visible         =   True
         Width           =   10
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu lstInterval
         ControlID       =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   ""
         LastAddedRowIndex=   0
         LastRowIndex    =   0
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Parent          =   "rctFormContent"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   0
         SelectedRowText =   ""
         TabIndex        =   23
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   488
         Visible         =   True
         Width           =   222
         _mPanelIndex    =   -1
      End
      Begin WebLabel labInterval
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
         TabIndex        =   22
         TabPanelIndex   =   -1
         TabStop         =   True
         Text            =   "Interval:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   488
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebLabel labExecutionType
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
         TabIndex        =   8
         TabPanelIndex   =   -1
         TabStop         =   True
         Text            =   "Execution Type:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   270
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu lstExecutionType
         ControlID       =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   ""
         LastAddedRowIndex=   0
         LastRowIndex    =   0
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   0
         SelectedRowText =   ""
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   270
         Visible         =   True
         Width           =   222
         _mPanelIndex    =   -1
      End
      Begin WebCheckbox chkEnabled
         Caption         =   "Enabled"
         ControlID       =   ""
         Enabled         =   True
         Height          =   34
         Indeterminate   =   False
         Index           =   -2147483648
         Indicator       =   0
         Left            =   188
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   224
         Value           =   True
         Visible         =   True
         Width           =   372
         _mPanelIndex    =   -1
      End
      Begin WebLabel labScheduleEnabled
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
         TabIndex        =   6
         TabPanelIndex   =   -1
         TabStop         =   True
         Text            =   "Schedule:"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   224
         Underline       =   False
         Visible         =   True
         Width           =   140
         _mPanelIndex    =   -1
      End
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Shown()
		  If edtName.Enabled Then
		    edtName.SetFocus()
		  End If
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor()
		  Super.Constructor
		  
		  edictSchedule = New Dictionary
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSaveDictionary() As Dictionary
		  Var saveDictionary As New Dictionary
		  
		  saveDictionary.Value("schedname") = edtName.Text.Trim
		  saveDictionary.Value("schedtype") = lstType.RowTagAt(lstType.SelectedRowIndex)
		  saveDictionary.Value("schedoptions") = edtOptions.Text.Trim
		  saveDictionary.Value("schedenabled") = If(chkEnabled.Value, 1, 0)
		  
		  Select Case lstExecutionType.RowTagAt(lstExecutionType.SelectedRowIndex).StringValue
		  Case "STARTUP", "SHUTDOWN"
		    saveDictionary.Value("scheddays") = lstExecutionType.RowTagAt(lstExecutionType.SelectedRowIndex).StringValue
		  Else
		    Var sDays As String = ""
		    If chkSunday.Value Then sDays = sDays + "0"
		    If chkMonday.Value Then sDays = sDays + "1"
		    If chkTuesday.Value Then sDays = sDays + "2"
		    If chkWednesday.Value Then sDays = sDays + "3"
		    If chkThursday.Value Then sDays = sDays + "4"
		    If chkFriday.Value Then sDays = sDays + "5"
		    If chkSaturday.Value Then sDays = sDays + "6"
		    saveDictionary.Value("scheddays") = sDays
		  End Select
		  
		  saveDictionary.Value("schedhours") = lstHour.RowTagAt(lstHour.SelectedRowIndex).IntegerValue
		  saveDictionary.Value("schedminutes") = lstMinute.RowTagAt(lstMinute.SelectedRowIndex).IntegerValue
		  saveDictionary.Value("schedweeks") = lstInterval.RowTagAt(lstInterval.SelectedRowIndex).IntegerValue
		  
		  Return saveDictionary
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InitScheduleEdit(schedule As String)
		  Try
		    Var rs As RowSet = Session.DB.SelectSQL("SHOW SCHEDULE '" + schedule.EscapeSqlQuotes + "'")
		    If (rs = Nil) Then Return
		    
		    rs.MoveToFirstRow
		    
		    edictSchedule.Value("schedname") = rs.Column("schedname").StringValue
		    edictSchedule.Value("schedtype") = rs.Column("schedtype").StringValue
		    edictSchedule.Value("schedoptions") = rs.Column("schedoptions").StringValue
		    edictSchedule.Value("schedenabled") = rs.Column("schedenabled").IntegerValue
		    
		    edictSchedule.Value("scheddays") = rs.Column("scheddays").StringValue
		    edictSchedule.Value("schedhours") = rs.Column("schedhours").IntegerValue
		    edictSchedule.Value("schedminutes") = rs.Column("schedminutes").IntegerValue
		    edictSchedule.Value("schedweeks") = rs.Column("schedweeks").IntegerValue
		    
		    rs.Close
		    
		  Catch DatabaseException
		    
		  End Try
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InitScheduleNew()
		  edictSchedule.Value("schedname") = ""
		  edictSchedule.Value("schedtype") = "BACKUP"
		  edictSchedule.Value("schedoptions") = ""
		  edictSchedule.Value("schedenabled") = 1
		  
		  edictSchedule.Value("scheddays") = "0123456"
		  edictSchedule.Value("schedhours") = 0
		  edictSchedule.Value("schedminutes") = 0
		  edictSchedule.Value("schedweeks") = 1
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Load()
		  Me.LoadSchedule()
		  
		  Me.RefreshControls()
		  Me.RefreshButtons()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadSchedule()
		  edtName.Text = edictSchedule.Lookup("schedname", "").StringValue
		  
		  Select Case edictSchedule.Lookup("schedtype", "").StringValue
		  Case "Backup", "SQL", "SHELL"
		    lstType.SelectRowWithTag(edictSchedule.Lookup("schedtype", "BACKUP").StringValue)
		  Else
		    lstType.SelectRowWithTag("BACKUP")
		  End Select
		  
		  edtOptions.Text = edictSchedule.Lookup("schedoptions", "").StringValue
		  chkEnabled.Value = edictSchedule.Lookup("schedenabled", -1).IntegerValue = 1
		  
		  Select Case edictSchedule.Lookup("scheddays", "").StringValue
		  Case "STARTUP", "SHUTDOWN"
		    chkSunday.Value = False
		    chkMonday.Value = False
		    chkTuesday.Value = False
		    chkWednesday.Value = False
		    chkThursday.Value = False
		    chkFriday.Value = False
		    chkSaturday.Value = False
		    lstExecutionType.SelectRowWithTag(edictSchedule.Lookup("scheddays", "").StringValue)
		  Else
		    chkSunday.Value = edictSchedule.Lookup("scheddays", "").StringValue.Contains("0")
		    chkMonday.Value = edictSchedule.Lookup("scheddays", "").StringValue.Contains("1")
		    chkTuesday.Value = edictSchedule.Lookup("scheddays", "").StringValue.Contains("2")
		    chkWednesday.Value = edictSchedule.Lookup("scheddays", "").StringValue.Contains("3")
		    chkThursday.Value = edictSchedule.Lookup("scheddays", "").StringValue.Contains("4")
		    chkFriday.Value = edictSchedule.Lookup("scheddays", "").StringValue.Contains("5")
		    chkSaturday.Value = edictSchedule.Lookup("scheddays", "").StringValue.Contains("6")
		    lstExecutionType.SelectRowWithTag("DAYS")
		    
		  End Select
		  
		  lstHour.SelectRowWithTag(edictSchedule.Lookup("schedhours", 0).IntegerValue)
		  lstMinute.SelectRowWithTag(edictSchedule.Lookup("schedminutes", 0).IntegerValue)
		  
		  Select Case edictSchedule.Lookup("schedweeks", -1).IntegerValue
		  Case 1, 2, 3, 4, 8, 12
		    lstInterval.SelectRowWithTag(edictSchedule.Lookup("schedweeks", -1).IntegerValue)
		  Else
		    lstInterval.SelectRowWithTag(1)
		  End Select
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshButtons()
		  btnSave.Enabled = (edtName.Text.Trim <> "")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshControls()
		  Var bExecutionTypeDays As Boolean = (lstExecutionType.RowTagAt(lstExecutionType.SelectedRowIndex).StringValue = "DAYS")
		  
		  labDays.Enabled = bExecutionTypeDays
		  chkMonday.Enabled = bExecutionTypeDays
		  chkTuesday.Enabled = bExecutionTypeDays
		  chkWednesday.Enabled = bExecutionTypeDays
		  chkThursday.Enabled = bExecutionTypeDays
		  chkFriday.Enabled = bExecutionTypeDays
		  chkSaturday.Enabled = bExecutionTypeDays
		  chkSunday.Enabled = bExecutionTypeDays
		  
		  labTime.Enabled = bExecutionTypeDays
		  lstHour.Enabled = bExecutionTypeDays
		  lstMinute.Enabled = bExecutionTypeDays
		  
		  labInterval.Enabled = bExecutionTypeDays
		  lstInterval.Enabled = bExecutionTypeDays
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Show()
		  Super.Show()
		  
		  Me.InitScheduleNew()
		  labTitle.Text = "Create Schedule"
		  btnSave.Caption = "Create"
		  edtName.Enabled = True
		  
		  Me.Load()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowAsEdit(schedule As String)
		  Super.Show()
		  
		  Me.InitScheduleEdit(schedule)
		  labTitle.Text = "Edit Schedule"
		  btnSave.Caption = "Edit"
		  edtName.Enabled = False
		  
		  Me.Load()
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event SaveScheduleAction(saveSchedule As Dictionary) As Boolean
	#tag EndHook


	#tag Property, Flags = &h21
		Private edictSchedule As Dictionary
	#tag EndProperty


#tag EndWindowCode

#tag Events btnCancel
	#tag Event
		Sub Pressed()
		  Self.Close()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSave
	#tag Event
		Sub Pressed()
		  Var saveDictionary As Dictionary = Self.GetSaveDictionary()
		  
		  If SaveScheduleAction(saveDictionary) Then
		    Self.Close()
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edtName
	#tag Event
		Sub TextChanged()
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstType
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  
		  Me.AddRow("Backup", "BACKUP")
		  Me.AddRow("SQL", "SQL")
		  Me.AddRow("Shell", "SHELL")
		  
		  Me.SelectedRowIndex = 0
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edtOptions
	#tag Event
		Sub TextChanged()
		  Self.RefreshButtons()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstHour
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  
		  For i As Integer = 0 To 23
		    Me.AddRow(Format(i, "00"), i)
		  Next
		  
		  Me.SelectedRowIndex = 0
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstMinute
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  
		  For i As Integer = 0 To 59
		    Me.AddRow(Format(i, "00"), i)
		  Next
		  
		  Me.SelectedRowIndex = 0
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstInterval
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  
		  Me.AddRow("Every Week", 1)
		  Me.AddRow("Every 2 Weeks", 2)
		  Me.AddRow("Every 3 Weeks", 3)
		  Me.AddRow("Every Month", 4)
		  Me.AddRow("Every 2 Months", 8)
		  Me.AddRow("Every 3 Months", 12)
		  
		  Me.SelectedRowIndex = 0
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstExecutionType
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  
		  Me.AddRow("Day | Time", "DAYS")
		  Me.AddRow("-")
		  Me.AddRow("Startup", "STARTUP")
		  Me.AddRow("Shutdown", "SHUTDOWN")
		  
		  Me.SelectedRowIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  #Pragma unused item
		  
		  Self.RefreshControls()
		  
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
