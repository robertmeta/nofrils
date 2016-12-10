package main

import (
	"html/template"
	"log"
	"os"
)

func main() {
	tmpl := template.New("schemes.tmpl")
	template.Must(tmpl.ParseFiles("schemes.tmpl"))
	colors := Colors()

	cursorLineRow := vimColorRow{FG: colors["NONE"], BG: colors["White"], Attr: "NONE"}
	cursorRow := vimColorRow{FG: colors["Aqua"], BG: colors["FG"], Attr: "NONE"}
	diffAddRow := vimColorRow{FG: colors["Green1"], BG: colors["NONE"], Attr: "NONE"}
	diffChangeRow := vimColorRow{FG: colors["Orange4"], BG: colors["NONE"], Attr: "NONE"}
	diffDeleteRow := vimColorRow{FG: colors["Maroon"], BG: colors["NONE"], Attr: "NONE"}
	diffTextRow := vimcolorRow{FG: colors["Navy"], BG: colors["NONE"], Attr: "NONE"}
	directoryRow := vimColorRow{FG: colors["DeepPink7"], BG: colors["NONE"], Attr: "NONE"}
	errorRow := vimColorRow{FG: colors["Red1"], BG: colors["White"], Attr: "NONE"}
	fadedRow := vimColorRow{FG: colors["SandyBrown"], BG: colors["NONE"], Attr: "NONE"}
	foldedRow := vimColorRow{FG: colors["Grey35"], BG: colors["NONE"], Attr: "NONE"}
	matchParenRow := vimColorRow{FG: colors["White"], BG: colors["Navy"], Attr: "NONE"}
	noneRow := vimColorRow{FG: colors["NONE"], BG: colors["NONE"], Attr: "NONE"}
	normalRow := vimColorRow{FG: colors["Black"], BG: colors["Cornsilk"], Attr: "NONE"}
	searchRow := vimColorRow{FG: colors["Green1"], BG: colors["White"], Attr: "NONE"}
	spellRow := vimColorRow{FG: colors["Purple2"], BG: colors["NONE"], Attr: "underline"}
	statusLineRow := vimColorRow{FG: colors["Black"], BG: colors["Plum2"], Attr: "NONE"}
	vertSplitRow := vimColorRow{FG: colors["Black"], BG: colors["LightCyan2"], Attr: "NONE"}
	visualSelectRow := vimColorRow{FG: colors["FG"], BG: colors["LightGoldenrod4"], Attr: "NONE"}
	heavyCommentRow := vimColorRow{FG: colors["DeepPink8"], BG: colors["NONE"], Attr: "NONE"}
	heavyStringRow := vimColorRow{FG: colors["Grey

	pmenuRow := reverse(normalRow)
	visualNOSRow := reverse(directoryRow)

	nft := nofrilsTheme{
		Name: "No Frils Acme",
		Slug: "nofrils-acme",

		Rows: []vimColorRow{
			withName("Normal", normalRow),
			withName("ColorColumn", cursorLineRow),
			withName("MatchParen", matchParenRow),
			withName("PmenuSel", statusLineRow),
			withName("StatusLine", statusLineRow),
			withName("Visual", visualSelectRow),
			withName("TabLineFill", vertsplitRow),
			withName("VisualNOS", visualNOSRow),
			withName("Todo", diffAddRow),

			withName("Comment", fadedRow),
			withName("FoldColumn", fadedRow),
			withName("LineNr", fadedRow),
			withName("NonText", fadedRow),

			withName("Folded", foldedRow),
			withName("SignColumn", foldedRow),
			withName("SpecialKey", foldedRow),

			withName("StatusLineNC", vertsplitRow),
			withName("VertSplit", vertsplitRow),

			withName("CursorColumn", cursorLineRow),
			withName("CursorLineNr", cursorLineRow),
			withName("CursorLine", cursorLineRow),

			withName("CursorIM", cursorRow),
			withName("Cursor", cursorRow),

			withName("Directory", directoryRow),
			withName("ModeMsg", directoryRow),
			withName("MoreMsg", directoryRow),
			withName("Question", directoryRow),

			withName("Error", errorRow),
			withName("ErrorMsg", errorRow),
			withName("WarningMsg", errorRow),

			withName("IncSearch", searchRow),
			withName("Search", searchRow),

			withName("PmenuSbar", pmenuRow),
			withName("Pmenu", pmenuRow),
			withName("PmenuThumb", pmenuRow),
			withName("TabLineSel", pmenuRow),
			withName("WildMenu", pmenuRow),

			withName("DiffAdd", diffAddRow),
			withName("DiffChange", diffChangeRow),
			withName("DiffDelete", diffDeleteRow),
			withName("DiffText", diffTextRow),

			withName("SpellBad", spellRow),
			withName("SpellCap", spellRow),
			withName("SpellLocal", spellRow),
			withName("SpellRare", spellRow),

			withName("SneakLabelMask", vertSplitRow),
			withName("SneakTarget", vertSplitRow),

			withName("SneakLabelTarget", statusLineRow),
			withName("SneakScope", statusLineRow),

			withName("Menu", noneRow),
			withName("Scrollbar", noneRow),
			withName("TabLine", noneRow),
			withName("Tooltip", noneRow),
			withName("Boolean", noneRow),
			withName("Character", noneRow),
			withName("Conceal", noneRow),
			withName("Conditional", noneRow),
			withName("Constant", noneRow),
			withName("Debug", noneRow),
			withName("Define", noneRow),
			withName("Delimiter", noneRow),
			withName("Directive", noneRow),
			withName("Exception", noneRow),
			withName("Float", noneRow),
			withName("Format", noneRow),
			withName("Function", noneRow),
			withName("Identifier", noneRow),
			withName("Ignore", noneRow),
			withName("Include", noneRow),
			withName("Keyword", noneRow),
			withName("Label", noneRow),
			withName("Macro", noneRow),
			withName("Number", noneRow),
			withName("Operator", noneRow),
			withName("PreCondit", noneRow),
			withName("PreProc", noneRow),
			withName("Repeat", noneRow),
			withName("SpecialChar", noneRow),
			withName("SpecialComment", noneRow),
			withName("Special", noneRow),
			withName("Statement", noneRow),
			withName("StorageClass", noneRow),
			withName("String", noneRow),
			withName("Structure", noneRow),
			withName("Tag", noneRow),
			withName("Title", noneRow),
			withName("Typedef", noneRow),
			withName("Type", noneRow),
			withName("Underlined", noneRow),
		},
	}
	log.Println(nft)
	err := tmpl.Execute(os.Stdout, nft)
	if err != nil {
		log.Fatal(err)
	}
}

func withName(name string, vcr vimColorRow) vimColorRow {
	vcr.Name = name
	return vcr
}

func reverse(vcr vimColorRow) vimColorRow {
	bg := vcr.BG
	fg := vcr.FG
	vcr.BG = fg
	vcr.FG = bg
	return vcr
}

type color struct {
	TermCode string
	GuiCode  string
}

type vimColorRow struct {
	Name string
	BG   color
	FG   color
	Attr string // only used for underline currently
}

type nofrilsTheme struct {
	Name string
	Slug string
	Rows []vimColorRow
}

func Colors() map[string]color {
	colors := make(map[string]color)
	colors["Aqua"] = color{"14", "#00ffff"}
	colors["Aquamarine1"] = color{"122", "#87ffd7"}
	colors["Aquamarine2"] = color{"86", "#5fffd7"}
	colors["Aquamarine3"] = color{"79", "#5fd7af"}
	colors["Black"] = color{"0", "#000000"}
	colors["Blue1"] = color{"12", "#0000ff"}
	colors["Blue2"] = color{"21", "#0000ff"}
	colors["Blue3"] = color{"19", "#0000af"}
	colors["Blue4"] = color{"20", "#0000d7"}
	colors["BlueViolet"] = color{"57", "#5f00ff"}
	colors["CadetBlue1"] = color{"72", "#5faf87"}
	colors["CadetBlue2"] = color{"73", "#5fafaf"}
	colors["Chartreuse1"] = color{"118", "#87ff00"}
	colors["Chartreuse2"] = color{"112", "#87d700"}
	colors["Chartreuse3"] = color{"82", "#5fff00"}
	colors["Chartreuse4"] = color{"70", "#5faf00"}
	colors["Chartreuse5"] = color{"76", "#5fd700"}
	colors["Chartreuse6"] = color{"64", "#5f8700"}
	colors["CornflowerBlue"] = color{"69", "#5f87ff"}
	colors["Cornsilk"] = color{"230", "#ffffd7"}
	colors["Cyan1"] = color{"51", "#00ffff"}
	colors["Cyan2"] = color{"50", "#00ffd7"}
	colors["Cyan3"] = color{"43", "#00d7af"}
	colors["DarkBlue"] = color{"18", "#000087"}
	colors["DarkCyan"] = color{"36", "#00af87"}
	colors["DarkGoldenrod"] = color{"136", "#af8700"}
	colors["DarkGreen"] = color{"22", "#005f00"}
	colors["DarkKhaki"] = color{"143", "#afaf5f"}
	colors["DarkMagenta1"] = color{"90", "#870087"}
	colors["DarkMagenta2"] = color{"91", "#8700af"}
	colors["DarkOliveGreen1"] = color{"191", "#d7ff5f"}
	colors["DarkOliveGreen2"] = color{"192", "#d7ff87"}
	colors["DarkOliveGreen3"] = color{"155", "#afff5f"}
	colors["DarkOliveGreen4"] = color{"107", "#87af5f"}
	colors["DarkOliveGreen5"] = color{"113", "#87d75f"}
	colors["DarkOliveGreen6"] = color{"149", "#afd75f"}
	colors["DarkOrange1"] = color{"208", "#ff8700"}
	colors["DarkOrange2"] = color{"130", "#af5f00"}
	colors["DarkOrange3"] = color{"166", "#d75f00"}
	colors["DarkRed1"] = color{"52", "#5f0000"}
	colors["DarkRed2"] = color{"88", "#870000"}
	colors["DarkSeaGreen1"] = color{"108", "#87af87"}
	colors["DarkSeaGreen2"] = color{"158", "#afffd7"}
	colors["DarkSeaGreen3"] = color{"193", "#d7ffaf"}
	colors["DarkSeaGreen4"] = color{"151", "#afd7af"}
	colors["DarkSeaGreen5"] = color{"157", "#afffaf"}
	colors["DarkSeaGreen6"] = color{"115", "#87d7af"}
	colors["DarkSeaGreen7"] = color{"150", "#afd787"}
	colors["DarkSeaGreen8"] = color{"65", "#5f875f"}
	colors["DarkSeaGreen9"] = color{"71", "#5faf5f"}
	colors["DarkSlateGray1"] = color{"123", "#87ffff"}
	colors["DarkSlateGray2"] = color{"87", "#5fffff"}
	colors["DarkSlateGray3"] = color{"116", "#87d7d7"}
	colors["DarkTurquoise"] = color{"44", "#00d7d7"}
	colors["DarkViolet1"] = color{"128", "#af00d7"}
	colors["DarkViolet2"] = color{"92", "#8700d7"}
	colors["DeepPink1"] = color{"198", "#ff0087"}
	colors["DeepPink2"] = color{"199", "#ff00af"}
	colors["DeepPink3"] = color{"197", "#ff005f"}
	colors["DeepPink4"] = color{"161", "#d7005f"}
	colors["DeepPink5"] = color{"162", "#d70087"}
	colors["DeepPink6"] = color{"125", "#af005f"}
	colors["DeepPink7"] = color{"53", "#5f005f"}
	colors["DeepPink8"] = color{"89", "#87005f"}
	colors["DeepSkyBlue1"] = color{"39", "#00afff"}
	colors["DeepSkyBlue2"] = color{"38", "#00afd7"}
	colors["DeepSkyBlue3"] = color{"31", "#0087af"}
	colors["DeepSkyBlue4"] = color{"32", "#0087d7"}
	colors["DeepSkyBlue5"] = color{"23", "#005f5f"}
	colors["DeepSkyBlue6"] = color{"24", "#005f87"}
	colors["DeepSkyBlue7"] = color{"25", "#005faf"}
	colors["DodgerBlue1"] = color{"33", "#0087ff"}
	colors["DodgerBlue2"] = color{"27", "#005fff"}
	colors["DodgerBlue3"] = color{"26", "#005fd7"}
	colors["Fuchsia"] = color{"13", "#ff00ff"}
	colors["Gold1"] = color{"220", "#ffd700"}
	colors["Gold2"] = color{"142", "#afaf00"}
	colors["Gold3"] = color{"178", "#d7af00"}
	colors["Green1"] = color{"2", "#008000"}
	colors["Green2"] = color{"46", "#00ff00"}
	colors["Green3"] = color{"34", "#00af00"}
	colors["Green4"] = color{"40", "#00d700"}
	colors["Green5"] = color{"28", "#008700"}
	colors["GreenYellow"] = color{"154", "#afff00"}
	colors["Grey1"] = color{"8", "#808080"}
	colors["Grey0"] = color{"16", "#000000"}
	colors["Grey100"] = color{"231", "#ffffff"}
	colors["Grey11"] = color{"234", "#1c1c1c"}
	colors["Grey15"] = color{"235", "#262626"}
	colors["Grey19"] = color{"236", "#303030"}
	colors["Grey23"] = color{"237", "#3a3a3a"}
	colors["Grey27"] = color{"238", "#444444"}
	colors["Grey3"] = color{"232", "#080808"}
	colors["Grey30"] = color{"239", "#4e4e4e"}
	colors["Grey35"] = color{"240", "#585858"}
	colors["Grey37"] = color{"59", "#5f5f5f"}
	colors["Grey39"] = color{"241", "#626262"}
	colors["Grey42"] = color{"242", "#6c6c6c"}
	colors["Grey46"] = color{"243", "#767676"}
	colors["Grey50"] = color{"244", "#808080"}
	colors["Grey53"] = color{"102", "#878787"}
	colors["Grey54"] = color{"245", "#8a8a8a"}
	colors["Grey58"] = color{"246", "#949494"}
	colors["Grey62"] = color{"247", "#9e9e9e"}
	colors["Grey63"] = color{"139", "#af87af"}
	colors["Grey66"] = color{"248", "#a8a8a8"}
	colors["Grey69"] = color{"145", "#afafaf"}
	colors["Grey7"] = color{"233", "#121212"}
	colors["Grey70"] = color{"249", "#b2b2b2"}
	colors["Grey74"] = color{"250", "#bcbcbc"}
	colors["Grey78"] = color{"251", "#c6c6c6"}
	colors["Grey82"] = color{"252", "#d0d0d0"}
	colors["Grey84"] = color{"188", "#d7d7d7"}
	colors["Grey85"] = color{"253", "#dadada"}
	colors["Grey89"] = color{"254", "#e4e4e4"}
	colors["Grey93"] = color{"255", "#eeeeee"}
	colors["Honeydew"] = color{"194", "#d7ffd7"}
	colors["HotPink1"] = color{"205", "#ff5faf"}
	colors["HotPink2"] = color{"206", "#ff5fd7"}
	colors["HotPink3"] = color{"169", "#d75faf"}
	colors["HotPink4"] = color{"132", "#af5f87"}
	colors["HotPink5"] = color{"168", "#d75f87"}
	colors["IndianRed1"] = color{"131", "#af5f5f"}
	colors["IndianRed2"] = color{"167", "#d75f5f"}
	colors["IndianRed3"] = color{"203", "#ff5f5f"}
	colors["IndianRed4"] = color{"204", "#ff5f87"}
	colors["Khaki1"] = color{"228", "#ffff87"}
	colors["Khaki2"] = color{"185", "#d7d75f"}
	colors["LightCoral"] = color{"210", "#ff8787"}
	colors["LightCyan2"] = color{"195", "#d7ffff"}
	colors["LightCyan3"] = color{"152", "#afd7d7"}
	colors["LightGoldenrod1"] = color{"227", "#ffff5f"}
	colors["LightGoldenrod2"] = color{"186", "#d7d787"}
	colors["LightGoldenrod3"] = color{"221", "#ffd75f"}
	colors["LightGoldenrod4"] = color{"222", "#ffd787"}
	colors["LightGoldenrod5"] = color{"179", "#d7af5f"}
	colors["LightGreen1"] = color{"119", "#87ff5f"}
	colors["LightGreen2"] = color{"120", "#87ff87"}
	colors["LightPink1"] = color{"217", "#ffafaf"}
	colors["LightPink2"] = color{"174", "#d78787"}
	colors["LightPink3"] = color{"95", "#875f5f"}
	colors["LightSalmon1"] = color{"216", "#ffaf87"}
	colors["LightSalmon2"] = color{"137", "#af875f"}
	colors["LightSalmon3"] = color{"173", "#d7875f"}
	colors["LightSeaGreen"] = color{"37", "#00afaf"}
	colors["LightSkyBlue1"] = color{"153", "#afd7ff"}
	colors["LightSkyBlue2"] = color{"109", "#87afaf"}
	colors["LightSkyBlue3"] = color{"110", "#87afd7"}
	colors["LightSlateBlue"] = color{"105", "#8787ff"}
	colors["LightSlateGrey"] = color{"103", "#8787af"}
	colors["LightSteelBlue1"] = color{"147", "#afafff"}
	colors["LightSteelBlue2"] = color{"189", "#d7d7ff"}
	colors["LightSteelBlue3"] = color{"146", "#afafd7"}
	colors["LightYellow"] = color{"187", "#d7d7af"}
	colors["Lime"] = color{"10", "#00ff00"}
	colors["Magenta1"] = color{"201", "#ff00ff"}
	colors["Magenta2"] = color{"165", "#d700ff"}
	colors["Magenta3"] = color{"200", "#ff00d7"}
	colors["Magenta4"] = color{"127", "#af00af"}
	colors["Magenta5"] = color{"163", "#d700af"}
	colors["Magenta6"] = color{"164", "#d700d7"}
	colors["Maroon"] = color{"1", "#800000"}
	colors["MediumOrchid1"] = color{"134", "#af5fd7"}
	colors["MediumOrchid2"] = color{"171", "#d75fff"}
	colors["MediumOrchid3"] = color{"207", "#ff5fff"}
	colors["MediumOrchid4"] = color{"133", "#af5faf"}
	colors["MediumPurple1"] = color{"104", "#8787d7"}
	colors["MediumPurple2"] = color{"141", "#af87ff"}
	colors["MediumPurple3"] = color{"135", "#af5fff"}
	colors["MediumPurple4"] = color{"140", "#af87d7"}
	colors["MediumPurple5"] = color{"97", "#875faf"}
	colors["MediumPurple6"] = color{"98", "#875fd7"}
	colors["MediumPurple7"] = color{"60", "#5f5f87"}
	colors["MediumSpringGreen"] = color{"49", "#00ffaf"}
	colors["MediumTurquoise"] = color{"80", "#5fd7d7"}
	colors["MediumVioletRed"] = color{"126", "#af0087"}
	colors["MistyRose1"] = color{"224", "#ffd7d7"}
	colors["MistyRose2"] = color{"181", "#d7afaf"}
	colors["NavajoWhite1"] = color{"223", "#ffd7af"}
	colors["NavajoWhite2"] = color{"144", "#afaf87"}
	colors["Navy"] = color{"4", "#000080"}
	colors["NavyBlue"] = color{"17", "#00005f"}
	colors["Olive"] = color{"3", "#808000"}
	colors["Orange1"] = color{"214", "#ffaf00"}
	colors["Orange3"] = color{"172", "#d78700"}
	colors["Orange4"] = color{"58", "#5f5f00"}
	colors["Orange4"] = color{"94", "#875f00"}
	colors["OrangeRed"] = color{"202", "#ff5f00"}
	colors["Orchid1"] = color{"170", "#d75fd7"}
	colors["Orchid2"] = color{"213", "#ff87ff"}
	colors["Orchid3"] = color{"212", "#ff87d7"}
	colors["PaleGreen1"] = color{"121", "#87ffaf"}
	colors["PaleGreen2"] = color{"156", "#afff87"}
	colors["PaleGreen3"] = color{"114", "#87d787"}
	colors["PaleGreen4"] = color{"77", "#5fd75f"}
	colors["PaleTurquoise1"] = color{"159", "#afffff"}
	colors["PaleTurquoise2"] = color{"66", "#5f8787"}
	colors["PaleVioletRed"] = color{"211", "#ff87af"}
	colors["Pink1"] = color{"218", "#ffafd7"}
	colors["Pink2"] = color{"175", "#d787af"}
	colors["Plum1"] = color{"219", "#ffafff"}
	colors["Plum2"] = color{"183", "#d7afff"}
	colors["Plum3"] = color{"176", "#d787d7"}
	colors["Plum4"] = color{"96", "#875f87"}
	colors["Purple1"] = color{"129", "#af00ff"}
	colors["Purple2"] = color{"5", "#800080"}
	colors["Purple3"] = color{"93", "#8700ff"}
	colors["Purple4"] = color{"56", "#5f00d7"}
	colors["Purple5"] = color{"54", "#5f0087"}
	colors["Purple6"] = color{"55", "#5f00af"}
	colors["Red1"] = color{"9", "#ff0000"}
	colors["Red2"] = color{"196", "#ff0000"}
	colors["Red3"] = color{"124", "#af0000"}
	colors["Red4"] = color{"160", "#d70000"}
	colors["RosyBrown"] = color{"138", "#af8787"}
	colors["RoyalBlue"] = color{"63", "#5f5fff"}
	colors["Salmon"] = color{"209", "#ff875f"}
	colors["SandyBrown"] = color{"215", "#ffaf5f"}
	colors["SeaGreen1"] = color{"84", "#5fff87"}
	colors["SeaGreen2"] = color{"85", "#5fffaf"}
	colors["SeaGreen3"] = color{"83", "#5fff5f"}
	colors["SeaGreen4"] = color{"78", "#5fd787"}
	colors["Silver"] = color{"7", "#c0c0c0"}
	colors["SkyBlue1"] = color{"117", "#87d7ff"}
	colors["SkyBlue2"] = color{"111", "#87afff"}
	colors["SkyBlue3"] = color{"74", "#5fafd7"}
	colors["SlateBlue1"] = color{"99", "#875fff"}
	colors["SlateBlue2"] = color{"61", "#5f5faf"}
	colors["SlateBlue3"] = color{"62", "#5f5fd7"}
	colors["SpringGreen1"] = color{"48", "#00ff87"}
	colors["SpringGreen2"] = color{"42", "#00d787"}
	colors["SpringGreen3"] = color{"47", "#00ff5f"}
	colors["SpringGreen4"] = color{"35", "#00af5f"}
	colors["SpringGreen5"] = color{"41", "#00d75f"}
	colors["SpringGreen6"] = color{"29", "#00875f"}
	colors["SteelBlue1"] = color{"67", "#5f87af"}
	colors["SteelBlue2"] = color{"75", "#5fafff"}
	colors["SteelBlue3"] = color{"81", "#5fd7ff"}
	colors["SteelBlue4"] = color{"68", "#5f87d7"}
	colors["Tan"] = color{"180", "#d7af87"}
	colors["Teal"] = color{"6", "#008080"}
	colors["Thistle1"] = color{"225", "#ffd7ff"}
	colors["Thistle2"] = color{"182", "#d7afd7"}
	colors["Turquoise1"] = color{"45", "#00d7ff"}
	colors["Turquoise2"] = color{"30", "#008787"}
	colors["Violet"] = color{"177", "#d787ff"}
	colors["Wheat1"] = color{"229", "#ffffaf"}
	colors["Wheat2"] = color{"101", "#87875f"}
	colors["White"] = color{"15", "#ffffff"}
	colors["Yellow1"] = color{"11", "#ffff00"}
	colors["Yellow2"] = color{"226", "#ffff00"}
	colors["Yellow3"] = color{"190", "#d7ff00"}
	colors["Yellow4"] = color{"148", "#afd700"}
	colors["Yellow5"] = color{"184", "#d7d700"}
	colors["Yellow6"] = color{"100", "#878700"}
	colors["Yellow7"] = color{"106", "#87af00"}
	colors["FG"] = color{"fg", "fg"}
	colors["BG"] = color{"bg", "bg"}
	colors["NONE"] = color{"NONE", "NONE"}
	return colors
}
