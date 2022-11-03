#tag DesktopWindow
Begin DesktopWindow Window1
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   88
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   845645823
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Select Language"
   Type            =   0
   Visible         =   True
   Width           =   272
   Begin DesktopPopupMenu PopupMenu1
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   34
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   232
   End
End
#tag EndDesktopWindow

#tag WindowCode
#tag EndWindowCode

#tag Events PopupMenu1
	#tag Event
		Sub Opening()
		  me.AddRow(Text.FromUnicodeCodepoint(&h1F1E6) + Text.FromUnicodeCodepoint(&h1F1F9)+"Österreich")
		  me.RowTagAt(0)="AT"
		  
		  me.AddRow(Text.FromUnicodeCodepoint(&h1F1E6) + Text.FromUnicodeCodepoint(&h1F1FA)+"Australia")
		  me.RowTagAt(1)="AU"
		  
		  me.AddRow(Text.FromUnicodeCodepoint(&h1F1E7) + Text.FromUnicodeCodepoint(&h1F1EA)+"Belgique")
		  me.RowTagAt(2)="BE"
		  
		  me.AddRow(Text.FromUnicodeCodepoint(&h1F1E7) + Text.FromUnicodeCodepoint(&h1F1F7)+"Brazil")
		  me.RowTagAt(3)="BR"
		  
		  me.AddRow(Text.FromUnicodeCodepoint(&h1F1E8) + Text.FromUnicodeCodepoint(&h1F1E6)+"Canada")
		  me.RowTagAt(4)="CA"
		  
		  me.AddRow(Text.FromUnicodeCodepoint(&h1F1E8) + Text.FromUnicodeCodepoint(&h1F1ED)+"Suisse")
		  me.RowTagAt(5)="CH"
		  
		  me.AddRow(Text.FromUnicodeCodepoint(&h1F1E8) + Text.FromUnicodeCodepoint(&h1F1FE)+"Cyprus")
		  me.RowTagAt(6)="CY"
		  
		  me.AddRow(Text.FromUnicodeCodepoint(&h1F1E9) + Text.FromUnicodeCodepoint(&h1F1EA) +"Deutschland")
		  me.RowTagAt(7)="DE"
		  
		  me.AddRow(Text.FromUnicodeCodepoint(&h1F1E9) + Text.FromUnicodeCodepoint(&h1F1F0)+"Denmark")
		  me.RowTagAt(8)="DK"
		  
		  me.AddRow(Text.FromUnicodeCodepoint(&h1F1EA) + Text.FromUnicodeCodepoint(&h1F1EA)+"Estonia")
		  me.RowTagAt(9)="EE"
		  
		  me.AddRow(Text.FromUnicodeCodepoint(&h1F1EA) + Text.FromUnicodeCodepoint(&h1F1F8)+"Espana")
		  me.RowTagAt(10)="ES"
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  var selected as string = me.SelectedRowValue
		  MessageBox("You have selected :"+EndOfLine+selected)
		End Sub
	#tag EndEvent
#tag EndEvents
