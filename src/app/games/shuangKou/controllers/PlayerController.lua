local Player = import("..models.Player")
local BaseController = import(".BaseController")
local PlayerController = class("PlayerController", BaseController)

function PlayerController:ctor(seatID)
    assert(seatID and seatID > 0)
    self.player_ = Player.new()
    self.player_:setSeatID(seatID)
    self.seatID_ = seatID
    self.index_ = seatID
    self:initPlayerView_()
end

function PlayerController:initPlayerView_()
    self.view_ = app:createConcreteView("game.PlayerView", self.index_):addTo(self)
end

function PlayerController:setPokerListView(pokerList)
    self.view_:setPokerListView(pokerList)
end

function PlayerController:onEnter()
    -- local handlers = dataCenter:s2cCommandToNames {
    --     -- {COMMANDS.GOLDCHANGED, handler(self, self.onGoldChanged_)},
    -- }
    -- gailun.EventUtils.create(self, dataCenter, self, handlers)
    gailun.EventUtils.clear(self)
    local handlers = {
        {self.view_.SIT_DOWN_CLICKED, handler(self, self.onSitDownClicked_)},
        {self.view_.ON_AVATAR_CLICKED, handler(self, self.onAvatarClicked_)},
    }
    gailun.EventUtils.create(self, self.view_, self, handlers)
end

function PlayerController:warning(...)
    if not self.player_ then
        return
    end
    self.player_:warning(...)
end

function PlayerController:pass(...)
    if not self.player_ then
        return
    end
    self.player_:pass(...)
end

function PlayerController:showKing(...)
    if not self.player_ then
        return
    end
    self.player_:showKing(...)
end

function PlayerController:onExit()
    gailun.EventUtils.clear(self)
end

function PlayerController:onAvatarClicked_(event)
    if self.avatarCallback_ then
        self.avatarCallback_(event.params)
    else

    end
end

function PlayerController:setOffline(...)
    if not self.player_ then
        return
    end
    self.player_:setOffline(...)
end

function PlayerController:getShowParams()
    if not self.player_ then
        return
    end
    return self.player_:getShowParams()
end

function PlayerController:setAvatarCallback(callback)
    self.avatarCallback_ = callback
end

function PlayerController:removeChuPai(card)
    if not self.player_ then
        return
    end
    self.player_:removeCardFromChuPai_(card)
end


function PlayerController:onGoldChanged_(event)
    if not self.player_ then
        return
    end
    
    if self.player_:getNickName() ~= event.data.nickName then
        return
    end

    if self.player_:getUid() == dataCenter:getHostPlayer():getUid() then
        return
    end

    self.player_:setGold(event.data.gold)
end

function PlayerController:getLastChuPaiPos()
    if not self.view_ then
        return 0, 0
    end
    return self.view_:getLastChuPaiPos()
end

function PlayerController:onWin(cardType)
    if cardType then
        self.view_:onWinWithCtype(cardType)
    end
end

function PlayerController:onSitDownClicked_(event)
    if self.player_ and self.player_:isSitDown() then
        return
    end
    local table = display:getRunningScene():getTable()
    table:onSitDownClicked(self.seatID_)
end

function PlayerController:setPlayer_(player)
    self.player_ = player
    self.view_:bindPlayer(self.player_)
end

function PlayerController:clearPlayer_()
    self.player_ = Player.new()
    self.view_:onStandUp()
end

function PlayerController:standUp()
    if not self.player_ then
        return
    end

    self.player_:setGold(0)
    self.player_:removeCards()
    self.player_:forceStandUp()
    self:clearPlayer_()
end

function PlayerController:sitDown(data)
    assert(data and data.seatID > 0 and data.uid > 0, 'sitDown fail!')
    self:show()
    if self.player_ == nil then
        if data.uid == selfData:getUid() then
            self.player_ = display:getRunningScene():getHostPlayer()
        else
            self.player_ = Player.new()
        end
    end

    local player = self.player_

    self:setPlayer_(player)
    player:setSeatID(data.seatID)
end

function PlayerController:resumePlayer(data)
    data.isReady = data.isPrepare
    self.player_:setMulti(data)
    local statScore = data.statScore
    -- self.player_:setScore(statScore.prevScore)
    -- self.player_:setRoundScore(statScore.currScore)
    -- self.player_:setTongScore(statScore.tongScore)
    self.player_:sitDown()  -- 等待
    self.player_:setIndex(self.index_)
end

function PlayerController:sitDownByPlayer(player)
    assert(not self.player_ and player)
    self:show()
    self:setPlayer_(player)
    player:setSeatID(self.seatID_)
    self.player_:setIndex(self.index_)
    self.player_:sitDownJoin()  -- 等待下一轮
end

function PlayerController:getPlayerPosition()
    return self.view_:getPlayerPosition()
end

function PlayerController:getCardsCount()
    if not self.player_ then
        return 0
    end
    return #self.player_:getCards()
end

function PlayerController:getWaiPai()
    if not self.player_ then
        return
    end
    return self.player_:getWaiPai()
end

function PlayerController:getPlayer()
    if not self.player_ then
        return
    end
    return self.player_
end

function PlayerController:getCards()
    if not self.player_ then
        return
    end
    return self.player_:getCards()
end

function PlayerController:filterPokers(cards5)
    return self.view_:filterPokers(cards5)
end

function PlayerController:addGold(gold)
    if not self.player_ then
        return
    end
    return self.player_:addGold(gold)
end

-- flag: 0 = 重连，1 = 掉线， 2 = 网络慢, 3: ??
function PlayerController:onNetEvent_(event)
    local flag, userName = event.data.code, event.data.userName
    if not self.player_ then
        return
    end
    if self.player_:getUserName() ~= userName then
        return
    end
    if flag == NET_EVENT.RE_CONNECT then
        print('重连')
    elseif flag == NET_EVENT.OFF_LINE then
        print('掉线')
    elseif flag == NET_EVENT.SLOW then
        print('网络慢')
    end
end

function PlayerController:isEmpty()
    return (not self.player_ or self.player_:getUid() <= 0)
end

function PlayerController:isPlaying()
    if self:isEmpty() then
        return false
    end
    return self.player_:isPlaying()
end

function PlayerController:doForceRoundStart(isReConnect)
    return self:doEventForce('round_start', isReConnect)
end

function PlayerController:doRoundStart(isReConnect)
    return self:tryDoEvent_('round_start', isReConnect)
end

function PlayerController:beTurnTo(seconds)
    if not self.player_ then
        return
    end
    self.player_:beTurnTo(seconds)
end

function PlayerController:checkOutFold()
    if not self.player_ then
        return
    end
    return self.player_:checkOutData(0, 0)
end

function PlayerController:doRoundOver(...)
    if not self.player_ then
        return
    end
    self:tryDoEvent_('round_over', ...)
end

function PlayerController:onTurnEnd(...)
    if self.player_ then
        self.player_:setTurnBet(0, true)
    end
    return self:tryDoEvent_('turn_end', ...)
end

function PlayerController:doEventForce(eventName, ...)
    if not self.player_ then
        return
    end
    return self.player_:doEventForce(eventName, ...)
end

function PlayerController:tryDoEvent_(eventName, ...)
    if not self.player_ then
        return
    end
    return self.player_:tryDoEvent_(eventName, ...)
end

function PlayerController:doReady(...)
    if not self.player_ then
        return
    end
    self.player_:doReady(...)
end

function PlayerController:isReady(...)
    if not self.player_ then
        return
    end
    return self.player_:isReady(...)
end

function PlayerController:doWaitCall(...)
    if not self.player_ then
        return
    end
    self.player_:doWaitCall(...)
end

function PlayerController:doChuPai(...)
    if not self.player_ then
        return
    end
    self.player_:doChuPai(...)
end

function PlayerController:doPlayAction(data)
    if not self.player_ then
        return
    end
    if self.player_:getSeatID() ~= data.seatID then
        return
    end
    self.player_:doPlayAction(data)
end

function PlayerController:adjustMaJiang(...)
    self.view_:adjustMaJiang(...)
end

function PlayerController:adjustMaJiangWithoutMoPai(...)
    self.view_:adjustMaJiangWithoutMoPai(...)
end

-- 自己的坐位ID在对象创建后是不允许更改的，可以更改的只是player对象的值
function PlayerController:setSeatID(seatID)
    if not self.player_ then
        return
    end
    return self.player_:setSeatID(seatID)
end

function PlayerController:setCurrentBombCount(count)
    if not self.player_ then
        return
    end
    return self.player_:setCurrentBombCount(count)
end

function PlayerController:setCurrentPow(count)
    if not self.player_ then
        return
    end
    return self.player_:setCurrentPow(count)
end

function PlayerController:getCurrentPow()
    if not self.player_ then
        return
    end
    return self.player_:getCurrentPow()
end

function PlayerController:setCallBombCount(count)
    if not self.player_ then
        return
    end
    return self.player_:setCallBombCount(count)
end

function PlayerController:setIndex(index)
    self.index_ = index
    if self.player_ then
        self.player_:setIndex(index)
    else
        self.view_:onIndexChanged_({index = index})
    end
end

function PlayerController:getIndex()
    return self.index_
end

function PlayerController:getIP()
    if not self.player_ then
        return
    end
    return self.player_:getIP()
end

function PlayerController:getNickName()
    if not self.player_ then
        return
    end
    return self.player_:getNickName()
end

function PlayerController:getUid()
    if not self.player_ then
        return 0
    end
    return self.player_:getUid()
end

function PlayerController:getAvatarName()
    if not self.player_ then
        return
    end
    return self.player_:getAvatarName()
end

function PlayerController:getSex()
    if not self.player_ then
        return SEX_MALE
    end
    return self.player_:getSex()
end

function PlayerController:bet(...)
    if not self.player_ then
        return 0
    end
    return self.player_:bet(...)
end

function PlayerController:resumeCards(...)
    if not self.player_ then
        return
    end
    return self.player_:resumeCards(...)
end

function PlayerController:setTotalBet(chips)
    if not self.player_ then
        return
    end
    return self.player_:setTotalBet(chips)
end

function PlayerController:setTurnBet(chips)
    if not self.player_ then
        return
    end
    return self.player_:setTurnBet(chips)
end

function PlayerController:getLeftCards(...)
    if not self.player_ then
        return
    end
    return self.player_:getLeftCards(...)
end

function PlayerController:reduceLeftCards(...)
    if not self.player_ then
        return
    end
    return self.player_:reduceLeftCards(...)
end

function PlayerController:setGold(gold)
    if not self.player_ then
        return
    end
    return self.player_:setGold(gold)
end

function PlayerController:setScore(score)
    if not self.player_ then
        return
    end
    self.player_:setScore(score)
end

function PlayerController:setRoundScore(score)
    if not self.player_ then
        return
    end
    self.player_:setRoundScore(score)
end

function PlayerController:setGXScore(score)
    if not self.player_ then
        return
    end
    self.player_:setGXScore(score)
end

function PlayerController:setTongScore(score)
    if not self.player_ then
        return
    end
    self.player_:setTongScore(score)
end

function PlayerController:setTotalScore(totalScore)
    if not self.player_ then
        return
    end
    return self.player_:setTotalScore(totalScore)
end

function PlayerController:showRank(...)
    if not self.player_ then
        return
    end
    return self.player_:showRank(...)
end

function PlayerController:getState()
    if not self.player_ then
        return 0
    end
    return self.player_:getState()
end

function PlayerController:getChips()
    if not self.player_ then
        return 0
    end
    return self.player_:getChips()
end

function PlayerController:getSeatID()
    if not self.player_ then
        return
    end
    return self.player_:getSeatID()
end

function PlayerController:addPoker(...)
    if not self.player_ then
        return
    end
    return self.player_:addPoker(...)
end

function PlayerController:addChuPai(...)
    if not self.player_ then
        return
    end
    return self.player_:addChuPai(...)
end

function PlayerController:addWaiPai(...)
    if not self.player_ then
        return
    end
    return self.player_:addWaiPai(...)
end

function PlayerController:setLeftCards(...)
    if not self.player_ then
        return
    end
    return self.player_:setLeftCards(...)
end

function PlayerController:getLeftCards(...)
    if not self.player_ then
        return
    end
    return self.player_:getLeftCards(...)
end

function PlayerController:safeRemoveCards(...)
    if not self.player_ then
        return
    end
    return self.player_:safeRemoveCards(...)
end

function PlayerController:setLouHu(...)
    if not self.player_ then
        return
    end
    return self.player_:setLouHu(...)
end

function PlayerController:setCards(...)
    if not self.player_ then
        return
    end
    return self.player_:setCards(...)
end

function PlayerController:showCards(...)
    if not self.player_ then
        return
    end
    return self.player_:showCards(...)
end

function PlayerController:setWaiPai(...)
    if not self.player_ then
        return
    end
    return self.player_:setWaiPai(...)
end

function PlayerController:setChuPai(...)
    if not self.player_ then
        return
    end
    return self.player_:setChuPai(...)
end

function PlayerController:setDealer(...)
    if not self.player_ then
        return
    end
    return self.player_:setDealer(...)
end

function PlayerController:getDealer(...)
    if not self.player_ then
        return
    end
    return self.player_:getIsDealer(...)
end

function PlayerController:getScore()
    if not self.player_ then
        return
    end
    return self.player_:getScore()
end

function PlayerController:getRoundScore()
    if not self.player_ then
        return
    end
    return self.player_:getRoundScore()
end

function PlayerController:getTongScore()
    if not self.player_ then
        return
    end
    return self.player_:getTongScore()
end

function PlayerController:getHasTianzha()
    if not self.player_ then
        return
    end
    return self.player_:getHasTianZha()
end

function PlayerController:doFlow(...)
    if not self.player_ then
        return
    end
    return self.player_:doFlow(...)
end

function PlayerController:playerHeiSan( ... )
    if not self.player_ then
        return
    end
    return self.player_:playerHeiSan(...)
end

function PlayerController:showRoundOverPoker( ... )
    if not self.player_ then
        return
    end
    return self.player_:showRoundOverPoker(...)
end

function PlayerController:playRecordVoice( ... )
    if not self.player_ then
        return
    end
    self.player_:playRecordVoice(...)
end

function PlayerController:showWinFlg(...)
    if not self.player_ then
        return
    end
    self.player_:showWinFlg(...)
end

function PlayerController:setQiangZhuang(...)
    if not self.player_ then
        return
    end
    self.player_:setQiangZhuang(...)
end

function PlayerController:showZhaDanDeFen(...)
    if not self.player_ then
        return
    end
    self.player_:showZhaDanDeFen(...)
end

function PlayerController:playerHeiSan(...)
    if not self.player_ then
        return
    end
    self.player_:playerHeiSan(...)
end

function PlayerController:guanLong(...)
    if not self.player_ then
        return
    end
    self.player_:guanLong(...)
end

function PlayerController:showPokerBack(...)
    if not self.player_ then
        return
    end
    self.player_:showPokerBack(...)
end

function PlayerController:getWarningType()
    if not self.player_ then
        return
    end
    return self.player_:getWarningType()
end

function PlayerController:getNextPlayer()
    if not self.player_ then
        return
    end
    return self.player_:getNextPlayer()
end

return PlayerController
