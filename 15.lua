local contribution = {
    value = -60000 
}
local conf = {
   ["level"] = {
   -- [item_level] = {successPercent= CHANCE TO UPGRADE ITEM, downgradeLevel = ITEM GETS THIS LEVEL IF UPGRADE FAILS}
[1] = {successPercent = 100, downgradeLevel = -2},
[2] = {successPercent = 100, downgradeLevel = -1},
[3] = {successPercent = 100, downgradeLevel = 0},
[4] = {successPercent = 100, downgradeLevel = 1},
[5] = {successPercent = 100, downgradeLevel = 2},
[6] = {successPercent = 100, downgradeLevel = 3},
[7] = {successPercent = 100, downgradeLevel = 4},
[8] = {successPercent = 100, downgradeLevel = 5},
[9] = {successPercent = 100, downgradeLevel = 6},
[10] = {successPercent = 100, downgradeLevel = 7},
[11] = {successPercent = 99, downgradeLevel = 8},
[12] = {successPercent = 98, downgradeLevel = 9},
[13] = {successPercent = 97, downgradeLevel = 10},
[14] = {successPercent = 96, downgradeLevel = 11},
[15] = {successPercent = 95, downgradeLevel = 12},
[16] = {successPercent = 94, downgradeLevel = 13},
[17] = {successPercent = 93, downgradeLevel = 14},
[18] = {successPercent = 92, downgradeLevel = 15},
[19] = {successPercent = 91, downgradeLevel = 16},
[20] = {successPercent = 90, downgradeLevel = 17},
[21] = {successPercent = 89, downgradeLevel = 18},
[22] = {successPercent = 88, downgradeLevel = 19},
[23] = {successPercent = 87, downgradeLevel = 20},
[24] = {successPercent = 86, downgradeLevel = 21},
[25] = {successPercent = 85, downgradeLevel = 22},
[26] = {successPercent = 84, downgradeLevel = 23},
[27] = {successPercent = 83, downgradeLevel = 24},
[28] = {successPercent = 82, downgradeLevel = 25},
[29] = {successPercent = 81, downgradeLevel = 26},
[30] = {successPercent = 80, downgradeLevel = 27},
[31] = {successPercent = 79, downgradeLevel = 28},
[32] = {successPercent = 78, downgradeLevel = 29},
[33] = {successPercent = 77, downgradeLevel = 30},
[34] = {successPercent = 76, downgradeLevel = 31},
[35] = {successPercent = 75, downgradeLevel = 32},
[36] = {successPercent = 74, downgradeLevel = 33},
[37] = {successPercent = 73, downgradeLevel = 34},
[38] = {successPercent = 72, downgradeLevel = 35},
[39] = {successPercent = 71, downgradeLevel = 36},
[40] = {successPercent = 70, downgradeLevel = 37},
[41] = {successPercent = 69, downgradeLevel = 38},
[42] = {successPercent = 68, downgradeLevel = 39},
[43] = {successPercent = 67, downgradeLevel = 40},
[44] = {successPercent = 66, downgradeLevel = 41},
[45] = {successPercent = 65, downgradeLevel = 42},
[46] = {successPercent = 64, downgradeLevel = 43},
[47] = {successPercent = 63, downgradeLevel = 44},
[48] = {successPercent = 62, downgradeLevel = 45},
[49] = {successPercent = 61, downgradeLevel = 46},
[50] = {successPercent = 60, downgradeLevel = 47},
[51] = {successPercent = 59, downgradeLevel = 48},
[52] = {successPercent = 58, downgradeLevel = 49},
[53] = {successPercent = 57, downgradeLevel = 50},
[54] = {successPercent = 56, downgradeLevel = 51},
[55] = {successPercent = 55, downgradeLevel = 52},
[56] = {successPercent = 54, downgradeLevel = 53},
[57] = {successPercent = 53, downgradeLevel = 54},
[58] = {successPercent = 52, downgradeLevel = 55},
[59] = {successPercent = 51, downgradeLevel = 56},
[60] = {successPercent = 50, downgradeLevel = 57},
[61] = {successPercent = 49, downgradeLevel = 58},
[62] = {successPercent = 48, downgradeLevel = 59},
[63] = {successPercent = 47, downgradeLevel = 60},
[64] = {successPercent = 46, downgradeLevel = 61},
[65] = {successPercent = 45, downgradeLevel = 62},
[66] = {successPercent = 44, downgradeLevel = 63},
[67] = {successPercent = 43, downgradeLevel = 64},
[68] = {successPercent = 42, downgradeLevel = 65},
[69] = {successPercent = 41, downgradeLevel = 66},
[70] = {successPercent = 40, downgradeLevel = 67},
[71] = {successPercent = 39, downgradeLevel = 68},
[72] = {successPercent = 38, downgradeLevel = 69},
[73] = {successPercent = 37, downgradeLevel = 70},
[74] = {successPercent = 36, downgradeLevel = 71},
[75] = {successPercent = 35, downgradeLevel = 72},
[76] = {successPercent = 34, downgradeLevel = 73},
[77] = {successPercent = 33, downgradeLevel = 74},
[78] = {successPercent = 32, downgradeLevel = 75},
[79] = {successPercent = 31, downgradeLevel = 76},
[80] = {successPercent = 30, downgradeLevel = 77},
[81] = {successPercent = 29, downgradeLevel = 78},
[82] = {successPercent = 28, downgradeLevel = 79},
[83] = {successPercent = 27, downgradeLevel = 80},
[84] = {successPercent = 26, downgradeLevel = 81},
[85] = {successPercent = 25, downgradeLevel = 82},
[86] = {successPercent = 24, downgradeLevel = 83},
[87] = {successPercent = 23, downgradeLevel = 84},
[88] = {successPercent = 22, downgradeLevel = 85},
[89] = {successPercent = 21, downgradeLevel = 86},
[90] = {successPercent = 20, downgradeLevel = 87},
[91] = {successPercent = 19, downgradeLevel = 88},
[92] = {successPercent = 18, downgradeLevel = 89},
[93] = {successPercent = 17, downgradeLevel = 90},
[94] = {successPercent = 16, downgradeLevel = 91},
[95] = {successPercent = 15, downgradeLevel = 92},
[96] = {successPercent = 14, downgradeLevel = 93},
[97] = {successPercent = 13, downgradeLevel = 94},
[98] = {successPercent = 12, downgradeLevel = 95},
[99] = {successPercent = 11, downgradeLevel = 96},
[100] = {successPercent = 10, downgradeLevel = 97},
[101] = {successPercent = 9, downgradeLevel = 98},
[102] = {successPercent = 8, downgradeLevel = 99},
[103] = {successPercent = 7, downgradeLevel = 100},
[104] = {successPercent = 6, downgradeLevel = 101},
[105] = {successPercent = 5, downgradeLevel = 102},
[106] = {successPercent = 4, downgradeLevel = 103},
[107] = {successPercent = 3, downgradeLevel = 104},
[108] = {successPercent = 2, downgradeLevel = 105},
[109] = {successPercent = 1, downgradeLevel = 106},
[110] = {successPercent = 0, downgradeLevel = 107},
[111] = {successPercent = -1, downgradeLevel = 108},
[112] = {successPercent = -2, downgradeLevel = 109},
[113] = {successPercent = -3, downgradeLevel = 110},
[114] = {successPercent = -4, downgradeLevel = 111},
[115] = {successPercent = -5, downgradeLevel = 112},
[116] = {successPercent = -6, downgradeLevel = 113},
[117] = {successPercent = -7, downgradeLevel = 114},
[118] = {successPercent = -8, downgradeLevel = 115},
[119] = {successPercent = -9, downgradeLevel = 116},
[120] = {successPercent = -10, downgradeLevel = 117}
	
   },
 
   ["upgrade"] = { -- how many percent attributes are rised?
     attack = 1, -- attack %
     defense = 1, -- defense %
     extraDefense = 1, -- extra defense %
     armor = 1, -- armor %
     hitChance = 1, -- hit chance %
   }
}
 
 
 
-- // do not touch // --
-- Upgrading system by Azi [Ersiu] --
-- Edited for TFS 1.1 by Zbizu --
 
local upgrading = {
  upValue = function (value, level, percent)
  if value < 0 then return 0 end
     if level == 0 then return value end
     local nVal = value
     for i = 1, level do
       nVal = nVal + (math.ceil((value/100*percent)))
     end
  return nVal > 0 and nVal or value
  end,
 
  getLevel = function (item)
  local name = Item(item):getName():split('(%%)')
     if (#name == 1) then
       return 0
     end
     return math.abs(name[2])
  end,
}
function onUse(player, item, fromPosition, itemEx, toPosition)
if player:getOfflineTrainingTime() >= 300000 then
   local it = ItemType(itemEx.itemid)
  if((it:getWeaponType() > 0 or getItemAttribute(itemEx.uid, ITEM_ATTRIBUTE_ARMOR) > 0) and not isItemStackable(itemEx.itemid))then
  local level = upgrading.getLevel(itemEx.uid)
  if(level < #conf["level"])then
  local nLevel = (conf["level"][(level+15)].successPercent + (player:getEffectiveSkillLevel(SKILL_FISHING) / 5) >= math.random(1,100)) and (level+15) or conf["level"][level].downgradeLevel
  if(nLevel > level)then
  Game.sendAnimatedText('SUCCESS!', (player:getPosition()), 30)
  else
  Game.sendAnimatedText('BREAK!', (player:getPosition()), 180)
  end
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_NAME, it:getName()..((nLevel>0) and " (" ..nLevel.. "%)" or ""))
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ATTACK,  upgrading.upValue(it:getAttack(), nLevel, conf["upgrade"].attack))
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_DEFENSE, upgrading.upValue(it:getDefense(), nLevel, conf["upgrade"].defense))
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_EXTRADEFENSE, upgrading.upValue(it:getExtraDefense(), nLevel, conf["upgrade"].extraDefense))
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ARMOR, upgrading.upValue(it:getArmor(), nLevel, conf["upgrade"].armor))
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_HITCHANCE, upgrading.upValue(it:getHitChance(), nLevel, conf["upgrade"].hitChance))
  doPlayerAddSkillTry(player, 6, 1)
  player:addOfflineTrainingTime(contribution.value)
  doRemoveItem(item.uid, 1)
  else

   end
  else
  doPlayerSendTextMessage(player, MESSAGE_EVENT_ADVANCE, "You cannot upgrade this item.")
  end
  elseif 
  player:getOfflineTrainingTime() <= 60000 then
  player:say("Not enough requirements!", TALKTYPE_MONSTER_SAY)
end
return true
end