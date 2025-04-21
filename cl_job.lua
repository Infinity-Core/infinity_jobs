_InfinitySource        = GetPlayerServerId(PlayerId()) -- Get ServerID player

-- add a job farmer rank 1 to the player
RegisterCommand('newjob', function(source, args)
    TriggerServerEvent("infinity_core:setJob", _InfinitySource, _InfinitySource, 'farmer', 1)
end)

-- check a job trigger
RegisterCommand('checkjob', function(source, args)
    local PlayerDatas = exports.infinity_core:GetPlayerSession(_InfinitySource)
    exports.infinity_core:notification(_InfinitySource, PlayerDatas._Job, 'Rank '..PlayerDatas._JobGrade, 'center_left', 'infinitycore', 2500)
end)

-- remove current job to unmployed
RegisterCommand('removejob', function(source, args)
    TriggerServerEvent("infinity_core:setJob", _InfinitySource, _InfinitySource, 'unmployed', 0)
end)