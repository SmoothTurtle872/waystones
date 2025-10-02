$dialog show @s {"type": "notice","title": "Waystones Settings","inputs": [\
{"key": "cooldown","type": "text","label": "Linking Compass Cooldown (Seconds)","initial": "$(cooldown)"},\
{"key": "use_time","type": "text","label": "Linking Compass Use time (Seconds)","initial": "$(use_time)"},\
{"key": "cross_dimensional_xp_requirement","type": "boolean","label": "Require Xp for Cross Dimensional Travel","initial": $(cross_dimensional_xp_requirement)},\
{"key": "same_dimensional_xp_requirement","type": "boolean","label": "Require Xp for Same Dimensional Travel","initial": $(same_dimensional_xp_requirement)},\
{"key": "xp_cost","type": "text","label": "Xp Cost","initial": "$(xp_cost)"}],\
"pause": false,"action": {"label": "Save","action": {"type": "dynamic/run_command","template": "data merge storage waystones:settings $(data)"}}}