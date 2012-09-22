﻿local E, L, V, P, G, _ = unpack(select(2, ...)); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB, Localize Underscore
local _, myclasscolor = UnitClass("player");
local valuer, valueg, valueb = RAID_CLASS_COLORS[myclasscolor].r, RAID_CLASS_COLORS[myclasscolor].g, RAID_CLASS_COLORS[myclasscolor].b

P.gridSize = 64
P.farmSize = 340

--Core
P['general'] = {
	["taintLog"] = false,
	["autoscale"] = true,
	["stickyFrames"] = true,
	['loginmessage'] = false,
	["interruptAnnounce"] = "RAID",
	["autoRepair"] = "GUILD",
	['autoRoll'] = false,
	['vendorGrays'] = true,
	['autoAcceptInvite'] = false,

	["fontSize"] = 11,
	["font"] = "Friz Quadrata TT",

	["bordercolor"] = { r = .20,g = .20,b = .20 },
	["backdropcolor"] = { r = .16,g = .16,b = .16 },
	["backdropfadecolor"] = { r = .10,g = .10,b = .10, a = 0.9 },
	["valuecolor"] = {r = valuer,g = valueg,b = valueb},

	['mapAlpha'] = 1,
	['tinyWorldMap'] = true,
	
	['minimap'] = {
		['size'] = 176,
		['locationText'] = 'MOUSEOVER',
	},	
	
	['experience'] = {
		['enable'] = true,
		['width'] = 213,
		['height'] = 15,
		['textFormat'] = 'CURMAX',
		['textSize'] = 10,
	},
	['reputation'] = {
		['enable'] = true,
		['width'] = 213,
		['height'] = 15,
		['textFormat'] = 'CURMAX',
		['textSize'] = 10,
	},
	['threat'] = {
		['enable'] = false,
		['position'] = 'RIGHTCHAT',
		['textSize'] = 12,
	},
	['totems'] = {
		['enable'] = true,
		['growthDirection'] = 'VERTICAL',
		['sortDirection'] = 'ASCENDING',
		['size'] = 40,
		['spacing'] = 4,
	}
};

--Bags
P['bags'] = {
    ['sortInverted'] = true,
	['xOffset'] = -5,
	['yOffset'] = 172,
	['bagSize'] = 30,
	['bankSize'] = 30,
	['alignToChat'] = false,
	['bagWidth'] = 385,
	['bankWidth'] = 385,
	['currencyFormat'] = 'ICON_TEXT',
	['bagBar'] = {
		['growthDirection'] = 'VERTICAL',
		['sortDirection'] = 'ASCENDING',
		['size'] = 30,
		['spacing'] = 4,
		['showBackdrop'] = false,
		['mouseover'] = false,
	},
};

--NamePlate
P["nameplate"] = {
	['font'] = 'ElvUI Font',
	['fontSize'] = 10,
	['fontOutline'] = 'OUTLINE',
	
	["markBGHealers"] = true,
	["width"] = 114,
	["height"] = 8,
	["cbheight"] = 5,
	["showlevel"] = true,
	["enhancethreat"] = true,
	["combat"] = false,
	["healthtext"] = 'CURRENT_PERCENT',
	["trackauras"] = true,
	["trackfilter"] = 'CCDebuffs',
	['goodscale'] = 1,
	['badscale'] = 1,
	["goodcolor"] = {r = 75/255,  g = 175/255, b = 76/255},
	["badcolor"] = {r = 0.78, g = 0.25, b = 0.25},
	["goodtransitioncolor"] = {r = 218/255, g = 197/255, b = 92/255},
	["badtransitioncolor"] = {r = 240/255, g = 154/255, b = 17/255}, 	
	["friendlynpc"] = {r = 0.31, g = 0.45, b = 0.63},
	["friendlyplayer"] = {r = 75/255,  g = 175/255, b = 76/255},
	["neutral"] = { r = 218/255, g = 197/255, b = 92/255 },
	["enemy"] = { r = 0.78, g = 0.25, b = 0.25 },	
	['lowHealthWarning'] = 'ALL',
	['lowHealthWarningThreshold'] = .40,
};

--Auras
P['auras'] = {
	['font'] = 'ElvUI Pixel',
	['fontSize'] = 12,
	['fontOutline'] = 'MONOCHROMEOUTLINE',
		
	['consolidatedBuffs'] = {
		['enable'] = true,
		['filter'] = true,
		['durations'] = true,
		['font'] = 'ElvUI Pixel',
		['fontSize'] = 10,
		['fontOutline'] = 'MONOCHROMEOUTLINE',
	},
	
	['wrapAfter'] = 12,
	['fadeThreshold'] = -1,
	['buffs'] = {
		['sortMethod'] = "TIME",
		['sortDir'] = '-',
		['maxWraps'] = 3,
		['seperateOwn'] = 1,
	},
	['debuffs'] = {
		['sortMethod'] = "TIME",
		['sortDir'] = '-',
		['maxWraps'] = 1,
	},
}

--Chat
P['chat'] = {
	['url'] = true,
	['shortChannels'] = false,
	['hyperlinkHover'] = false,
	['throttleInterval'] = 60,
	['scrollDownInterval'] = 0,
	['fade'] = false,
	['font'] = 'Arial Narrow',
	['fontOutline'] = 'NONE',
	['sticky'] = true,
	['emotionIcons'] = false,
	['keywordSound'] = 'Whisper Alert',
	['whisperSound'] = 'Whisper Alert',
	['chatHistory'] = true,
	['timeStampFormat'] = '%I:%M:%S ',
	['keywords'] = '%MYNAME%, ElvUI, Blaze, Blazii, Blæs',
	['panelWidth'] = 385,
	['panelHeight'] = 200,
	['panelBackdropNameLeft'] = '',
	['panelBackdropNameRight'] = '',
	['panelBackdrop'] = 'SHOWBOTH',	
	
	['tabFont'] = 'Friz Quadrata TT',
	['tabFontSize'] = 11,
	['tabFontOutline'] = 'NONE',
}

--Datatexts
P['datatexts'] = {
	['font'] = 'Friz Quadrata TT',
	['fontSize'] = 11,
	['fontOutline'] = 'NONE',
	
	['panels'] = {
		['LeftChatDataPanel'] = {
			['left'] = 'Spell/Heal Power',
			['middle'] = 'Haste',
			['right'] = 'Mastery',
		},
		['RightChatDataPanel'] = {
			['left'] = 'DPS',
			['middle'] = 'Durability',
			['right'] = 'Gold',
		},
		['LeftMiniPanel'] = 'Time',
		['RightMiniPanel'] = 'System',
		['ChatTab_Datatext_Panel'] = {
			['left'] = 'Call to Arms',
			['middle'] = 'Bags',
		},
		['Bottom_Datatext_Panel'] = {
			['left'] = 'Friends',
			['middle'] = 'Spec Switch',
			['right'] = 'Guild',
		},
	},
	['localtime'] = true,
	['time24'] = true,
	['battleground'] = false,
	['minimapPanels'] = true,
}

--Tooltip
P['tooltip'] = {
	['anchor'] = 'SMART',
	['ufhide'] = 'NONE',
	['whostarget'] = true,
	['combathide'] = false,
	['titles'] = true,
	['guildranks'] = true,
	['talentSpec'] = true,
}

--UnitFrame
P['unitframe'] = {
	['smoothbars'] = true,
	['statusbar'] = "Minimalist",
	['font'] = 'Old Sans Black',
	['fontSize'] = 12,
	['fontOutline'] = 'OUTLINE',
	['OORAlpha'] = 0.55,
	['debuffHighlighting'] = false,
	["smartRaidFilter"] = true,

	['colors'] = {
		['healthclass'] = false,
		['powerclass'] = true,
		['colorhealthbyvalue'] = false,
		['customhealthbackdrop'] = true,
		['classbackdrop'] = false,
		
		['health'] = { r = 68/255,g = 68/255,b = 68/255 },
		['health_backdrop'] = { r = 97/255,g = 97/255,b = 97/255 },
		['tapped'] = { r = 0.55, g = 0.57, b = 0.61},
		['disconnected'] = { r = 0, g = 0, b = 0},
		['auraBarBuff'] = P.general.bordercolor,
		['auraBarDebuff'] = {r = 0.8, g = 0.1, b = 0.1},
		['power'] = {
			["MANA"] = {r = 0.31, g = 0.45, b = 0.63},
			["RAGE"] = {r = 0.78, g = 0.25, b = 0.25},
			["FOCUS"] = {r = 0.71, g = 0.43, b = 0.27},
			["ENERGY"] = {r = 0.65, g = 0.63, b = 0.35},
			["RUNIC_POWER"] = {r = 0, g = 0.82, b = 1},
		},
		['reaction'] = {
			['BAD'] = { r = 0.78, g = 0.25, b = 0.25 },
			['NEUTRAL'] = { r = 218/255, g = 197/255, b = 92/255 },
			['GOOD'] = { r = 75/255, g = 175/255, b = 76/255 },
		},
	},

	['units'] = {
		['player'] = {
			['enable'] = true,
			['width'] = 260,
			['height'] = 54,
			['lowmana'] = 30,
			['combatfade'] = false,
			['healPrediction'] = true,
			['restIcon'] = true,
			['health'] = {
				['text_format'] = '[healthcolor][health:current-percent]',
				['position'] = 'TOPRIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '[powercolor][power:current]',	
				['width'] = 'fill',
				['height'] = 15,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,
			},
			['name'] = {
				['position'] = 'LEFT',
				['text_format'] = '[namecolor][name:medium] [level]',
			},
			['pvp'] = {
				['position'] = 'BOTTOM',
				['text_format'] = '||cFFB04F4F[pvptimer][mouseover]||r',
			},
			['portrait'] = {
				['enable'] = false,
				['width'] = 45,
				['overlay'] = false,
				['camDistanceScale'] = 1,
				['style'] = '3D'
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 8,
				['numrows'] = 1,
				['attachTo'] = 'DEBUFFS',
				['anchorPoint'] = 'TOPLEFT',
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = true,
				['noConsolidated'] = true,
				['useBlacklist'] = true,
				['useWhitelist'] = true,
				['noDuration'] = true,
				['onlyDispellable'] = false,
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 7,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'TOPLEFT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = false,
				['useBlacklist'] = true,
				['useWhitelist'] = false,
				['noDuration'] = false,
				['onlyDispellable'] = false,
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
			},
			['castbar'] = {
				['enable'] = true,
				['width'] = 260,
				['height'] = 20,
				['icon'] = false,
				['latency'] = true,
				['displayTarget'] = false,
				['color'] = { r = .66,g = .66,b = .66 },
				['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
				['format'] = 'CURRENTMAX',
				["ticks"] = true,
				['spark'] = true,
			},
			['classbar'] = {
				['enable'] = true,
				['fill'] = 'spaced',
				['height'] = 8,
			},
			['aurabar'] = {
				['enable'] = false,
				['anchorPoint'] = 'ABOVE',
				['attachTo'] = 'DEBUFFS',
				['playerOnly'] = true,
				['noConsolidated'] = true,
				['useBlacklist'] = true,
				['useWhitelist'] = true,
				['noDuration'] = true,
				['onlyDispellable'] = false,
				['useFilter'] = '',
				['friendlyAuraType'] = 'HELPFUL',
				['enemyAuraType'] = 'HARMFUL'
			},
		},	
		['target'] = {
			['enable'] = true,
			['width'] = 260,
			['height'] = 54,
			['healPrediction'] = true,
			['smartAuraDisplay'] = 'DISABLED',
			['health'] = {
				['text_format'] = '[healthcolor][health:current-percent]',
				['position'] = 'TOPRIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '[powercolor][power:current]',	
				['width'] = 'fill',
				['height'] = 15,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['position'] = 'LEFT',
				['text_format'] = '[namecolor][name:medium] [difficultycolor][level] [shortclassification]',
			},
			['portrait'] = {
				['enable'] = false,
				['width'] = 45,
				['overlay'] = false,
				['camDistanceScale'] = 1,
				['style'] = '3D'
			},
			['buffs'] = {
				['enable'] = true,
				['perrow'] = 8,
				['numrows'] = 2,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = {friendly = false, enemy = false},
				['noConsolidated'] = {friendly = false, enemy = false},
				['useBlacklist'] = {friendly = false, enemy = false},
				['useWhitelist'] = {friendly = false, enemy = false},
				['noDuration'] = {friendly = false, enemy = false},
				['onlyDispellable'] = {friendly = false, enemy = false},
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 8,
				['numrows'] = 2,
				['attachTo'] = 'BUFFS',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = {friendly = false, enemy = false},
				['useBlacklist'] = {friendly = false, enemy = false},
				['useWhitelist'] = {friendly = false, enemy = false},
				['noDuration'] = {friendly = false, enemy = false},
				['onlyDispellable'] = {friendly = false, enemy = false},
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
			},
			['castbar'] = {
				['enable'] = true,
				['width'] = 260,
				['height'] = 18,
				['icon'] = false,
				['color'] = { r = .66,g = .66,b = .66 },
				['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
				['format'] = 'REMAINING',
				['spark'] = true,
			},	
			['combobar'] = {
				['enable'] = true,
				['fill'] = 'spaced',
				['height'] = 10,
			},		
			['aurabar'] = {
				['enable'] = false,
				['anchorPoint'] = 'ABOVE',
				['attachTo'] = 'BUFFS',
				['playerOnly'] = {friendly = true, enemy = true},
				['useBlacklist'] = {friendly = true, enemy = true},
				['useWhitelist'] = {friendly = false, enemy = false},
				['noDuration'] = {friendly = true, enemy = true},
				['noConsolidated'] = {friendly = true, enemy = true},
				['onlyDispellable'] = {friendly = false, enemy = false},
				['useFilter'] = '',
				['friendlyAuraType'] = 'HELPFUL',
				['enemyAuraType'] = 'HARMFUL'				
			},			
		},
		['targettarget'] = {
			['enable'] = true,
			['width'] = 130,
			['height'] = 50,
			['health'] = {
				['text_format'] = '',
				['position'] = 'RIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 10,
				['offset'] = 0,
				['position'] = 'LEFT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['position'] = 'CENTER',
				['text_format'] = '[namecolor][name:medium]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 7,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = {friendly = true, enemy = false},
				['noConsolidated'] = {friendly = true, enemy = false},
				['useBlacklist'] = {friendly = true, enemy = true},
				['useWhitelist'] = {friendly = false, enemy = false},
				['noDuration'] = {friendly = true, enemy = false},
				['onlyDispellable'] = {friendly = false, enemy = false},
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 5,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMRIGHT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = {friendly = false, enemy = true},
				['useBlacklist'] = {friendly = true, enemy = true},
				['useWhitelist'] = {friendly = false, enemy = false},
				['noDuration'] = {friendly = false, enemy = false},
				['onlyDispellable'] = {friendly = false, enemy = false},
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
			},			
		},
		['focus'] = {
			['enable'] = true,
			['width'] = 200,
			['height'] = 40,
			['healPrediction'] = true,
			['smartAuraDisplay'] = 'DISABLED',
			['health'] = {
				['text_format'] = '',
				['position'] = 'TOPRIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 10,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['position'] = 'LEFT',
				['text_format'] = '[namecolor][name:medium]',
			},
			['buffs'] = {
				['enable'] = true,
				['perrow'] = 7,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = {friendly = false, enemy = false},
				['noConsolidated'] = {friendly = false, enemy = false},
				['useBlacklist'] = {friendly = false, enemy = false},
				['useWhitelist'] = {friendly = false, enemy = false},
				['noDuration'] = {friendly = false, enemy = false},
				['onlyDispellable'] = {friendly = false, enemy = false},
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 7,
				['numrows'] = 1,
				['attachTo'] = 'BUFFS',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = {friendly = false, enemy = false},
				['useBlacklist'] = {friendly = false, enemy = false},
				['useWhitelist'] = {friendly = false, enemy = false},
				['noDuration'] = {friendly = false, enemy = false},
				['onlyDispellable'] = {friendly = false, enemy = false},
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
			},	
			['castbar'] = {
				['enable'] = true,
				['width'] = 200,
				['height'] = 15,
				['icon'] = false,
				['color'] = { r = .66,g = .66,b = .66 },
				['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
				['format'] = 'REMAINING',
				['spark'] = true,
			},	
			['aurabar'] = {
				['enable'] = false,
				['anchorPoint'] = 'ABOVE',
				['attachTo'] = 'FRAME',
				['playerOnly'] = {friendly = false, enemy = true},
				['useBlacklist'] = {friendly = true, enemy = true},
				['useWhitelist'] = {friendly = false, enemy = false},
				['noDuration'] = {friendly = false, enemy = false},
				['onlyDispellable'] = {friendly = false, enemy = false},
				['useFilter'] = '',
				['friendlyAuraType'] = 'HELPFUL',
				['enemyAuraType'] = 'HARMFUL'				
			},				
		},	
		['focustarget'] = {
			['enable'] = true,
			['width'] = 150,
			['height'] = 40,
			['health'] = {
				['text_format'] = '',
				['position'] = 'TOPRIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 10,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['position'] = 'LEFT',
				['text_format'] = '[namecolor][name:medium]',
			},
			['buffs'] = {
				['enable'] = true,
				['perrow'] = 6,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = {friendly = true, enemy = false},
				['noConsolidated'] = {friendly = true, enemy = false},
				['useBlacklist'] = {friendly = true, enemy = true},
				['useWhitelist'] = {friendly = false, enemy = false},
				['noDuration'] = {friendly = true, enemy = false},
				['onlyDispellable'] = {friendly = false, enemy = false},
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 6,
				['numrows'] = 1,
				['attachTo'] = 'BUFFS',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = {friendly = false, enemy = true},
				['useBlacklist'] = {friendly = true, enemy = true},
				['useWhitelist'] = {friendly = false, enemy = false},
				['noDuration'] = {friendly = false, enemy = false},
				['onlyDispellable'] = {friendly = false, enemy = false},
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
			},			
		},				
		['pet'] = {
			['enable'] = true,
			['width'] = 130,
			['height'] = 36,
			['healPrediction'] = true,
			['health'] = {
				['text_format'] = '',
				['position'] = 'TOPRIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['position'] = 'LEFT',
				['text_format'] = '[namecolor][name:medium]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 7,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = true,
				['noConsolidated'] = true,
				['useBlacklist'] = true,
				['useWhitelist'] = false,
				['noDuration'] = true,
				['onlyDispellable'] = false,
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 5,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMRIGHT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = false,
				['useBlacklist'] = true,
				['useWhitelist'] = false,
				['noDuration'] = false,
				['onlyDispellable'] = false,
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
			},	
			['buffIndicator'] = {
				['enable'] = true,
				['size'] = 8,
				['fontSize'] = 10,
				['colorIcons'] = true,
			},			
		},
		['pettarget'] = {
			['enable'] = false,
			['width'] = 130,
			['height'] = 26,
			['health'] = {
				['text_format'] = '',
				['position'] = 'RIGHT',
			},
			['power'] = {
				['enable'] = false,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'LEFT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['position'] = 'CENTER',
				['text_format'] = '[namecolor][name:medium]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 7,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = {friendly = true, enemy = false},
				['noConsolidated'] = {friendly = true, enemy = false},
				['useBlacklist'] = {friendly = true, enemy = true},
				['useWhitelist'] = {friendly = false, enemy = false},
				['noDuration'] = {friendly = true, enemy = false},
				['onlyDispellable'] = {friendly = false, enemy = false},
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 5,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMRIGHT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = {friendly = false, enemy = true},
				['useBlacklist'] = {friendly = true, enemy = true},
				['useWhitelist'] = {friendly = false, enemy = false},
				['noDuration'] = {friendly = false, enemy = false},
				['onlyDispellable'] = {friendly = false, enemy = false},
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
			},			
		},	
		['boss'] = {
			['enable'] = true,
			['growthDirection'] = 'DOWN',
			['width'] = 200,
			['height'] = 46,
			['health'] = {
				['text_format'] = '[healthcolor][health:current-percent]',
				['position'] = 'TOPRIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '[powercolor][power:current]',	
				['width'] = 'fill',
				['height'] = 15,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},
			['portrait'] = {
				['enable'] = false,
				['width'] = 35,
				['overlay'] = false,
				['camDistanceScale'] = 1,
				['style'] = '3D'
			},				
			['name'] = {
				['position'] = 'LEFT',
				['text_format'] = '[namecolor][name:medium]',
			},
			['buffs'] = {
				['enable'] = true,
				['perrow'] = 8,
				['numrows'] = 1,
				['attachTo'] = 'DEBUFFS',
				['anchorPoint'] = 'TOPRIGHT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = false,
				['noConsolidated'] = false,
				['useBlacklist'] = true,
				['useWhitelist'] = false,
				['noDuration'] = false,
				['onlyDispellable'] = false,
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
				['sizeOverride'] = 0,
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 8,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'TOPLEFT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = true,
				['useBlacklist'] = true,
				['useWhitelist'] = false,
				['noDuration'] = false,
				['onlyDispellable'] = false,
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
				['sizeOverride'] = 0,
			},	
			['castbar'] = {
				['enable'] = true,
				['width'] = 200,
				['height'] = 15,
				['icon'] = true,
				['color'] = { r = .66,g = .66,b = .66 },
				['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
				['format'] = 'REMAINING',
				['spark'] = true,
			},					
		},	
		['arena'] = {
			['enable'] = true,
			['growthDirection'] = 'UP',
			['width'] = 240,
			['height'] = 47,
			['pvpSpecIcon'] = true,
			['health'] = {
				['text_format'] = '[healthcolor][health:current-percent]',
				['position'] = 'TOPRIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '[powercolor][power:current]',	
				['width'] = 'fill',
				['height'] = 8,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},			
			['name'] = {
				['position'] = 'LEFT',
				['text_format'] = '[namecolor][name:medium]',
			},
			['buffs'] = {
				['enable'] = true,
				['perrow'] = 3,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = {friendly = false, enemy = false},
				['noConsolidated'] = {friendly = false, enemy = false},
				['useBlacklist'] = {friendly = false, enemy = false},
				['useWhitelist'] = {friendly = false, enemy = false},
				['noDuration'] = {friendly = false, enemy = false},
				['useFilter'] = 'TurtleBuffs',
				['onlyDispellable'] = {friendly = false, enemy = false},
				['sizeOverride'] = 22,
				['xOffset'] = 0,
				['yOffset'] = 12
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 2,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = {friendly = false, enemy = false},
				['useBlacklist'] = {friendly = false, enemy = false},
				['useWhitelist'] = {friendly = false, enemy = false},
				['noDuration'] = {friendly = false, enemy = false},
				['useFilter'] = 'CCDebuffs',
				['onlyDispellable'] = {friendly = false, enemy = false},
				['sizeOverride'] = 22,
				['xOffset'] = 0,
				['yOffset'] = -13,				
			},	
			['castbar'] = {
				['enable'] = true,
				['width'] = 240,
				['height'] = 15,
				['icon'] = true,
				['color'] = { r = .66,g = .66,b = .66 },
				['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
				['format'] = 'REMAINING',
				['spark'] = true,
			},	
			['pvpTrinket'] = {
				['enable'] = true,
				['position'] = 'RIGHT',
				['size'] = 46,
				['xOffset'] = 1,
				['yOffset'] = 0,
			},			
		},
		['party'] = {
			['enable'] = true,
			['visibility'] = "[@raid6,exists] hide;show",
			['point'] = 'LEFT', --Requires ReloadUI()
			['maxColumns'] = 1,
			['unitsPerColumn'] = 5,
			['columnSpacing'] = 3,
			['xOffset'] = 5,
			['yOffset'] = -3,
			['groupBy'] = 'GROUP',
			["showParty"] = true,
			["showRaid"] = true,
			["showSolo"] = false,
			["showPlayer"] = true,
			['healPrediction'] = false,
			['columnAnchorPoint'] = "TOP",
			['width'] = 73,
			['height'] = 44,
			['health'] = {
				['text_format'] = '',
				['position'] = 'BOTTOM',
				['orientation'] = 'HORIZONTAL',
				['frequentUpdates'] = false,
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 8,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},			
			['name'] = {
				['position'] = 'TOP',
				['text_format'] = '[namecolor][name:short]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 4,
				['numrows'] = 1,
				['attachTo'] = 'DEBUFFS',
				['anchorPoint'] = 'TOPRIGHT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = true,
				['noConsolidated'] = true,
				['useBlacklist'] = true,
				['useWhitelist'] = false,
				['noDuration'] = true,
				['onlyDispellable'] = false,
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
				['sizeOverride'] = 0,
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 4,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'TOPLEFT',					
				['fontSize'] = 10,
				['clickThrough'] = false,
				['playerOnly'] = false,
				['useBlacklist'] = true,
				['useWhitelist'] = false,
				['noDuration'] = false,
				['onlyDispellable'] = false,
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = 0,
				['sizeOverride'] = 0,
			},	
			['buffIndicator'] = {
				['enable'] = true,
				['size'] = 8,
				['fontSize'] = 10,
				['colorIcons'] = true,
			},
			['roleIcon'] = {
				['enable'] = true,
				['position'] = 'BOTTOMRIGHT',
			},		
			['raidRoleIcons'] = {
				['enable'] = true,
				['position'] = 'TOPLEFT',
			},					
			['petsGroup'] = {
				['enable'] = true,
				['width'] = 73,
				['height'] = 22,
				['anchorPoint'] = 'TOP',
				['xOffset'] = 0,
				['yOffset'] = 28,
			},
			['targetsGroup'] = {
				['enable'] = true,
				['width'] = 73,
				['height'] = 22,
				['anchorPoint'] = 'TOP',
				['xOffset'] = 0,
				['yOffset'] = 3,
			},				
		},
		['raid10'] = {
			['enable'] = true,
			['visibility'] = '[@raid6,noexists][@raid11,exists] hide;show',
			['point'] = 'LEFT',
			['maxColumns'] = 2,
			['unitsPerColumn'] = 5,
			['columnSpacing'] = 3,
			['xOffset'] = 5,
			['yOffset'] = -3,
			['groupBy'] = 'GROUP',
			["showParty"] = true,
			["showRaid"] = true,
			["showSolo"] = false,
			["showPlayer"] = true,
			['healPrediction'] = false,
			['columnAnchorPoint'] = "TOP",
			['width'] = 73,
			['height'] = 44,
			['health'] = {
				['text_format'] = '',
				['position'] = 'BOTTOM',
				['orientation'] = 'HORIZONTAL',
				['frequentUpdates'] = false,
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 8,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},			
			['name'] = {
				['position'] = 'TOP',
				['text_format'] = '[namecolor][name:short]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 2,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'TOPRIGHT',					
				['fontSize'] = 8,
				['clickThrough'] = false,
				['playerOnly'] = true,
				['noConsolidated'] = true,
				['useBlacklist'] = true,
				['useWhitelist'] = false,
				['noDuration'] = true,
				['onlyDispellable'] = false,
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = -33,
				['sizeOverride'] = 20,
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 2,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'TOPLEFT',					
				['fontSize'] = 8,
				['clickThrough'] = false,
				['playerOnly'] = false,
				['useBlacklist'] = true,
				['useWhitelist'] = false,
				['noDuration'] = true,
				['onlyDispellable'] = false,
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = -33,
				['sizeOverride'] = 20,
			},	
			['buffIndicator'] = {
				['enable'] = true,
				['size'] = 8,
				['fontSize'] = 10,
				['colorIcons'] = true,
			},
			['rdebuffs'] = {
				['enable'] = false,
				['fontSize'] = 10,
				['size'] = 26,
			},
			['roleIcon'] = {
				['enable'] = true,
				['position'] = 'BOTTOMRIGHT',
			},		
			['raidRoleIcons'] = {
				['enable'] = true,
				['position'] = 'TOPLEFT',
			},				
		},			
		['raid25'] = {
			['enable'] = true,
			['visibility'] = '[@raid11,noexists][@raid26,exists] hide;show',
			['point'] = 'LEFT',
			['maxColumns'] = 5,
			['unitsPerColumn'] = 5,
			['columnSpacing'] = 3,
			['xOffset'] = 5,
			['yOffset'] = -3,
			['groupBy'] = 'GROUP',
			["showParty"] = true,
			["showRaid"] = true,
			["showSolo"] = false,
			["showPlayer"] = true,
			['healPrediction'] = false,
			['columnAnchorPoint'] = "TOP",
			['width'] = 73,
			['height'] = 44,
			['health'] = {
				['text_format'] = '',
				['position'] = 'BOTTOM',
				['orientation'] = 'HORIZONTAL',
				['frequentUpdates'] = false,
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 8,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},			
			['name'] = {
				['position'] = 'TOP',
				['text_format'] = '[namecolor][name:short]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 2,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'TOPRIGHT',					
				['fontSize'] = 8,
				['clickThrough'] = false,
				['playerOnly'] = true,
				['noConsolidated'] = true,
				['useBlacklist'] = true,
				['useWhitelist'] = false,
				['noDuration'] = true,
				['onlyDispellable'] = false,
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = -33,
				['sizeOverride'] = 20,
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 2,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'TOPLEFT',					
				['fontSize'] = 8,
				['clickThrough'] = false,
				['playerOnly'] = false,
				['useBlacklist'] = true,
				['useWhitelist'] = false,
				['noDuration'] = true,
				['onlyDispellable'] = false,
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = -33,
				['sizeOverride'] = 20,
			},	
			['buffIndicator'] = {
				['enable'] = true,
				['size'] = 8,
				['fontSize'] = 10,
				['colorIcons'] = true,
			},
			['rdebuffs'] = {
				['enable'] = false,
				['fontSize'] = 10,
				['size'] = 26,
			},
			['roleIcon'] = {
				['enable'] = true,
				['position'] = 'BOTTOMRIGHT',
			},				
			['raidRoleIcons'] = {
				['enable'] = true,
				['position'] = 'TOPLEFT',
			},				
		},					
		['raid40'] = {
			['enable'] = true,
			['visibility'] = '[@raid26,noexists] hide;show',
			['point'] = 'LEFT',
			['maxColumns'] = 8,
			['unitsPerColumn'] = 5,
			['columnSpacing'] = 3,
			['xOffset'] = 5,
			['yOffset'] = -3,
			['groupBy'] = 'GROUP',
			["showParty"] = true,
			["showRaid"] = true,
			["showSolo"] = false,
			["showPlayer"] = true,
			['healPrediction'] = false,
			['columnAnchorPoint'] = "TOP",
			['width'] = 73,
			['height'] = 36,
			['health'] = {
				['text_format'] = '',
				['position'] = 'BOTTOM',
				['orientation'] = 'HORIZONTAL',
				['frequentUpdates'] = false,
			},
			['power'] = {
				['enable'] = false,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},			
			['name'] = {
				['position'] = 'TOP',
				['text_format'] = '[namecolor][name:short]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 2,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'TOPRIGHT',					
				['fontSize'] = 8,
				['clickThrough'] = false,
				['playerOnly'] = true,
				['noConsolidated'] = true,
				['useBlacklist'] = true,
				['useWhitelist'] = false,
				['noDuration'] = true,
				['onlyDispellable'] = false,
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = -33,
				['sizeOverride'] = 20,
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 2,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'TOPLEFT',					
				['fontSize'] = 8,
				['clickThrough'] = false,
				['playerOnly'] = false,
				['useBlacklist'] = true,
				['useWhitelist'] = false,
				['noDuration'] = true,
				['onlyDispellable'] = false,
				['useFilter'] = '',
				['xOffset'] = 0,
				['yOffset'] = -33,
				['sizeOverride'] = 20,
			},	
			['rdebuffs'] = {
				['enable'] = false,
				['fontSize'] = 10,
				['size'] = 22,
			},
			['roleIcon'] = {
				['enable'] = false,
				['position'] = 'BOTTOMRIGHT',
			},		
			['raidRoleIcons'] = {
				['enable'] = true,
				['position'] = 'TOPLEFT',
			},				
			['buffIndicator'] = {
				['enable'] = true,
				['size'] = 8,
				['fontSize'] = 10,
				['colorIcons'] = true,
			},		
		},	
		['tank'] = {
			['enable'] = true,
			['width'] = 120,
			['height'] = 28,
			['targetsGroup'] = {
				['enable'] = true,
				['anchorPoint'] = 'RIGHT',
				['xOffset'] = 1,
				['yOffset'] = 0,	
				['width'] = 120,
				['height'] = 28,				
			},		
		},	
		['assist'] = {
			['enable'] = true,
			['width'] = 120,
			['height'] = 28,
			['targetsGroup'] = {
				['enable'] = true,
				['anchorPoint'] = 'RIGHT',
				['xOffset'] = 1,
				['yOffset'] = 0,	
				['width'] = 120,
				['height'] = 28,					
			},				
		},					
	},
}


--Actionbar
P["actionbar"] = {
	['font'] = 'Arial Narrow',
	['fontSize'] = 13,
	['fontOutline'] = 'OUTLINE',
	
	["macrotext"] = true,
	["hotkeytext"] = true,
	["enablecd"] = true,
	['showGrid'] = true,
	["treshold"] = 3,
	["expiringcolor"] = { r = 1, g = 0, b = 0 },
	["secondscolor"] = { r = 1, g = 1, b = 0 },
	["minutescolor"] = { r = 1, g = 1, b = 1 },
	["hourscolor"] = { r = 0.4, g = 1, b = 1 },
	["dayscolor"] = { r = 0.4, g = 0.4, b = 1 },
	
	['keyDown'] = false,
	['movementModifier'] = 'SHIFT',
	
	['microbar'] = {
		['enabled'] = false,
		['mouseover'] = false,
		['buttonsPerRow'] = 12,
		['alpha'] = 1,
	},
	['bar1'] = {
		['enabled'] = true,
		['buttons'] = 12,
		['mouseover'] = false,
		['buttonsPerRow'] = 12,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = true,
		['heightMult'] = 2,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,		
		['paging'] = {
			["DRUID"] = "[bonusbar:1,nostealth] 7; [bonusbar:1,stealth] 8; [bonusbar:2] 8; [bonusbar:3] 9; [bonusbar:4] 10;",
			["PRIEST"] = "[bonusbar:1] 7;",
			["ROGUE"] = "[stance:1] 7;  [stance:2] 7; [stance:3] 7;", -- set to "[stance:1] 7; [stance:3] 10;" if you want a shadow dance bar
			["MONK"] = "[bonusbar:1] 7; [bonusbar:2] 8; [bonusbar:3] 9;"
		},
		['visibility'] = "[petbattle] hide; show",
	},
	['bar2'] = {
		['enabled'] = true,
		['mouseover'] = false,
		['buttons'] = 12,
		['buttonsPerRow'] = 12,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = false,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,		
		['paging'] = {},
		['visibility'] = "[vehicleui] hide; [overridebar] hide; [petbattle] hide; show",
	},
	['bar3'] = {
		['enabled'] = false,
		['mouseover'] = false,
		['buttons'] = 12,
		['buttonsPerRow'] = 12,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = false,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,
		['paging'] = {},
		['visibility'] = "[vehicleui] hide; [overridebar] hide; [petbattle] hide; show",
	},
	['bar4'] = {
		['enabled'] = true,
		['mouseover'] = true,
		['buttons'] = 6,
		['buttonsPerRow'] = 3,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = true,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,
		['paging'] = {},
		['visibility'] = "[vehicleui] hide; [overridebar] hide; [petbattle] hide; show",
	},
	['bar5'] = {
		['enabled'] = true,
		['mouseover'] = true,
		['buttons'] = 6,
		['buttonsPerRow'] = 3,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = true,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,
		['paging'] = {},
		['visibility'] = "[vehicleui] hide; [overridebar] hide; [petbattle] hide; show",
	},
	['barPet'] = {
		['enabled'] = true,
		['mouseover'] = false,
		['buttons'] = NUM_PET_ACTION_SLOTS,
		['buttonsPerRow'] = 1,
		['point'] = 'TOPRIGHT',
		['backdrop'] = true,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,
		['visibility'] = "[petbattle] hide;[pet,novehicleui,nooverridebar,nopossessbar] show;hide",
	},
	['stanceBar'] = {
		['enabled'] = true,
		['mouseover'] = false,
		['buttonsPerRow'] = 1,
		['buttons'] = 6,
		['point'] = 'TOPLEFT',
		['backdrop'] = false,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 28,
		["buttonspacing"] = 4,
	},
};
