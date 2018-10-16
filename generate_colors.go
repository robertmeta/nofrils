package main

import (
	"text/template"
	"log"
	"os"
)

func main() {
	// Helper to pass two values to the template condAssign
	// This template emits attr=val if val is non-empty
	funcMap := template.FuncMap{
		"assign": func(val string, attr string) map[string]string {
			return map[string]string{
				"val":  val,
				"attr": attr,
			}
		},
	}

	tmpl := template.New("schemes.tmpl")
	tmpl.Funcs(funcMap);
	template.Must(tmpl.ParseFiles("schemes.tmpl"))

	cursorLineRow := vimColorRow{FG: colors["NONE"], BG: colors["White"], Attr: "NONE"}
	cursorRow := vimColorRow{FG: colors["Aqua"], BG: colors["FG"], Attr: "NONE"}
	diffAddRow := vimColorRow{FG: colors["Green1"], BG: colors["NONE"], Attr: "NONE"}
	diffChangeRow := vimColorRow{FG: colors["Orange4"], BG: colors["NONE"], Attr: "NONE"}
	diffDeleteRow := vimColorRow{FG: colors["Maroon"], BG: colors["NONE"], Attr: "NONE"}
	diffTextRow := vimColorRow{FG: colors["Navy"], BG: colors["NONE"], Attr: "NONE"}
	directoryRow := vimColorRow{FG: colors["DeepPink7"], BG: colors["NONE"], Attr: "NONE"}
	errorRow := vimColorRow{FG: colors["Red1"], BG: colors["White"], Attr: "NONE"}
	fadedRow := vimColorRow{FG: colors["SandyBrown"], BG: colors["NONE"], Attr: "NONE"}
	foldedRow := vimColorRow{FG: colors["Grey35"], BG: colors["NONE"], Attr: "NONE"}
	matchParenRow := vimColorRow{FG: colors["White"], BG: colors["Navy"], Attr: "NONE"}
	noneRow := vimColorRow{FG: colors["NONE"], BG: colors["NONE"], Attr: "NONE"}
	normalRow := vimColorRow{FG: colors["Black"], BG: colors["Cornsilk"], Attr: "NONE"}
	searchRow := vimColorRow{FG: colors["White"], BG: colors["Green1"], Attr: "NONE"}
	spellRow := vimColorRow{FG: colors["Purple2"], BG: colors["NONE"], Attr: "underline"}
	statusLineRow := vimColorRow{FG: colors["Black"], BG: colors["Plum2"], Attr: "NONE"}
	vertSplitRow := vimColorRow{FG: colors["Black"], BG: colors["LightCyan2"], Attr: "NONE"}
	visualSelectRow := vimColorRow{FG: colors["FG"], BG: colors["LightGoldenrod5"], Attr: "NONE"}
	heavyCommentRow := vimColorRow{FG: colors["DeepPink8"], BG: colors["NONE"], Attr: "NONE"}
	heavyStringRow := vimColorRow{FG: colors["Grey100"], BG: colors["NONE"], Attr: "NONE"}
	heavyLineRow := vimColorRow{FG: colors["DeepPink8"], BG: colors["NONE"], Attr: "NONE"}

	pmenuRow := reverse(normalRow)
	visualNOSRow := reverse(directoryRow)
	commentRow := reverse(visualSelectRow)

	nft := nofrilsTheme{
		Name:            "No Frils Acme",
		Slug:            "nofrils-acme",
		FadedRow:        fadedRow,
		NoneRow:         noneRow,
		NormalRow:       normalRow,
		CommentRow:      commentRow,
		HeavyCommentRow: heavyCommentRow,
		HeavyStringRow:  heavyStringRow,
		HeavyLineRow:    heavyLineRow,

		Rows: []vimColorRow{
			withName("Normal", normalRow),
			withName("ColorColumn", cursorLineRow),
			withName("MatchParen", matchParenRow),
			withName("PmenuSel", statusLineRow),
			withName("Visual", visualSelectRow),
			withName("VisualNOS", visualNOSRow),
			withName("Todo", diffAddRow),

			withName("Comment", commentRow),

			withName("FoldColumn", fadedRow),
			withName("LineNr", fadedRow),
			withName("NonText", fadedRow),

			withName("Folded", foldedRow),
			withName("SignColumn", foldedRow),
			withName("SpecialKey", foldedRow),

			withName("TabLineFill", vertSplitRow),
			withName("TabLine", vertSplitRow),
			withName("StatusLineNC", vertSplitRow),
			withName("VertSplit", vertSplitRow),

			withName("TabLineSel", statusLineRow),
			withName("StatusLine", statusLineRow),
			withName("SneakLabelTarget", statusLineRow),
			withName("SneakScope", statusLineRow),

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

			withName("Menu", noneRow),
			withName("Scrollbar", noneRow),
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
	vcr.BG, vcr.FG = vcr.FG, vcr.BG
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
	Name            string
	Slug            string
	FadedRow        vimColorRow
	NoneRow         vimColorRow
	NormalRow       vimColorRow
	CommentRow      vimColorRow
	HeavyCommentRow vimColorRow
	HeavyStringRow  vimColorRow
	HeavyLineRow    vimColorRow
	Rows            []vimColorRow
}

var colors = map[string]color{
	"Aqua":              color{"14", "#00ffff"},
	"Aquamarine1":       color{"122", "#87ffd7"},
	"Aquamarine2":       color{"86", "#5fffd7"},
	"Aquamarine3":       color{"79", "#5fd7af"},
	"Black":             color{"0", "#000000"},
	"Blue1":             color{"12", "#0000ff"},
	"Blue2":             color{"21", "#0000ff"},
	"Blue3":             color{"19", "#0000af"},
	"Blue4":             color{"20", "#0000d7"},
	"BlueViolet":        color{"57", "#5f00ff"},
	"CadetBlue1":        color{"72", "#5faf87"},
	"CadetBlue2":        color{"73", "#5fafaf"},
	"Chartreuse1":       color{"118", "#87ff00"},
	"Chartreuse2":       color{"112", "#87d700"},
	"Chartreuse3":       color{"82", "#5fff00"},
	"Chartreuse4":       color{"70", "#5faf00"},
	"Chartreuse5":       color{"76", "#5fd700"},
	"Chartreuse6":       color{"64", "#5f8700"},
	"CornflowerBlue":    color{"69", "#5f87ff"},
	"Cornsilk":          color{"230", "#ffffd7"},
	"Cyan1":             color{"51", "#00ffff"},
	"Cyan2":             color{"50", "#00ffd7"},
	"Cyan3":             color{"43", "#00d7af"},
	"DarkBlue":          color{"18", "#000087"},
	"DarkCyan":          color{"36", "#00af87"},
	"DarkGoldenrod":     color{"136", "#af8700"},
	"DarkGreen":         color{"22", "#005f00"},
	"DarkKhaki":         color{"143", "#afaf5f"},
	"DarkMagenta1":      color{"90", "#870087"},
	"DarkMagenta2":      color{"91", "#8700af"},
	"DarkOliveGreen1":   color{"191", "#d7ff5f"},
	"DarkOliveGreen2":   color{"192", "#d7ff87"},
	"DarkOliveGreen3":   color{"155", "#afff5f"},
	"DarkOliveGreen4":   color{"107", "#87af5f"},
	"DarkOliveGreen5":   color{"113", "#87d75f"},
	"DarkOliveGreen6":   color{"149", "#afd75f"},
	"DarkOrange1":       color{"208", "#ff8700"},
	"DarkOrange2":       color{"130", "#af5f00"},
	"DarkOrange3":       color{"166", "#d75f00"},
	"DarkRed1":          color{"52", "#5f0000"},
	"DarkRed2":          color{"88", "#870000"},
	"DarkSeaGreen1":     color{"108", "#87af87"},
	"DarkSeaGreen2":     color{"158", "#afffd7"},
	"DarkSeaGreen3":     color{"193", "#d7ffaf"},
	"DarkSeaGreen4":     color{"151", "#afd7af"},
	"DarkSeaGreen5":     color{"157", "#afffaf"},
	"DarkSeaGreen6":     color{"115", "#87d7af"},
	"DarkSeaGreen7":     color{"150", "#afd787"},
	"DarkSeaGreen8":     color{"65", "#5f875f"},
	"DarkSeaGreen9":     color{"71", "#5faf5f"},
	"DarkSlateGray1":    color{"123", "#87ffff"},
	"DarkSlateGray2":    color{"87", "#5fffff"},
	"DarkSlateGray3":    color{"116", "#87d7d7"},
	"DarkTurquoise":     color{"44", "#00d7d7"},
	"DarkViolet1":       color{"128", "#af00d7"},
	"DarkViolet2":       color{"92", "#8700d7"},
	"DeepPink1":         color{"198", "#ff0087"},
	"DeepPink2":         color{"199", "#ff00af"},
	"DeepPink3":         color{"197", "#ff005f"},
	"DeepPink4":         color{"161", "#d7005f"},
	"DeepPink5":         color{"162", "#d70087"},
	"DeepPink6":         color{"125", "#af005f"},
	"DeepPink7":         color{"53", "#5f005f"},
	"DeepPink8":         color{"89", "#87005f"},
	"DeepSkyBlue1":      color{"39", "#00afff"},
	"DeepSkyBlue2":      color{"38", "#00afd7"},
	"DeepSkyBlue3":      color{"31", "#0087af"},
	"DeepSkyBlue4":      color{"32", "#0087d7"},
	"DeepSkyBlue5":      color{"23", "#005f5f"},
	"DeepSkyBlue6":      color{"24", "#005f87"},
	"DeepSkyBlue7":      color{"25", "#005faf"},
	"DodgerBlue1":       color{"33", "#0087ff"},
	"DodgerBlue2":       color{"27", "#005fff"},
	"DodgerBlue3":       color{"26", "#005fd7"},
	"Fuchsia":           color{"13", "#ff00ff"},
	"Gold1":             color{"220", "#ffd700"},
	"Gold2":             color{"142", "#afaf00"},
	"Gold3":             color{"178", "#d7af00"},
	"Green1":            color{"2", "#008000"},
	"Green2":            color{"46", "#00ff00"},
	"Green3":            color{"34", "#00af00"},
	"Green4":            color{"40", "#00d700"},
	"Green5":            color{"28", "#008700"},
	"GreenYellow":       color{"154", "#afff00"},
	"Grey1":             color{"8", "#808080"},
	"Grey0":             color{"16", "#000000"},
	"Grey100":           color{"231", "#ffffff"},
	"Grey11":            color{"234", "#1c1c1c"},
	"Grey15":            color{"235", "#262626"},
	"Grey19":            color{"236", "#303030"},
	"Grey23":            color{"237", "#3a3a3a"},
	"Grey27":            color{"238", "#444444"},
	"Grey3":             color{"232", "#080808"},
	"Grey30":            color{"239", "#4e4e4e"},
	"Grey35":            color{"240", "#585858"},
	"Grey37":            color{"59", "#5f5f5f"},
	"Grey39":            color{"241", "#626262"},
	"Grey42":            color{"242", "#6c6c6c"},
	"Grey46":            color{"243", "#767676"},
	"Grey50":            color{"244", "#808080"},
	"Grey53":            color{"102", "#878787"},
	"Grey54":            color{"245", "#8a8a8a"},
	"Grey58":            color{"246", "#949494"},
	"Grey62":            color{"247", "#9e9e9e"},
	"Grey63":            color{"139", "#af87af"},
	"Grey66":            color{"248", "#a8a8a8"},
	"Grey69":            color{"145", "#afafaf"},
	"Grey7":             color{"233", "#121212"},
	"Grey70":            color{"249", "#b2b2b2"},
	"Grey74":            color{"250", "#bcbcbc"},
	"Grey78":            color{"251", "#c6c6c6"},
	"Grey82":            color{"252", "#d0d0d0"},
	"Grey84":            color{"188", "#d7d7d7"},
	"Grey85":            color{"253", "#dadada"},
	"Grey89":            color{"254", "#e4e4e4"},
	"Grey93":            color{"255", "#eeeeee"},
	"Honeydew":          color{"194", "#d7ffd7"},
	"HotPink1":          color{"205", "#ff5faf"},
	"HotPink2":          color{"206", "#ff5fd7"},
	"HotPink3":          color{"169", "#d75faf"},
	"HotPink4":          color{"132", "#af5f87"},
	"HotPink5":          color{"168", "#d75f87"},
	"IndianRed1":        color{"131", "#af5f5f"},
	"IndianRed2":        color{"167", "#d75f5f"},
	"IndianRed3":        color{"203", "#ff5f5f"},
	"IndianRed4":        color{"204", "#ff5f87"},
	"Khaki1":            color{"228", "#ffff87"},
	"Khaki2":            color{"185", "#d7d75f"},
	"LightCoral":        color{"210", "#ff8787"},
	"LightCyan2":        color{"195", "#d7ffff"},
	"LightCyan3":        color{"152", "#afd7d7"},
	"LightGoldenrod1":   color{"227", "#ffff5f"},
	"LightGoldenrod2":   color{"186", "#d7d787"},
	"LightGoldenrod3":   color{"221", "#ffd75f"},
	"LightGoldenrod4":   color{"222", "#ffd787"},
	"LightGoldenrod5":   color{"179", "#d7af5f"},
	"LightGreen1":       color{"119", "#87ff5f"},
	"LightGreen2":       color{"120", "#87ff87"},
	"LightPink1":        color{"217", "#ffafaf"},
	"LightPink2":        color{"174", "#d78787"},
	"LightPink3":        color{"95", "#875f5f"},
	"LightSalmon1":      color{"216", "#ffaf87"},
	"LightSalmon2":      color{"137", "#af875f"},
	"LightSalmon3":      color{"173", "#d7875f"},
	"LightSeaGreen":     color{"37", "#00afaf"},
	"LightSkyBlue1":     color{"153", "#afd7ff"},
	"LightSkyBlue2":     color{"109", "#87afaf"},
	"LightSkyBlue3":     color{"110", "#87afd7"},
	"LightSlateBlue":    color{"105", "#8787ff"},
	"LightSlateGrey":    color{"103", "#8787af"},
	"LightSteelBlue1":   color{"147", "#afafff"},
	"LightSteelBlue2":   color{"189", "#d7d7ff"},
	"LightSteelBlue3":   color{"146", "#afafd7"},
	"LightYellow":       color{"187", "#d7d7af"},
	"Lime":              color{"10", "#00ff00"},
	"Magenta1":          color{"201", "#ff00ff"},
	"Magenta2":          color{"165", "#d700ff"},
	"Magenta3":          color{"200", "#ff00d7"},
	"Magenta4":          color{"127", "#af00af"},
	"Magenta5":          color{"163", "#d700af"},
	"Magenta6":          color{"164", "#d700d7"},
	"Maroon":            color{"1", "#800000"},
	"MediumOrchid1":     color{"134", "#af5fd7"},
	"MediumOrchid2":     color{"171", "#d75fff"},
	"MediumOrchid3":     color{"207", "#ff5fff"},
	"MediumOrchid4":     color{"133", "#af5faf"},
	"MediumPurple1":     color{"104", "#8787d7"},
	"MediumPurple2":     color{"141", "#af87ff"},
	"MediumPurple3":     color{"135", "#af5fff"},
	"MediumPurple4":     color{"140", "#af87d7"},
	"MediumPurple5":     color{"97", "#875faf"},
	"MediumPurple6":     color{"98", "#875fd7"},
	"MediumPurple7":     color{"60", "#5f5f87"},
	"MediumSpringGreen": color{"49", "#00ffaf"},
	"MediumTurquoise":   color{"80", "#5fd7d7"},
	"MediumVioletRed":   color{"126", "#af0087"},
	"MistyRose1":        color{"224", "#ffd7d7"},
	"MistyRose2":        color{"181", "#d7afaf"},
	"NavajoWhite1":      color{"223", "#ffd7af"},
	"NavajoWhite2":      color{"144", "#afaf87"},
	"Navy":              color{"4", "#000080"},
	"NavyBlue":          color{"17", "#00005f"},
	"Olive":             color{"3", "#808000"},
	"Orange1":           color{"214", "#ffaf00"},
	"Orange2":           color{"172", "#d78700"},
	"Orange3":           color{"58", "#5f5f00"},
	"Orange4":           color{"94", "#875f00"},
	"OrangeRed":         color{"202", "#ff5f00"},
	"Orchid1":           color{"170", "#d75fd7"},
	"Orchid2":           color{"213", "#ff87ff"},
	"Orchid3":           color{"212", "#ff87d7"},
	"PaleGreen1":        color{"121", "#87ffaf"},
	"PaleGreen2":        color{"156", "#afff87"},
	"PaleGreen3":        color{"114", "#87d787"},
	"PaleGreen4":        color{"77", "#5fd75f"},
	"PaleTurquoise1":    color{"159", "#afffff"},
	"PaleTurquoise2":    color{"66", "#5f8787"},
	"PaleVioletRed":     color{"211", "#ff87af"},
	"Pink1":             color{"218", "#ffafd7"},
	"Pink2":             color{"175", "#d787af"},
	"Plum1":             color{"219", "#ffafff"},
	"Plum2":             color{"183", "#d7afff"},
	"Plum3":             color{"176", "#d787d7"},
	"Plum4":             color{"96", "#875f87"},
	"Purple1":           color{"129", "#af00ff"},
	"Purple2":           color{"5", "#800080"},
	"Purple3":           color{"93", "#8700ff"},
	"Purple4":           color{"56", "#5f00d7"},
	"Purple5":           color{"54", "#5f0087"},
	"Purple6":           color{"55", "#5f00af"},
	"Red1":              color{"9", "#ff0000"},
	"Red2":              color{"196", "#ff0000"},
	"Red3":              color{"124", "#af0000"},
	"Red4":              color{"160", "#d70000"},
	"RosyBrown":         color{"138", "#af8787"},
	"RoyalBlue":         color{"63", "#5f5fff"},
	"Salmon":            color{"209", "#ff875f"},
	"SandyBrown":        color{"215", "#ffaf5f"},
	"SeaGreen1":         color{"84", "#5fff87"},
	"SeaGreen2":         color{"85", "#5fffaf"},
	"SeaGreen3":         color{"83", "#5fff5f"},
	"SeaGreen4":         color{"78", "#5fd787"},
	"Silver":            color{"7", "#c0c0c0"},
	"SkyBlue1":          color{"117", "#87d7ff"},
	"SkyBlue2":          color{"111", "#87afff"},
	"SkyBlue3":          color{"74", "#5fafd7"},
	"SlateBlue1":        color{"99", "#875fff"},
	"SlateBlue2":        color{"61", "#5f5faf"},
	"SlateBlue3":        color{"62", "#5f5fd7"},
	"SpringGreen1":      color{"48", "#00ff87"},
	"SpringGreen2":      color{"42", "#00d787"},
	"SpringGreen3":      color{"47", "#00ff5f"},
	"SpringGreen4":      color{"35", "#00af5f"},
	"SpringGreen5":      color{"41", "#00d75f"},
	"SpringGreen6":      color{"29", "#00875f"},
	"SteelBlue1":        color{"67", "#5f87af"},
	"SteelBlue2":        color{"75", "#5fafff"},
	"SteelBlue3":        color{"81", "#5fd7ff"},
	"SteelBlue4":        color{"68", "#5f87d7"},
	"Tan":               color{"180", "#d7af87"},
	"Teal":              color{"6", "#008080"},
	"Thistle1":          color{"225", "#ffd7ff"},
	"Thistle2":          color{"182", "#d7afd7"},
	"Turquoise1":        color{"45", "#00d7ff"},
	"Turquoise2":        color{"30", "#008787"},
	"Violet":            color{"177", "#d787ff"},
	"Wheat1":            color{"229", "#ffffaf"},
	"Wheat2":            color{"101", "#87875f"},
	"White":             color{"15", "#ffffff"},
	"Yellow1":           color{"11", "#ffff00"},
	"Yellow2":           color{"226", "#ffff00"},
	"Yellow3":           color{"190", "#d7ff00"},
	"Yellow4":           color{"148", "#afd700"},
	"Yellow5":           color{"184", "#d7d700"},
	"Yellow6":           color{"100", "#878700"},
	"Yellow7":           color{"106", "#87af00"},
	"FG":                color{"fg", "fg"},
	"BG":                color{"bg", "bg"},
	"NONE":              color{"NONE", "NONE"},
}
