private module TerminfoKeyValidator
  def valid?
    {% begin %}
      value <= {{ @type }}::{{ @type.constants.last }}.value
    {% end %}
  end
end

struct Enum
  include TerminfoKeyValidator
end

module Terminfo::Keys
  enum Booleans
    # Order is important

    AutoLeftMargin
    AutoRightMargin
    NoEscCtlc
    CeolStandoutGlitch
    EatNewlineGlitch
    EraseOverstrike
    GenericType
    HardCopy
    HasMetaKey
    HasStatusLine
    InsertNullGlitch
    MemoryAbove
    MemoryBelow
    MoveInsertMode
    MoveStandoutMode
    OverStrike
    StatusLineEscOk
    DestTabsMagicSmso
    TildeGlitch
    TransparentUnderline
    XonXoff
    NeedsXonXoff
    PrtrSilent
    HardCursor
    NonRevRmcup
    NoPadChar
    NonDestScrollRegion
    CanChange
    BackColorErase
    HueLightnessSaturation
    ColAddrGlitch
    CrCancelsMicroMode
    HasPrintWheel
    RowAddrGlitch
    SemiAutoRightMargin
    CpiChangesRes
    LpiChangesRes
    BackspacesWithBs
    CrtNoScrolling
    NoCorrectlyWorkingCr
    GnuHasMetaKey
    LinefeedIsNewline
    HasHardwareTabs
    ReturnDoesClrEol
  end

  enum Numbers
    # Order is important

    Columns
    InitTabs
    Lines
    LinesOfMemory
    MagicCookieGlitch
    PaddingBaudRate
    VirtualTerminal
    WidthStatusLine
    NumLabels
    LabelHeight
    LabelWidth
    MaxAttributes
    MaximumWindows
    MaxColors
    MaxPairs
    NoColorVideo
    BufferCapacity
    DotVertSpacing
    DotHorzSpacing
    MaxMicroAddress
    MaxMicroJump
    MicroColSize
    MicroLineSize
    NumberOfPins
    OutputResChar
    OutputResLine
    OutputResHorzInch
    OutputResVertInch
    PrintRate
    WideCharSize
    Buttons
    BitImageEntwining
    BitImageType
    MagicCookieGlitchUl
    CarriageReturnDelay
    NewLineDelay
    BackspaceDelay
    HorizontalTabDelay
    NumberOfFunctionKeys
  end

  enum Strings
    # Order is important

    BackTab
    Bell
    CarriageReturn
    ChangeScrollRegion
    ClearAllTabs
    ClearScreen
    ClrEol
    ClrEos
    ColumnAddress
    CommandCharacter
    CursorAddress
    CursorDown
    CursorHome
    CursorInvisible
    CursorLeft
    CursorMemAddress
    CursorNormal
    CursorRight
    CursorToLl
    CursorUp
    CursorVisible
    DeleteCharacter
    DeleteLine
    DisStatusLine
    DownHalfLine
    EnterAltCharsetMode
    EnterBlinkMode
    EnterBoldMode
    EnterCaMode
    EnterDeleteMode
    EnterDimMode
    EnterInsertMode
    EnterSecureMode
    EnterProtectedMode
    EnterReverseMode
    EnterStandoutMode
    EnterUnderlineMode
    EraseChars
    ExitAltCharsetMode
    ExitAttributeMode
    ExitCaMode
    ExitDeleteMode
    ExitInsertMode
    ExitStandoutMode
    ExitUnderlineMode
    FlashScreen
    FormFeed
    FromStatusLine
    Init1string
    Init2string
    Init3string
    InitFile
    InsertCharacter
    InsertLine
    InsertPadding
    KeyBackspace
    KeyCatab
    KeyClear
    KeyCtab
    KeyDc
    KeyDl
    KeyDown
    KeyEic
    KeyEol
    KeyEos
    KeyF0
    KeyF1
    KeyF10
    KeyF2
    KeyF3
    KeyF4
    KeyF5
    KeyF6
    KeyF7
    KeyF8
    KeyF9
    KeyHome
    KeyIc
    KeyIl
    KeyLeft
    KeyLl
    KeyNpage
    KeyPpage
    KeyRight
    KeySf
    KeySr
    KeyStab
    KeyUp
    KeypadLocal
    KeypadXmit
    LabF0
    LabF1
    LabF10
    LabF2
    LabF3
    LabF4
    LabF5
    LabF6
    LabF7
    LabF8
    LabF9
    MetaOff
    MetaOn
    Newline
    PadChar
    ParmDch
    ParmDeleteLine
    ParmDownCursor
    ParmIch
    ParmIndex
    ParmInsertLine
    ParmLeftCursor
    ParmRightCursor
    ParmRindex
    ParmUpCursor
    PkeyKey
    PkeyLocal
    PkeyXmit
    PrintScreen
    PrtrOff
    PrtrOn
    RepeatChar
    Reset1string
    Reset2string
    Reset3string
    ResetFile
    RestoreCursor
    RowAddress
    SaveCursor
    ScrollForward
    ScrollReverse
    SetAttributes
    SetTab
    SetWindow
    Tab
    ToStatusLine
    UnderlineChar
    UpHalfLine
    InitProg
    KeyA1
    KeyA3
    KeyB2
    KeyC1
    KeyC3
    PrtrNon
    CharPadding
    AcsChars
    PlabNorm
    KeyBtab
    EnterXonMode
    ExitXonMode
    EnterAmMode
    ExitAmMode
    XonCharacter
    XoffCharacter
    EnaAcs
    LabelOn
    LabelOff
    KeyBeg
    KeyCancel
    KeyClose
    KeyCommand
    KeyCopy
    KeyCreate
    KeyEnd
    KeyEnter
    KeyExit
    KeyFind
    KeyHelp
    KeyMark
    KeyMessage
    KeyMove
    KeyNext
    KeyOpen
    KeyOptions
    KeyPrevious
    KeyPrint
    KeyRedo
    KeyReference
    KeyRefresh
    KeyReplace
    KeyRestart
    KeyResume
    KeySave
    KeySuspend
    KeyUndo
    KeySbeg
    KeyScancel
    KeyScommand
    KeyScopy
    KeyScreate
    KeySdc
    KeySdl
    KeySelect
    KeySend
    KeySeol
    KeySexit
    KeySfind
    KeyShelp
    KeyShome
    KeySic
    KeySleft
    KeySmessage
    KeySmove
    KeySnext
    KeySoptions
    KeySprevious
    KeySprint
    KeySredo
    KeySreplace
    KeySright
    KeySrsume
    KeySsave
    KeySsuspend
    KeySundo
    ReqForInput
    KeyF11
    KeyF12
    KeyF13
    KeyF14
    KeyF15
    KeyF16
    KeyF17
    KeyF18
    KeyF19
    KeyF20
    KeyF21
    KeyF22
    KeyF23
    KeyF24
    KeyF25
    KeyF26
    KeyF27
    KeyF28
    KeyF29
    KeyF30
    KeyF31
    KeyF32
    KeyF33
    KeyF34
    KeyF35
    KeyF36
    KeyF37
    KeyF38
    KeyF39
    KeyF40
    KeyF41
    KeyF42
    KeyF43
    KeyF44
    KeyF45
    KeyF46
    KeyF47
    KeyF48
    KeyF49
    KeyF50
    KeyF51
    KeyF52
    KeyF53
    KeyF54
    KeyF55
    KeyF56
    KeyF57
    KeyF58
    KeyF59
    KeyF60
    KeyF61
    KeyF62
    KeyF63
    ClrBol
    ClearMargins
    SetLeftMargin
    SetRightMargin
    LabelFormat
    SetClock
    DisplayClock
    RemoveClock
    CreateWindow
    GotoWindow
    Hangup
    DialPhone
    QuickDial
    Tone
    Pulse
    FlashHook
    FixedPause
    WaitTone
    User0
    User1
    User2
    User3
    User4
    User5
    User6
    User7
    User8
    User9
    OrigPair
    OrigColors
    InitializeColor
    InitializePair
    SetColorPair
    SetForeground
    SetBackground
    ChangeCharPitch
    ChangeLinePitch
    ChangeResHorz
    ChangeResVert
    DefineChar
    EnterDoublewideMode
    EnterDraftQuality
    EnterItalicsMode
    EnterLeftwardMode
    EnterMicroMode
    EnterNearLetterQuality
    EnterNormalQuality
    EnterShadowMode
    EnterSubscriptMode
    EnterSuperscriptMode
    EnterUpwardMode
    ExitDoublewideMode
    ExitItalicsMode
    ExitLeftwardMode
    ExitMicroMode
    ExitShadowMode
    ExitSubscriptMode
    ExitSuperscriptMode
    ExitUpwardMode
    MicroColumnAddress
    MicroDown
    MicroLeft
    MicroRight
    MicroRowAddress
    MicroUp
    OrderOfPins
    ParmDownMicro
    ParmLeftMicro
    ParmRightMicro
    ParmUpMicro
    SelectCharSet
    SetBottomMargin
    SetBottomMarginParm
    SetLeftMarginParm
    SetRightMarginParm
    SetTopMargin
    SetTopMarginParm
    StartBitImage
    StartCharSetDef
    StopBitImage
    StopCharSetDef
    SubscriptCharacters
    SuperscriptCharacters
    TheseCauseCr
    ZeroMotion
    CharSetNames
    KeyMouse
    MouseInfo
    ReqMousePos
    GetMouse
    SetAForeground
    SetABackground
    PkeyPlab
    DeviceType
    CodeSetInit
    Set0DesSeq
    Set1DesSeq
    Set2DesSeq
    Set3DesSeq
    SetLrMargin
    SetTbMargin
    BitImageRepeat
    BitImageNewline
    BitImageCarriageReturn
    ColorNames
    DefineBitImageRegion
    EndBitImageRegion
    SetColorBand
    SetPageLength
    DisplayPcChar
    EnterPcCharsetMode
    ExitPcCharsetMode
    EnterScancodeMode
    ExitScancodeMode
    PcTermOptions
    ScancodeEscape
    AltScancodeEsc
    EnterHorizontalHlMode
    EnterLeftHlMode
    EnterLowHlMode
    EnterRightHlMode
    EnterTopHlMode
    EnterVerticalHlMode
    SetAAttributes
    SetPglenInch
    TermcapInit2
    TermcapReset
    LinefeedIfNotLf
    BackspaceIfNotBs
    OtherNonFunctionKeys
    ArrowKeyMap
    AcsUlcorner
    AcsLlcorner
    AcsUrcorner
    AcsLrcorner
    AcsLtee
    AcsRtee
    AcsBtee
    AcsTtee
    AcsHline
    AcsVline
    AcsPlus
    MemoryLock
    MemoryUnlock
    BoxChars1
  end
end

module Terminfo::KeyNames
  Booleans = [
    # Order is important

    {full: "auto_left_margin", short: "bw"},
    {full: "auto_right_margin", short: "am"},
    {full: "no_esc_ctlc", short: "xsb"},
    {full: "ceol_standout_glitch", short: "xhp"},
    {full: "eat_newline_glitch", short: "xenl"},
    {full: "erase_overstrike", short: "eo"},
    {full: "generic_type", short: "gn"},
    {full: "hard_copy", short: "hc"},
    {full: "has_meta_key", short: "km"},
    {full: "has_status_line", short: "hs"},
    {full: "insert_null_glitch", short: "in"},
    {full: "memory_above", short: "db"},
    {full: "memory_below", short: "da"},
    {full: "move_insert_mode", short: "mir"},
    {full: "move_standout_mode", short: "msgr"},
    {full: "over_strike", short: "os"},
    {full: "status_line_esc_ok", short: "eslok"},
    {full: "dest_tabs_magic_smso", short: "xt"},
    {full: "tilde_glitch", short: "hz"},
    {full: "transparent_underline", short: "ul"},
    {full: "xon_xoff", short: "xon"},
    {full: "needs_xon_xoff", short: "nxon"},
    {full: "prtr_silent", short: "mc5i"},
    {full: "hard_cursor", short: "chts"},
    {full: "non_rev_rmcup", short: "nrrmc"},
    {full: "no_pad_char", short: "npc"},
    {full: "non_dest_scroll_region", short: "ndscr"},
    {full: "can_change", short: "ccc"},
    {full: "back_color_erase", short: "bce"},
    {full: "hue_lightness_saturation", short: "hls"},
    {full: "col_addr_glitch", short: "xhpa"},
    {full: "cr_cancels_micro_mode", short: "crxm"},
    {full: "has_print_wheel", short: "daisy"},
    {full: "row_addr_glitch", short: "xvpa"},
    {full: "semi_auto_right_margin", short: "sam"},
    {full: "cpi_changes_res", short: "cpix"},
    {full: "lpi_changes_res", short: "lpix"},
    {full: "backspaces_with_bs", short: "OTbs"},
    {full: "crt_no_scrolling", short: "OTns"},
    {full: "no_correctly_working_cr", short: "OTnc"},
    {full: "gnu_has_meta_key", short: "OTMT"},
    {full: "linefeed_is_newline", short: "OTNL"},
    {full: "has_hardware_tabs", short: "OTpt"},
    {full: "return_does_clr_eol", short: "OTxr"},
  ]

  Numbers = [
    # Order is important

    {full: "columns", short: "cols"},
    {full: "init_tabs", short: "it"},
    {full: "lines", short: "lines"},
    {full: "lines_of_memory", short: "lm"},
    {full: "magic_cookie_glitch", short: "xmc"},
    {full: "padding_baud_rate", short: "pb"},
    {full: "virtual_terminal", short: "vt"},
    {full: "width_status_line", short: "wsl"},
    {full: "num_labels", short: "nlab"},
    {full: "label_height", short: "lh"},
    {full: "label_width", short: "lw"},
    {full: "max_attributes", short: "ma"},
    {full: "maximum_windows", short: "wnum"},
    {full: "max_colors", short: "colors"},
    {full: "max_pairs", short: "pairs"},
    {full: "no_color_video", short: "ncv"},
    {full: "buffer_capacity", short: "bufsz"},
    {full: "dot_vert_spacing", short: "spinv"},
    {full: "dot_horz_spacing", short: "spinh"},
    {full: "max_micro_address", short: "maddr"},
    {full: "max_micro_jump", short: "mjump"},
    {full: "micro_col_size", short: "mcs"},
    {full: "micro_line_size", short: "mls"},
    {full: "number_of_pins", short: "npins"},
    {full: "output_res_char", short: "orc"},
    {full: "output_res_line", short: "orl"},
    {full: "output_res_horz_inch", short: "orhi"},
    {full: "output_res_vert_inch", short: "orvi"},
    {full: "print_rate", short: "cps"},
    {full: "wide_char_size", short: "widcs"},
    {full: "buttons", short: "btns"},
    {full: "bit_image_entwining", short: "bitwin"},
    {full: "bit_image_type", short: "bitype"},
    {full: "magic_cookie_glitch_ul", short: "UTug"},
    {full: "carriage_return_delay", short: "OTdC"},
    {full: "new_line_delay", short: "OTdN"},
    {full: "backspace_delay", short: "OTdB"},
    {full: "horizontal_tab_delay", short: "OTdT"},
    {full: "number_of_function_keys", short: "OTkn"},
  ]

  Strings = [
    # Order is important

    {full: "back_tab", short: "cbt"},
    {full: "bell", short: "bel"},
    {full: "carriage_return", short: "cr"},
    {full: "change_scroll_region", short: "csr"},
    {full: "clear_all_tabs", short: "tbc"},
    {full: "clear_screen", short: "clear"},
    {full: "clr_eol", short: "el"},
    {full: "clr_eos", short: "ed"},
    {full: "column_address", short: "hpa"},
    {full: "command_character", short: "cmdch"},
    {full: "cursor_address", short: "cup"},
    {full: "cursor_down", short: "cud1"},
    {full: "cursor_home", short: "home"},
    {full: "cursor_invisible", short: "civis"},
    {full: "cursor_left", short: "cub1"},
    {full: "cursor_mem_address", short: "mrcup"},
    {full: "cursor_normal", short: "cnorm"},
    {full: "cursor_right", short: "cuf1"},
    {full: "cursor_to_ll", short: "ll"},
    {full: "cursor_up", short: "cuu1"},
    {full: "cursor_visible", short: "cvvis"},
    {full: "delete_character", short: "dch1"},
    {full: "delete_line", short: "dl1"},
    {full: "dis_status_line", short: "dsl"},
    {full: "down_half_line", short: "hd"},
    {full: "enter_alt_charset_mode", short: "smacs"},
    {full: "enter_blink_mode", short: "blink"},
    {full: "enter_bold_mode", short: "bold"},
    {full: "enter_ca_mode", short: "smcup"},
    {full: "enter_delete_mode", short: "smdc"},
    {full: "enter_dim_mode", short: "dim"},
    {full: "enter_insert_mode", short: "smir"},
    {full: "enter_secure_mode", short: "invis"},
    {full: "enter_protected_mode", short: "prot"},
    {full: "enter_reverse_mode", short: "rev"},
    {full: "enter_standout_mode", short: "smso"},
    {full: "enter_underline_mode", short: "smul"},
    {full: "erase_chars", short: "ech"},
    {full: "exit_alt_charset_mode", short: "rmacs"},
    {full: "exit_attribute_mode", short: "sgr0"},
    {full: "exit_ca_mode", short: "rmcup"},
    {full: "exit_delete_mode", short: "rmdc"},
    {full: "exit_insert_mode", short: "rmir"},
    {full: "exit_standout_mode", short: "rmso"},
    {full: "exit_underline_mode", short: "rmul"},
    {full: "flash_screen", short: "flash"},
    {full: "form_feed", short: "ff"},
    {full: "from_status_line", short: "fsl"},
    {full: "init_1string", short: "is1"},
    {full: "init_2string", short: "is2"},
    {full: "init_3string", short: "is3"},
    {full: "init_file", short: "if"},
    {full: "insert_character", short: "ich1"},
    {full: "insert_line", short: "il1"},
    {full: "insert_padding", short: "ip"},
    {full: "key_backspace", short: "kbs"},
    {full: "key_catab", short: "ktbc"},
    {full: "key_clear", short: "kclr"},
    {full: "key_ctab", short: "kctab"},
    {full: "key_dc", short: "kdch1"},
    {full: "key_dl", short: "kdl1"},
    {full: "key_down", short: "kcud1"},
    {full: "key_eic", short: "krmir"},
    {full: "key_eol", short: "kel"},
    {full: "key_eos", short: "ked"},
    {full: "key_f0", short: "kf0"},
    {full: "key_f1", short: "kf1"},
    {full: "key_f10", short: "kf10"},
    {full: "key_f2", short: "kf2"},
    {full: "key_f3", short: "kf3"},
    {full: "key_f4", short: "kf4"},
    {full: "key_f5", short: "kf5"},
    {full: "key_f6", short: "kf6"},
    {full: "key_f7", short: "kf7"},
    {full: "key_f8", short: "kf8"},
    {full: "key_f9", short: "kf9"},
    {full: "key_home", short: "khome"},
    {full: "key_ic", short: "kich1"},
    {full: "key_il", short: "kil1"},
    {full: "key_left", short: "kcub1"},
    {full: "key_ll", short: "kll"},
    {full: "key_npage", short: "knp"},
    {full: "key_ppage", short: "kpp"},
    {full: "key_right", short: "kcuf1"},
    {full: "key_sf", short: "kind"},
    {full: "key_sr", short: "kri"},
    {full: "key_stab", short: "khts"},
    {full: "key_up", short: "kcuu1"},
    {full: "keypad_local", short: "rmkx"},
    {full: "keypad_xmit", short: "smkx"},
    {full: "lab_f0", short: "lf0"},
    {full: "lab_f1", short: "lf1"},
    {full: "lab_f10", short: "lf10"},
    {full: "lab_f2", short: "lf2"},
    {full: "lab_f3", short: "lf3"},
    {full: "lab_f4", short: "lf4"},
    {full: "lab_f5", short: "lf5"},
    {full: "lab_f6", short: "lf6"},
    {full: "lab_f7", short: "lf7"},
    {full: "lab_f8", short: "lf8"},
    {full: "lab_f9", short: "lf9"},
    {full: "meta_off", short: "rmm"},
    {full: "meta_on", short: "smm"},
    {full: "newline", short: "nel"},
    {full: "pad_char", short: "pad"},
    {full: "parm_dch", short: "dch"},
    {full: "parm_delete_line", short: "dl"},
    {full: "parm_down_cursor", short: "cud"},
    {full: "parm_ich", short: "ich"},
    {full: "parm_index", short: "indn"},
    {full: "parm_insert_line", short: "il"},
    {full: "parm_left_cursor", short: "cub"},
    {full: "parm_right_cursor", short: "cuf"},
    {full: "parm_rindex", short: "rin"},
    {full: "parm_up_cursor", short: "cuu"},
    {full: "pkey_key", short: "pfkey"},
    {full: "pkey_local", short: "pfloc"},
    {full: "pkey_xmit", short: "pfx"},
    {full: "print_screen", short: "mc0"},
    {full: "prtr_off", short: "mc4"},
    {full: "prtr_on", short: "mc5"},
    {full: "repeat_char", short: "rep"},
    {full: "reset_1string", short: "rs1"},
    {full: "reset_2string", short: "rs2"},
    {full: "reset_3string", short: "rs3"},
    {full: "reset_file", short: "rf"},
    {full: "restore_cursor", short: "rc"},
    {full: "row_address", short: "vpa"},
    {full: "save_cursor", short: "sc"},
    {full: "scroll_forward", short: "ind"},
    {full: "scroll_reverse", short: "ri"},
    {full: "set_attributes", short: "sgr"},
    {full: "set_tab", short: "hts"},
    {full: "set_window", short: "wind"},
    {full: "tab", short: "ht"},
    {full: "to_status_line", short: "tsl"},
    {full: "underline_char", short: "uc"},
    {full: "up_half_line", short: "hu"},
    {full: "init_prog", short: "iprog"},
    {full: "key_a1", short: "ka1"},
    {full: "key_a3", short: "ka3"},
    {full: "key_b2", short: "kb2"},
    {full: "key_c1", short: "kc1"},
    {full: "key_c3", short: "kc3"},
    {full: "prtr_non", short: "mc5p"},
    {full: "char_padding", short: "rmp"},
    {full: "acs_chars", short: "acsc"},
    {full: "plab_norm", short: "pln"},
    {full: "key_btab", short: "kcbt"},
    {full: "enter_xon_mode", short: "smxon"},
    {full: "exit_xon_mode", short: "rmxon"},
    {full: "enter_am_mode", short: "smam"},
    {full: "exit_am_mode", short: "rmam"},
    {full: "xon_character", short: "xonc"},
    {full: "xoff_character", short: "xoffc"},
    {full: "ena_acs", short: "enacs"},
    {full: "label_on", short: "smln"},
    {full: "label_off", short: "rmln"},
    {full: "key_beg", short: "kbeg"},
    {full: "key_cancel", short: "kcan"},
    {full: "key_close", short: "kclo"},
    {full: "key_command", short: "kcmd"},
    {full: "key_copy", short: "kcpy"},
    {full: "key_create", short: "kcrt"},
    {full: "key_end", short: "kend"},
    {full: "key_enter", short: "kent"},
    {full: "key_exit", short: "kext"},
    {full: "key_find", short: "kfnd"},
    {full: "key_help", short: "khlp"},
    {full: "key_mark", short: "kmrk"},
    {full: "key_message", short: "kmsg"},
    {full: "key_move", short: "kmov"},
    {full: "key_next", short: "knxt"},
    {full: "key_open", short: "kopn"},
    {full: "key_options", short: "kopt"},
    {full: "key_previous", short: "kprv"},
    {full: "key_print", short: "kprt"},
    {full: "key_redo", short: "krdo"},
    {full: "key_reference", short: "kref"},
    {full: "key_refresh", short: "krfr"},
    {full: "key_replace", short: "krpl"},
    {full: "key_restart", short: "krst"},
    {full: "key_resume", short: "kres"},
    {full: "key_save", short: "ksav"},
    {full: "key_suspend", short: "kspd"},
    {full: "key_undo", short: "kund"},
    {full: "key_sbeg", short: "kBEG"},
    {full: "key_scancel", short: "kCAN"},
    {full: "key_scommand", short: "kCMD"},
    {full: "key_scopy", short: "kCPY"},
    {full: "key_screate", short: "kCRT"},
    {full: "key_sdc", short: "kDC"},
    {full: "key_sdl", short: "kDL"},
    {full: "key_select", short: "kslt"},
    {full: "key_send", short: "kEND"},
    {full: "key_seol", short: "kEOL"},
    {full: "key_sexit", short: "kEXT"},
    {full: "key_sfind", short: "kFND"},
    {full: "key_shelp", short: "kHLP"},
    {full: "key_shome", short: "kHOM"},
    {full: "key_sic", short: "kIC"},
    {full: "key_sleft", short: "kLFT"},
    {full: "key_smessage", short: "kMSG"},
    {full: "key_smove", short: "kMOV"},
    {full: "key_snext", short: "kNXT"},
    {full: "key_soptions", short: "kOPT"},
    {full: "key_sprevious", short: "kPRV"},
    {full: "key_sprint", short: "kPRT"},
    {full: "key_sredo", short: "kRDO"},
    {full: "key_sreplace", short: "kRPL"},
    {full: "key_sright", short: "kRIT"},
    {full: "key_srsume", short: "kRES"},
    {full: "key_ssave", short: "kSAV"},
    {full: "key_ssuspend", short: "kSPD"},
    {full: "key_sundo", short: "kUND"},
    {full: "req_for_input", short: "rfi"},
    {full: "key_f11", short: "kf11"},
    {full: "key_f12", short: "kf12"},
    {full: "key_f13", short: "kf13"},
    {full: "key_f14", short: "kf14"},
    {full: "key_f15", short: "kf15"},
    {full: "key_f16", short: "kf16"},
    {full: "key_f17", short: "kf17"},
    {full: "key_f18", short: "kf18"},
    {full: "key_f19", short: "kf19"},
    {full: "key_f20", short: "kf20"},
    {full: "key_f21", short: "kf21"},
    {full: "key_f22", short: "kf22"},
    {full: "key_f23", short: "kf23"},
    {full: "key_f24", short: "kf24"},
    {full: "key_f25", short: "kf25"},
    {full: "key_f26", short: "kf26"},
    {full: "key_f27", short: "kf27"},
    {full: "key_f28", short: "kf28"},
    {full: "key_f29", short: "kf29"},
    {full: "key_f30", short: "kf30"},
    {full: "key_f31", short: "kf31"},
    {full: "key_f32", short: "kf32"},
    {full: "key_f33", short: "kf33"},
    {full: "key_f34", short: "kf34"},
    {full: "key_f35", short: "kf35"},
    {full: "key_f36", short: "kf36"},
    {full: "key_f37", short: "kf37"},
    {full: "key_f38", short: "kf38"},
    {full: "key_f39", short: "kf39"},
    {full: "key_f40", short: "kf40"},
    {full: "key_f41", short: "kf41"},
    {full: "key_f42", short: "kf42"},
    {full: "key_f43", short: "kf43"},
    {full: "key_f44", short: "kf44"},
    {full: "key_f45", short: "kf45"},
    {full: "key_f46", short: "kf46"},
    {full: "key_f47", short: "kf47"},
    {full: "key_f48", short: "kf48"},
    {full: "key_f49", short: "kf49"},
    {full: "key_f50", short: "kf50"},
    {full: "key_f51", short: "kf51"},
    {full: "key_f52", short: "kf52"},
    {full: "key_f53", short: "kf53"},
    {full: "key_f54", short: "kf54"},
    {full: "key_f55", short: "kf55"},
    {full: "key_f56", short: "kf56"},
    {full: "key_f57", short: "kf57"},
    {full: "key_f58", short: "kf58"},
    {full: "key_f59", short: "kf59"},
    {full: "key_f60", short: "kf60"},
    {full: "key_f61", short: "kf61"},
    {full: "key_f62", short: "kf62"},
    {full: "key_f63", short: "kf63"},
    {full: "clr_bol", short: "el1"},
    {full: "clear_margins", short: "mgc"},
    {full: "set_left_margin", short: "smgl"},
    {full: "set_right_margin", short: "smgr"},
    {full: "label_format", short: "fln"},
    {full: "set_clock", short: "sclk"},
    {full: "display_clock", short: "dclk"},
    {full: "remove_clock", short: "rmclk"},
    {full: "create_window", short: "cwin"},
    {full: "goto_window", short: "wingo"},
    {full: "hangup", short: "hup"},
    {full: "dial_phone", short: "dial"},
    {full: "quick_dial", short: "qdial"},
    {full: "tone", short: "tone"},
    {full: "pulse", short: "pulse"},
    {full: "flash_hook", short: "hook"},
    {full: "fixed_pause", short: "pause"},
    {full: "wait_tone", short: "wait"},
    {full: "user0", short: "u0"},
    {full: "user1", short: "u1"},
    {full: "user2", short: "u2"},
    {full: "user3", short: "u3"},
    {full: "user4", short: "u4"},
    {full: "user5", short: "u5"},
    {full: "user6", short: "u6"},
    {full: "user7", short: "u7"},
    {full: "user8", short: "u8"},
    {full: "user9", short: "u9"},
    {full: "orig_pair", short: "op"},
    {full: "orig_colors", short: "oc"},
    {full: "initialize_color", short: "initc"},
    {full: "initialize_pair", short: "initp"},
    {full: "set_color_pair", short: "scp"},
    {full: "set_foreground", short: "setf"},
    {full: "set_background", short: "setb"},
    {full: "change_char_pitch", short: "cpi"},
    {full: "change_line_pitch", short: "lpi"},
    {full: "change_res_horz", short: "chr"},
    {full: "change_res_vert", short: "cvr"},
    {full: "define_char", short: "defc"},
    {full: "enter_doublewide_mode", short: "swidm"},
    {full: "enter_draft_quality", short: "sdrfq"},
    {full: "enter_italics_mode", short: "sitm"},
    {full: "enter_leftward_mode", short: "slm"},
    {full: "enter_micro_mode", short: "smicm"},
    {full: "enter_near_letter_quality", short: "snlq"},
    {full: "enter_normal_quality", short: "snrmq"},
    {full: "enter_shadow_mode", short: "sshm"},
    {full: "enter_subscript_mode", short: "ssubm"},
    {full: "enter_superscript_mode", short: "ssupm"},
    {full: "enter_upward_mode", short: "sum"},
    {full: "exit_doublewide_mode", short: "rwidm"},
    {full: "exit_italics_mode", short: "ritm"},
    {full: "exit_leftward_mode", short: "rlm"},
    {full: "exit_micro_mode", short: "rmicm"},
    {full: "exit_shadow_mode", short: "rshm"},
    {full: "exit_subscript_mode", short: "rsubm"},
    {full: "exit_superscript_mode", short: "rsupm"},
    {full: "exit_upward_mode", short: "rum"},
    {full: "micro_column_address", short: "mhpa"},
    {full: "micro_down", short: "mcud1"},
    {full: "micro_left", short: "mcub1"},
    {full: "micro_right", short: "mcuf1"},
    {full: "micro_row_address", short: "mvpa"},
    {full: "micro_up", short: "mcuu1"},
    {full: "order_of_pins", short: "porder"},
    {full: "parm_down_micro", short: "mcud"},
    {full: "parm_left_micro", short: "mcub"},
    {full: "parm_right_micro", short: "mcuf"},
    {full: "parm_up_micro", short: "mcuu"},
    {full: "select_char_set", short: "scs"},
    {full: "set_bottom_margin", short: "smgb"},
    {full: "set_bottom_margin_parm", short: "smgbp"},
    {full: "set_left_margin_parm", short: "smglp"},
    {full: "set_right_margin_parm", short: "smgrp"},
    {full: "set_top_margin", short: "smgt"},
    {full: "set_top_margin_parm", short: "smgtp"},
    {full: "start_bit_image", short: "sbim"},
    {full: "start_char_set_def", short: "scsd"},
    {full: "stop_bit_image", short: "rbim"},
    {full: "stop_char_set_def", short: "rcsd"},
    {full: "subscript_characters", short: "subcs"},
    {full: "superscript_characters", short: "supcs"},
    {full: "these_cause_cr", short: "docr"},
    {full: "zero_motion", short: "zerom"},
    {full: "char_set_names", short: "csnm"},
    {full: "key_mouse", short: "kmous"},
    {full: "mouse_info", short: "minfo"},
    {full: "req_mouse_pos", short: "reqmp"},
    {full: "get_mouse", short: "getm"},
    {full: "set_a_foreground", short: "setaf"},
    {full: "set_a_background", short: "setab"},
    {full: "pkey_plab", short: "pfxl"},
    {full: "device_type", short: "devt"},
    {full: "code_set_init", short: "csin"},
    {full: "set0_des_seq", short: "s0ds"},
    {full: "set1_des_seq", short: "s1ds"},
    {full: "set2_des_seq", short: "s2ds"},
    {full: "set3_des_seq", short: "s3ds"},
    {full: "set_lr_margin", short: "smglr"},
    {full: "set_tb_margin", short: "smgtb"},
    {full: "bit_image_repeat", short: "birep"},
    {full: "bit_image_newline", short: "binel"},
    {full: "bit_image_carriage_return", short: "bicr"},
    {full: "color_names", short: "colornm"},
    {full: "define_bit_image_region", short: "defbi"},
    {full: "end_bit_image_region", short: "endbi"},
    {full: "set_color_band", short: "setcolor"},
    {full: "set_page_length", short: "slines"},
    {full: "display_pc_char", short: "dispc"},
    {full: "enter_pc_charset_mode", short: "smpch"},
    {full: "exit_pc_charset_mode", short: "rmpch"},
    {full: "enter_scancode_mode", short: "smsc"},
    {full: "exit_scancode_mode", short: "rmsc"},
    {full: "pc_term_options", short: "pctrm"},
    {full: "scancode_escape", short: "scesc"},
    {full: "alt_scancode_esc", short: "scesa"},
    {full: "enter_horizontal_hl_mode", short: "ehhlm"},
    {full: "enter_left_hl_mode", short: "elhlm"},
    {full: "enter_low_hl_mode", short: "elohlm"},
    {full: "enter_right_hl_mode", short: "erhlm"},
    {full: "enter_top_hl_mode", short: "ethlm"},
    {full: "enter_vertical_hl_mode", short: "evhlm"},
    {full: "set_a_attributes", short: "sgr1"},
    {full: "set_pglen_inch", short: "slength"},
    {full: "termcap_init2", short: "OTi2"},
    {full: "termcap_reset", short: "OTrs"},
    {full: "linefeed_if_not_lf", short: "OTnl"},
    {full: "backspace_if_not_bs", short: "OTbs"},
    {full: "other_non_function_keys", short: "OTko"},
    {full: "arrow_key_map", short: "OTma"},
    {full: "acs_ulcorner", short: "OTG2"},
    {full: "acs_llcorner", short: "OTG3"},
    {full: "acs_urcorner", short: "OTG1"},
    {full: "acs_lrcorner", short: "OTG4"},
    {full: "acs_ltee", short: "OTGR"},
    {full: "acs_rtee", short: "OTGL"},
    {full: "acs_btee", short: "OTGU"},
    {full: "acs_ttee", short: "OTGD"},
    {full: "acs_hline", short: "OTGH"},
    {full: "acs_vline", short: "OTGV"},
    {full: "acs_plus", short: "OTGC"},
    {full: "memory_lock", short: "meml"},
    {full: "memory_unlock", short: "memu"},
    {full: "box_chars_1", short: "box1"},
  ]
end
