--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
  local theme = lush(function(injected_functions)
  local sym = injected_functions.sym

  local primary = hsl("#002e46")
  local LTdarkblue = hsl("#112D45")
  local TCBlack = hsl("#2F2F2F")
  local font = hsl("#474e52")
  local secondary = hsl("#7c8a98")
  local grayLight = hsl("#c7cfda")
  local TCWhite = hsl("#FDFDFD")
  local TCwhite = hsl("#F8F8F2")
  local LTWhite = hsl("#F5F5F5")
  local SCLightBlue = hsl("#ABD9E5")
  local SentrySecondary = hsl("#00B1E2")
  local Sentry = hsl("#00689E")
  local link = hsl("#3a9eb5")
  local logoPrimary = hsl("#4B979E")
  local TCCyan = hsl("#6CB2EB")
  local dwarf = hsl("#302984")
  local deepPurple = hsl("#3E2F65")
  local TCIndigo = hsl("#6574CD")
  local TCPurple = hsl("#7C3996")
  local cherry = hsl("#6a0032")
  local LTPurple = hsl("#601031")
  local danger = hsl("#d00a54")
  local success = hsl("#00a04a")
  local TCLime = hsl("#C6CF21")
  local SCLink = hsl("#DC4633")
  local logoSecondary = hsl("#E4863B")
  local sparks = hsl("#e9a837")
  local LTYellow = hsl("#D4AC4C")
  local cta = hsl("#f15b43")
  local LTCta = hsl("#DF6346")
  local honey = hsl("#f57e25")
  local SentryCta = hsl("#E07907")
  local SCYellow = hsl("#F1C500")



  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition ` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to agroup, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    
     ColorColumn    {bg= secondary, fg = TCBlack }, -- Columns set with 'colorcolumn'
    Conceal        {fg= grayLight }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor         {bg=sparks }, -- Character under the cursor
    CurSearch      {bg=honey}, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    lCursor        {fg=font }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
     CursorIM       {bg=font}, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn   {bg=LTdarkblue }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine     { bg = TCBlack}, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory      {fg=sparks }, -- Directory names (and other special names in listings)
     DiffAdd        {fg=success }, -- Diff mode: Added line |diff.txt|
     DiffChange     {fg=font }, -- Diff mode: Changed line |diff.txt|
     DiffDelete     { fg=cherry }, -- Diff mode: Deleted line |diff.txt|
    DiffText       { fg=font, bg=LTdarkblue.lighten(20) }, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer    {fg=LTdarkblue.darken(30) }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor     {bg=font, fg=TCWhite }, -- Cursor in a focused terminal
    TermCursorNC   {bg=secondary, fg=LTWhite }, -- Cursor in an unfocused terminal
    ErrorMsg       {fg=danger }, --Error messages on the command line
     VertSplit      {bg=success}, -- Column separating vertically split windows
    Folded         {fg=secondary, bg=LTdarkblue}, -- Line used for closed folds
     FoldColumn     { fg=grayLight.darken(20), bg=primary}, -- 'foldcolumn'
     SignColumn     {fg=secondary, bg=primary}, -- Column where |signs| are displayed
     IncSearch      { fg=TCWhite, bg=honey.lighten(20) }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
     Substitute     {fg=TCWhite, bg=cta }, -- |:substitute| replacement text highlighting
     LineNr         {fg=TCIndigo }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
     LineNrAbove    {fg=TCIndigo.lighten(10) }, -- Line number for when the 'relativenumber' option is set, above the cursor line
     LineNrBelow    {fg=TCIndigo.lighten(10) }, -- Line number for when the 'relativenumber' option is set, below the cursor line
     CursorLineNr   {fg=deepPurple, gui="bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
     CursorLineFold {bg=LTdarkblue.lighten(10),fg=TCWhite }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    CursorLineSign { bg=LTdarkblue.lighten(10),fg=secondary }, -- Like SignColumn when 'cursorline' is set for the cursor line
     MatchParen     { bg=LTYellow }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
     ModeMsg        {fg=SCYellow }, -- 'showmode' message (e.g., "-- INSERT -- ")
     MsgArea        {fg=logoSecondary, bg=TCBlack }, -- Area for messages and cmdline
     MsgSeparator   {fg=SCLink, bg=TCBlack }, -- Separator for scrolled messages, `msgsep` flag of 'display'
     MoreMsg        {fg=success }, -- |more-prompt|
    NonText        {fg=TCIndigo.darken(30) }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
     Normal         { bg = grayLight, fg = font }, -- Normal text
     NormalFloat    { fg=grayLight, bg=LTdarkblue}, -- Normal text in floating windows.
     FloatBorder    {fg=grayLight.darken(30), bg=primary  }, -- Border of floating windows.
     FloatTitle     { fg=grayLight.lighten(20), bg=LTdarkblue}, -- Title of floating windows.
     NormalNC       { fg=font, bg=LTdarkblue.lighten(10)}, -- normal text in non-current windows
     Pmenu          { fg=font, bg=LTdarkblue }, -- Popup menu: Normal item.
     PmenuSel       {fg=TCWhite, bg=Sentry }, -- Popup menu: Selected item.
     PmenuKind      {fg=font, bg=LTdarkblue.darken(10) }, -- Popup menu: Normal item "kind"
     PmenuKindSel   {fg=TCWhite, bg=Sentry.darken(10) }, -- Popup menu: Selected item "kind"
     PmenuExtra     { fg=grayLight, bg=LTdarkblue.lighten(10)}, -- Popup menu: Normal item "extra text"
     PmenuExtraSel  { fg=grayLight, bg=link.lighten(10)}, -- Popup menu: Selected item "extra text"
     PmenuSbar      { bg=LTdarkblue }, -- Popup menu: Scrollbar.
     PmenuThumb     {bg=Sentry }, -- Popup menu: Thumb of the scrollbar.
     Question       { fg=success}, -- |hit-enter| prompt and yes/no questions
     QuickFixLine   { bg=LTdarkblue.lighten(10), fg=success}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
     Search         { fg = LTWhite, bg = link.darken(10) }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey     { fg=Sentry, bg=LTdarkblue }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad       {fg=danger, gui="underline" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap       { fg=sparks, gui="underline"}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal     { fg=success, gui="underline"}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare      {fg=cherry, gui="underline" }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
     StatusLine     { bg=grayLight.darken(30), fg=font}, -- Status line of current window
    StatusLineNC   { bg=grayLight.darken(20), fg=secondary }, -- Status liines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
     TabLine        { fg=TCCyan, bg=primary }, -- Tab pages line, not active tab page label
     TabLineFill    {bg=primary }, -- Tab pages line, where there are no labels
     TabLineSel     { fg=grayLight, bg=success }, -- Tab pages line, active tab page label
     Title          { fg=SCYellow, gui="bold"}, -- Titles for output from ":set all", ":autocmd" etc.
    Visual         {bg=link.darken(40),fg=LTWhite }, -- Visual mode selection
     VisualNOS      {bg=link.darken(40),fg=LTWhite }, -- Visual mode selection when vim is "Not Owning the Selection".
     WarningMsg     { fg=sparks}, -- Warning messages
    Whitespace     { fg=secondary}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
     Winseparator   {fg=success }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
     WildMenu       { fg=secondary}, -- Current match in 'wildmenu' completion
     WinBar         {fg=TCWhite, bg=primary.darken(10) }, -- Window bar of current window
     WinBarNC       {fg=grayLight, bg=LTdarkblue }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

     Comment        { fg=font.darken(10) }, -- Any comment

    Constant       {fg=sparks }, -- (*) Any constant
    String         {fg=logoPrimary }, --   A string constant: "this is a string"
     Character      {fg=cherry }, --   A character constant: 'c', '\n'
    Number         {fg=TCIndigo }, --   A number constant: 234, 0xff
    Boolean        {fg=deepPurple },  --   A boolean constant: TRUE, false
     Float          {fg=sparks }, --   A floating point constant: 2.3e10
     Identifier     {fg=link }, -- (*) Any variable name
    Function       {fg=cta}, --   Function name (also: methods for classes)
    --

     Statement      {fg=link }, -- (*) Any statement
     Conditional    {fg=honey }, --   if, then, else, endif, switch, etc.
     Repeat         {fg=honey }, --   for, do, while, etc.
    Label          {fg=link.lighten(10) }, --   case, default, etc.
     Operator       {fg=link.lighten(20) }, --   "sizeof", "+", "*", etc.
     Keyword        {fg=link.darken(10) }, --   any other keyword
    Exception      {fg=danger }, --   try, catch, throw

     PreProc        {fg=secondary }, -- (*) Generic Preprocessor
     Include        {fg=secondary }, --   Preprocessor #include
     Define         {fg=secondary }, --   Preprocessor #define
     Macro          {fg=secondary }, --   Same as Define
     PreCondit      { fg=secondary }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = sparks }, -- int, long, char, etc.
    StorageClass   { fg = sparks }, -- static, register, volatile, etc.
    Structure      { fg = sparks }, -- struct, union, enum, etc.
    Typedef        { fg = sparks }, -- A typedef.

    Special        { fg = TCWhite }, -- Any special symbol.
    SpecialChar    { fg = cherry }, -- Special character in a constant.
    Tag            { fg = link.lighten(30) }, -- You can use CTRL-] on this.
    Delimiter      { fg = grayLight }, -- Character that needs attention.
    SpecialComment { fg = grayLight }, -- Special things inside a comment.
    Debug          { fg = cherry.darken(20) }, -- Debugging statements.

    Underlined     { gui = "underline", fg = link }, -- Text that stands out, HTML links.
    Ignore         { fg = LTdarkblue }, -- Hidden text.
    Error          { fg = danger }, -- Any erroneous construct.
    Todo           { fg = honey, gui = "bold" }, -- Anything that needs extra attention; TODO, FIXME, etc.

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    LspReferenceText            { bg=SCYellow.lighten(40)} , -- Used for highlighting "text" references
     LspReferenceRead            {bg=SCYellow.lighten(40) } , -- Used for highlighting "read" references
     LspReferenceWrite           {bg=SCYellow.lighten(40) } , -- Used for highlighting "write" references
    LspCodeLens                 {fg=secondary} , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
     LspCodeLensSeparator        {fg=grayLight.darken(10) } , -- Used to color the seperator between two or more code lens.
     LspSignatureActiveParameter { fg=TCWhite,bg=honey} , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
     DiagnosticError            { fg=danger} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
     DiagnosticWarn             { fg=honey} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
     DiagnosticInfo             { fg=link} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
     DiagnosticHint             { fg=SentrySecondary} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
     DiagnosticOk               { fg=success} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
     DiagnosticVirtualTextError {fg=danger, bg=LTdarkblue.lighten(20) } , -- Used for "Error" diagnostic virtual text.
     DiagnosticVirtualTextWarn  { fg=honey, bg=LTdarkblue.lighten(20)} , -- Used for "Warn" diagnostic virtual text.
     DiagnosticVirtualTextInfo  { fg=link, bg=LTdarkblue.lighten(20) } , -- Used for "Info" diagnostic virtual text.
     DiagnosticVirtualTextHint  { fg=SentrySecondary, bg=LTdarkblue.lighten(20) } , -- Used for "Hint" diagnostic virtual text.
     DiagnosticVirtualTextOk    { fg=success, bg=LTdarkblue.lighten(20) } , -- Used for "Ok" diagnostic virtual text.
     DiagnosticUnderlineError   {fg=danger, gui="underline" } , -- Used to underline "Error" diagnostics.
     DiagnosticUnderlineWarn    {  fg=honey, gui="underline"} , -- Used to underline "Warn" diagnostics.
     DiagnosticUnderlineInfo    { fg=link, gui="underline" } , -- Used to underline "Info" diagnostics.
     DiagnosticUnderlineHint    {  fg=SentrySecondary, gui="underline"} , -- Used to underline "Hint" diagnostics.
     DiagnosticUnderlineOk      {  fg=success, gui="underline"} , -- Used to underline "Ok" diagnostics.
     DiagnosticFloatingError    {fg=danger,bg=LTdarkblue} , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
     DiagnosticFloatingWarn     {  fg=honey, bg=LTdarkblue} , -- Used to color "Warn" diagnostic messages in diagnostics float.
     DiagnosticFloatingInfo     { fg=link, bg=LTdarkblue} , -- Used to color "Info" diagnostic messages in diagnostics float.
     DiagnosticFloatingHint     { fg=SentrySecondary, bg=LTdarkblue} , -- Used to color "Hint" diagnostic messages in diagnostics float.
     DiagnosticFloatingOk       { fg=success, bg=LTdarkblue} , -- Used to color "Ok" diagnostic messages in diagnostics float.
     DiagnosticSignError        { fg=danger, bg=LTdarkblue.darken(10) } , -- Used for "Error" signs in sign column.
     DiagnosticSignWarn         { fg=honey, bg=LTdarkblue.darken(10)} , -- Used for "Warn" signs in sign column.
     DiagnosticSignInfo         { fg=link, bg=LTdarkblue.darken(10) } , -- Used for "Info" signs in sign column.
     DiagnosticSignHint         { fg=SentrySecondary, bg=LTdarkblue.darken(10) } , -- Used for "Hint" signs in sign column.
     DiagnosticSignOk           { fg=success, bg=LTdarkblue.darken(10) } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

  sym"@text.literal"      { fg = grayLight }, -- Comment-like literal text.
  sym"@text.reference"    { fg = secondary }, -- References like URLs or footnotes.
  sym"@text.title"        { fg = sparks, gui = "bold" }, -- Titles or headers.
  sym"@text.uri"          { fg = link, gui = "underline" }, -- URIs like links.
  sym"@text.underline"    { gui = "underline", fg = link }, -- Underlined text.
  sym"@text.todo"         { fg = honey, gui = "bold" }, -- TODO comments or tasks.

-- Comments and punctuation
  sym"@comment"           { fg = grayLight, gui = "italic" }, -- Comment blocks.
  sym"@punctuation"       { fg = secondary }, -- Punctuation like commas, semicolons.

-- Constants
  sym"@constant"          { fg = sparks }, -- Constants like numbers and booleans.
  sym"@constant.builtin"  { fg = link.lighten(10) }, -- Built-in constants like "true" or "nil".
  sym"@constant.macro"    { fg = secondary }, -- Macros that act as constants.

-- Macros and defines
  sym"@define"            { fg = secondary }, -- Preprocessor defines.
  sym"@macro"             { fg = secondary }, -- Macros.

-- Strings and characters
  sym"@string"            { fg = cherry }, -- Strings.
  sym"@string.escape"     { fg = SentrySecondary }, -- Escape sequences within strings.
  sym"@string.special"    { fg = cherry.darken(10) }, -- Special string constructs.
  sym"@character"         { fg = cherry }, -- Character literals.
  sym"@character.special" { fg = SentrySecondary }, -- Special characters.

-- Numbers and booleans
  sym"@number"            { fg = sparks }, -- Numbers.
  sym"@boolean"           { fg = sparks }, -- Booleans like "true" or "false".
  sym"@float"             { fg = sparks }, -- Floating-point numbers.

-- Functions, methods, and constructors
  sym"@function"          { fg = success }, -- Function names.
  sym"@function.builtin"  { fg = link.lighten(10) }, -- Built-in functions.
  sym"@function.macro"    { fg = secondary }, -- Macros that act as functions.
  sym"@parameter"         { fg = link.lighten(15) }, -- Parameters in functions.
  sym"@method"            { fg = success }, -- Method names.
  sym"@field"             { fg = TCWhite }, -- Fields in structures or classes.
  sym"@property"          { fg = link }, -- Property names in objects or structures.
  sym"@constructor"       { fg = success.darken(10) }, -- Constructor functions.

-- Control flow
  sym"@conditional"       { fg = honey }, -- if, else, etc.
sym"@repeat"            { fg = honey }, -- for, while, etc.
sym"@label"             { fg = link.lighten(10) }, -- Labels like "case" or "default".
sym"@operator"          { fg = link.lighten(20) }, -- Operators like "+", "*", etc.
sym"@keyword"           { fg = link.darken(10) }, -- Keywords like "return" or "yield".
sym"@exception"         { fg = danger }, -- Exception handling keywords.

-- Variables, types, and storage
sym"@variable"          { fg = link }, -- Variables.
sym"@type"              { fg = sparks }, -- Type names.
sym"@type.definition"   { fg = sparks.darken(10) }, -- Type definitions.
sym"@storageclass"      { fg = sparks }, -- Storage class specifiers like "static" or "volatile".
sym"@structure"         { fg = sparks }, -- Structures like structs or unions.

-- Namespaces and includes
sym"@namespace"         { fg = link }, -- Namespaces or modules.
sym"@include"           { fg = secondary }, -- Includes like #include or use.
sym"@preproc"           { fg = secondary }, -- Preprocessor directives like #define.
sym"@debug"             { fg = cherry.darken(20) }, -- Debugging statements.

-- Tags
sym"@tag"               { fg = link.lighten(20) }, -- Tags like HTML or XML tags.
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
