require('../../CExperimentSparseBlock.lua')
require '../../CDataLoader.lua'
torch.manualSeed(1)

local exprSetting = require('./lSettings.lua')

local oDataLoader = CDataLoader.new(exprSetting)
local oExperiment = CExperimentSparseBlock.new(oDataLoader)

oExperiment:buildArch(0.7, 3)
oExperiment:roundTrip()
oExperiment:train(1000, true)

--local taProtInfo = oExperiment:getConfidenceRange()
--oExperiment:saveResult(taProtInfo)

