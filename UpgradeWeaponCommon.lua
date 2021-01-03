local contribution = {
    value = -60000 
}
local conf = {
   ["level"] = {
   -- [item_level] = {successPercent= CHANCE TO UPGRADE ITEM, downgradeLevel = ITEM GETS THIS LEVEL IF UPGRADE FAILS}
     [1] = {successPercent = 90, downgradeLevel = 0},
     [2] = {successPercent = 90, downgradeLevel = 1},
     [3] = {successPercent = 90, downgradeLevel = 2},
     [4] = {successPercent = 90, downgradeLevel = 3},
     [5] = {successPercent = 90, downgradeLevel = 4},
     [6] = {successPercent = 90, downgradeLevel = 5},
     [7] = {successPercent = 90, downgradeLevel = 6},
     [8] = {successPercent = 90, downgradeLevel = 7},
	 [9] = {successPercent = 90, downgradeLevel = 8},
	 [10] = {successPercent = 90, downgradeLevel = 9},
	 [11] = {successPercent = 90, downgradeLevel = 10},
	 [12] = {successPercent = 90, downgradeLevel = 11},
	 [13] = {successPercent = 90, downgradeLevel = 12},
	 [14] = {successPercent = 90, downgradeLevel = 13},
	 [15] = {successPercent = 90, downgradeLevel = 14},
	 [16] = {successPercent = 90, downgradeLevel = 15},
	 [17] = {successPercent = 90, downgradeLevel = 16},
	 [18] = {successPercent = 90, downgradeLevel = 17},
	 [19] = {successPercent = 90, downgradeLevel = 18},
	 [20] = {successPercent = 90, downgradeLevel = 19},
	 [21] = {successPercent = 90, downgradeLevel = 20},
	 [22] = {successPercent = 90, downgradeLevel = 21},
	 [23] = {successPercent = 90, downgradeLevel = 22},
	 [24] = {successPercent = 90, downgradeLevel = 23},
	 [25] = {successPercent = 90, downgradeLevel = 24},
	 [26] = {successPercent = 90, downgradeLevel = 25},
	 [27] = {successPercent = 90, downgradeLevel = 26},
	 [28] = {successPercent = 90, downgradeLevel = 27},
	 [29] = {successPercent = 90, downgradeLevel = 28},
	 [30] = {successPercent = 90, downgradeLevel = 29}
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
       nVal = nVal + (math.ceil((nVal/100*percent)))
     end
  return nVal > 0 and nVal or value
  end,
 
  getLevel = function (item)
  local name = Item(item):getName():split(' +')
     if (#name == 1) then
       return 0
     end
     return math.abs(name[2])
  end,
}
function onUse(player, item, fromPosition, itemEx, toPosition)
if player:getOfflineTrainingTime() >= 300000 then
   local it = ItemType(itemEx.itemid)
  if((it:getName() == 'Excalibur I' or it:getName() == 'Durandal I' or it:getName() == 'Prospero I' or it:getName() == 'Aegis I' or it:getName() == 'King Visor I' or it:getName() == 'King Plate I' or it:getName() == 'King Greaves I' or it:getName() == 'King Sabatons I') and not isItemStackable(itemEx.itemid))then
  local level = upgrading.getLevel(itemEx.uid)
  if(level < #conf["level"])then
  local nLevel = (conf["level"][(level+1)].successPercent + (player:getEffectiveSkillLevel(SKILL_FISHING)) >= math.random(1,100)) and (level+1) or conf["level"][level].downgradeLevel
  if(nLevel > level)then
  Game.sendAnimatedText('SUCCESS!', (player:getPosition()), 30)
  else
  Game.sendAnimatedText('BREAK!', (player:getPosition()), 180)
  end
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_NAME, it:getName()..((nLevel>0) and  "("..nLevel.."%)" or ""))
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ATTACK,  upgrading.upValue(it:getAttack(), nLevel, conf["upgrade"].attack))
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_DEFENSE, upgrading.upValue(it:getDefense(), nLevel, conf["upgrade"].defense))
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_EXTRADEFENSE, upgrading.upValue(it:getExtraDefense(), nLevel, conf["upgrade"].extraDefense))
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_ARMOR, upgrading.upValue(it:getArmor(), nLevel, conf["upgrade"].armor))
  doItemSetAttribute(itemEx.uid, ITEM_ATTRIBUTE_HITCHANCE, upgrading.upValue(it:getHitChance(), nLevel, conf["upgrade"].hitChance))
  doPlayerAddSkillTry(player, 6, 10)
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