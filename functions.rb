class Object
	def llAbs ll_val
		return send_packet "llAbs", [ll_val]
	end
	def llAcos ll_val
		return send_packet "llAcos", [ll_val]
	end
	def llAddToLandBanList ll_avatar, ll_hours
		return send_packet "llAddToLandBanList", [ll_avatar, ll_hours]
	end
	def llAddToLandPassList ll_avatar, ll_hours
		return send_packet "llAddToLandPassList", [ll_avatar, ll_hours]
	end
	def llAdjustSoundVolume ll_volume
		return send_packet "llAdjustSoundVolume", [ll_volume]
	end
	def llAllowInventoryDrop ll_add
		return send_packet "llAllowInventoryDrop", [ll_add]
	end
	def llAngleBetween ll_a, ll_b
		return send_packet "llAngleBetween", [ll_a, ll_b]
	end
	def llApplyImpulse ll_force, ll_local
		return send_packet "llApplyImpulse", [ll_force, ll_local]
	end
	def llApplyRotationalImpulse ll_force, ll_local
		return send_packet "llApplyRotationalImpulse", [ll_force, ll_local]
	end
	def llAsin ll_val
		return send_packet "llAsin", [ll_val]
	end
	def llAtan2 ll_y, ll_x
		return send_packet "llAtan2", [ll_y, ll_x]
	end
	def llAttachToAvatar ll_attach_point
		return send_packet "llAttachToAvatar", [ll_attach_point]
	end
	def llAvatarOnLinkSitTarget ll_link
		return send_packet "llAvatarOnLinkSitTarget", [ll_link]
	end
	def llAvatarOnSitTarget 
		return send_packet "llAvatarOnSitTarget", []
	end
	def llAxes2Rot ll_fwd, ll_left, ll_up
		return send_packet "llAxes2Rot", [ll_fwd, ll_left, ll_up]
	end
	def llAxisAngle2Rot ll_axis, ll_angle
		return send_packet "llAxisAngle2Rot", [ll_axis, ll_angle]
	end
	def llBase64ToInteger ll_str
		return send_packet "llBase64ToInteger", [ll_str]
	end
	def llBase64ToString ll_str
		return send_packet "llBase64ToString", [ll_str]
	end
	def llBreakAllLinks 
		return send_packet "llBreakAllLinks", []
	end
	def llBreakLink ll_linknum
		return send_packet "llBreakLink", [ll_linknum]
	end
	def llCSV2List ll_src
		return send_packet "llCSV2List", [ll_src]
	end
	def llCastRay ll_start, ll_end, ll_options
		return send_packet "llCastRay", [ll_start, ll_end, ll_options]
	end
	def llCeil ll_val
		return send_packet "llCeil", [ll_val]
	end
	def llClearCameraParams 
		return send_packet "llClearCameraParams", []
	end
	def llClearLinkMedia ll_link, ll_face
		return send_packet "llClearLinkMedia", [ll_link, ll_face]
	end
	def llClearPrimMedia ll_face
		return send_packet "llClearPrimMedia", [ll_face]
	end
	def llCloseRemoteDataChannel ll_channel
		return send_packet "llCloseRemoteDataChannel", [ll_channel]
	end
	def llCloud ll_offset
		return send_packet "llCloud", [ll_offset]
	end
	def llCollisionFilter ll_name, ll_id, ll_accept
		return send_packet "llCollisionFilter", [ll_name, ll_id, ll_accept]
	end
	def llCollisionSound ll_impact_sound, ll_impact_volume
		return send_packet "llCollisionSound", [ll_impact_sound, ll_impact_volume]
	end
	def llCollisionSprite ll_impact_sprite
		return send_packet "llCollisionSprite", [ll_impact_sprite]
	end
	def llCos ll_theta
		return send_packet "llCos", [ll_theta]
	end
	def llCreateLink ll_target, ll_parent
		return send_packet "llCreateLink", [ll_target, ll_parent]
	end
	def llDeleteSubList ll_src, ll_start, ll_end
		return send_packet "llDeleteSubList", [ll_src, ll_start, ll_end]
	end
	def llDeleteSubString ll_src, ll_start, ll_end
		return send_packet "llDeleteSubString", [ll_src, ll_start, ll_end]
	end
	def llDetachFromAvatar 
		return send_packet "llDetachFromAvatar", []
	end
	def llDetectedGrab ll_number
		return send_packet "llDetectedGrab", [ll_number]
	end
	def llDetectedGroup ll_number
		return send_packet "llDetectedGroup", [ll_number]
	end
	def llDetectedKey ll_number
		return send_packet "llDetectedKey", [ll_number]
	end
	def llDetectedLinkNumber ll_number
		return send_packet "llDetectedLinkNumber", [ll_number]
	end
	def llDetectedName ll_item
		return send_packet "llDetectedName", [ll_item]
	end
	def llDetectedOwner ll_number
		return send_packet "llDetectedOwner", [ll_number]
	end
	def llDetectedPos ll_number
		return send_packet "llDetectedPos", [ll_number]
	end
	def llDetectedRot ll_number
		return send_packet "llDetectedRot", [ll_number]
	end
	def llDetectedTouchBinormal ll_index
		return send_packet "llDetectedTouchBinormal", [ll_index]
	end
	def llDetectedTouchFace ll_index
		return send_packet "llDetectedTouchFace", [ll_index]
	end
	def llDetectedTouchNormal ll_index
		return send_packet "llDetectedTouchNormal", [ll_index]
	end
	def llDetectedTouchPos ll_index
		return send_packet "llDetectedTouchPos", [ll_index]
	end
	def llDetectedTouchST ll_index
		return send_packet "llDetectedTouchST", [ll_index]
	end
	def llDetectedTouchUV ll_index
		return send_packet "llDetectedTouchUV", [ll_index]
	end
	def llDetectedType ll_number
		return send_packet "llDetectedType", [ll_number]
	end
	def llDetectedVel ll_number
		return send_packet "llDetectedVel", [ll_number]
	end
	def llDialog ll_avatar, ll_message, ll_buttons, ll_chat_channel
		return send_packet "llDialog", [ll_avatar, ll_message, ll_buttons, ll_chat_channel]
	end
	def llDie 
		return send_packet "llDie", []
	end
	def llDumpList2String ll_src, ll_separator
		return send_packet "llDumpList2String", [ll_src, ll_separator]
	end
	def llEdgeOfWorld ll_pos, ll_dir
		return send_packet "llEdgeOfWorld", [ll_pos, ll_dir]
	end
	def llEjectFromLand ll_avatar
		return send_packet "llEjectFromLand", [ll_avatar]
	end
	def llEmail ll_address, ll_subject, ll_message
		return send_packet "llEmail", [ll_address, ll_subject, ll_message]
	end
	def llEscapeURL ll_url
		return send_packet "llEscapeURL", [ll_url]
	end
	def llEuler2Rot ll_v
		return send_packet "llEuler2Rot", [ll_v]
	end
	def llFabs ll_val
		return send_packet "llFabs", [ll_val]
	end
	def llFloor ll_val
		return send_packet "llFloor", [ll_val]
	end
	def llForceMouselook ll_mouselook
		return send_packet "llForceMouselook", [ll_mouselook]
	end
	def llFrand ll_mag
		return send_packet "llFrand", [ll_mag]
	end
	def llGetAccel 
		return send_packet "llGetAccel", []
	end
	def llGetAgentInfo ll_id
		return send_packet "llGetAgentInfo", [ll_id]
	end
	def llGetAgentLanguage ll_avatar
		return send_packet "llGetAgentLanguage", [ll_avatar]
	end
	def llGetAgentSize ll_id
		return send_packet "llGetAgentSize", [ll_id]
	end
	def llGetAlpha ll_face
		return send_packet "llGetAlpha", [ll_face]
	end
	def llGetAndResetTime 
		return send_packet "llGetAndResetTime", []
	end
	def llGetAnimation ll_id
		return send_packet "llGetAnimation", [ll_id]
	end
	def llGetAnimationList ll_id
		return send_packet "llGetAnimationList", [ll_id]
	end
	def llGetAttached 
		return send_packet "llGetAttached", []
	end
	def llGetBoundingBox ll_object
		return send_packet "llGetBoundingBox", [ll_object]
	end
	def llGetCameraPos 
		return send_packet "llGetCameraPos", []
	end
	def llGetCameraRot 
		return send_packet "llGetCameraRot", []
	end
	def llGetCenterOfMass 
		return send_packet "llGetCenterOfMass", []
	end
	def llGetColor ll_face
		return send_packet "llGetColor", [ll_face]
	end
	def llGetCreator 
		return send_packet "llGetCreator", []
	end
	def llGetDate 
		return send_packet "llGetDate", []
	end
	def llGetDisplayName ll_id
		return send_packet "llGetDisplayName", [ll_id]
	end
	def llGetEnergy 
		return send_packet "llGetEnergy", []
	end
	def llGetEnv ll_name
		return send_packet "llGetEnv", [ll_name]
	end
	def llGetForce 
		return send_packet "llGetForce", []
	end
	def llGetFreeMemory 
		return send_packet "llGetFreeMemory", []
	end
	def llGetFreeURLs 
		return send_packet "llGetFreeURLs", []
	end
	def llGetGMTclock 
		return send_packet "llGetGMTclock", []
	end
	def llGetGeometricCenter 
		return send_packet "llGetGeometricCenter", []
	end
	def llGetHTTPHeader ll_request_id, ll_header
		return send_packet "llGetHTTPHeader", [ll_request_id, ll_header]
	end
	def llGetInventoryCreator ll_item
		return send_packet "llGetInventoryCreator", [ll_item]
	end
	def llGetInventoryKey ll_name
		return send_packet "llGetInventoryKey", [ll_name]
	end
	def llGetInventoryName ll_type, ll_number
		return send_packet "llGetInventoryName", [ll_type, ll_number]
	end
	def llGetInventoryNumber ll_type
		return send_packet "llGetInventoryNumber", [ll_type]
	end
	def llGetInventoryPermMask ll_item, ll_mask
		return send_packet "llGetInventoryPermMask", [ll_item, ll_mask]
	end
	def llGetInventoryType ll_name
		return send_packet "llGetInventoryType", [ll_name]
	end
	def llGetKey 
		return send_packet "llGetKey", []
	end
	def llGetLandOwnerAt ll_pos
		return send_packet "llGetLandOwnerAt", [ll_pos]
	end
	def llGetLinkKey ll_link_number
		return send_packet "llGetLinkKey", [ll_link_number]
	end
	def llGetLinkMedia ll_link, ll_face, ll_params
		return send_packet "llGetLinkMedia", [ll_link, ll_face, ll_params]
	end
	def llGetLinkName ll_linknum
		return send_packet "llGetLinkName", [ll_linknum]
	end
	def llGetLinkNumber 
		return send_packet "llGetLinkNumber", []
	end
	def llGetLinkNumberOfSides ll_link
		return send_packet "llGetLinkNumberOfSides", [ll_link]
	end
	def llGetLinkPrimitiveParams ll_link, ll_params
		return send_packet "llGetLinkPrimitiveParams", [ll_link, ll_params]
	end
	def llGetListEntryType ll_src, ll_index
		return send_packet "llGetListEntryType", [ll_src, ll_index]
	end
	def llGetListLength ll_src
		return send_packet "llGetListLength", [ll_src]
	end
	def llGetLocalPos 
		return send_packet "llGetLocalPos", []
	end
	def llGetLocalRot 
		return send_packet "llGetLocalRot", []
	end
	def llGetMass 
		return send_packet "llGetMass", []
	end
	def llGetMassMKS 
		return send_packet "llGetMassMKS", []
	end
	def llGetMemoryLimit 
		return send_packet "llGetMemoryLimit", []
	end
	def llGetNextEmail ll_address, ll_subject
		return send_packet "llGetNextEmail", [ll_address, ll_subject]
	end
	def llGetNotecardLine ll_name, ll_line
		return send_packet "llGetNotecardLine", [ll_name, ll_line]
	end
	def llGetNumberOfNotecardLines ll_name
		return send_packet "llGetNumberOfNotecardLines", [ll_name]
	end
	def llGetNumberOfPrims 
		return send_packet "llGetNumberOfPrims", []
	end
	def llGetNumberOfSides 
		return send_packet "llGetNumberOfSides", []
	end
	def llGetObjectDesc 
		return send_packet "llGetObjectDesc", []
	end
	def llGetObjectDetails ll_id, ll_params
		return send_packet "llGetObjectDetails", [ll_id, ll_params]
	end
	def llGetObjectMass ll_id
		return send_packet "llGetObjectMass", [ll_id]
	end
	def llGetObjectName 
		return send_packet "llGetObjectName", []
	end
	def llGetObjectPermMask ll_mask
		return send_packet "llGetObjectPermMask", [ll_mask]
	end
	def llGetObjectPrimCount ll_prim
		return send_packet "llGetObjectPrimCount", [ll_prim]
	end
	def llGetOmega 
		return send_packet "llGetOmega", []
	end
	def llGetOwner 
		return send_packet "llGetOwner", []
	end
	def llGetOwnerKey ll_id
		return send_packet "llGetOwnerKey", [ll_id]
	end
	def llGetParcelDetails ll_pos, ll_params
		return send_packet "llGetParcelDetails", [ll_pos, ll_params]
	end
	def llGetParcelFlags ll_pos
		return send_packet "llGetParcelFlags", [ll_pos]
	end
	def llGetParcelMaxPrims ll_pos, ll_sim_wide
		return send_packet "llGetParcelMaxPrims", [ll_pos, ll_sim_wide]
	end
	def llGetParcelMusicURL 
		return send_packet "llGetParcelMusicURL", []
	end
	def llGetParcelPrimCount ll_pos, ll_category, ll_sim_wide
		return send_packet "llGetParcelPrimCount", [ll_pos, ll_category, ll_sim_wide]
	end
	def llGetParcelPrimOwners ll_pos
		return send_packet "llGetParcelPrimOwners", [ll_pos]
	end
	def llGetPermissions 
		return send_packet "llGetPermissions", []
	end
	def llGetPermissionsKey 
		return send_packet "llGetPermissionsKey", []
	end
	def llGetPhysicsMaterial 
		return send_packet "llGetPhysicsMaterial", []
	end
	def llGetPos 
		return send_packet "llGetPos", []
	end
	def llGetPrimMediaParams ll_face, ll_params
		return send_packet "llGetPrimMediaParams", [ll_face, ll_params]
	end
	def llGetPrimitiveParams ll_params
		return send_packet "llGetPrimitiveParams", [ll_params]
	end
	def llGetRegionAgentCount 
		return send_packet "llGetRegionAgentCount", []
	end
	def llGetRegionCorner 
		return send_packet "llGetRegionCorner", []
	end
	def llGetRegionFPS 
		return send_packet "llGetRegionFPS", []
	end
	def llGetRegionFlags 
		return send_packet "llGetRegionFlags", []
	end
	def llGetRegionName 
		return send_packet "llGetRegionName", []
	end
	def llGetRegionTimeDilation 
		return send_packet "llGetRegionTimeDilation", []
	end
	def llGetRootPosition 
		return send_packet "llGetRootPosition", []
	end
	def llGetRootRotation 
		return send_packet "llGetRootRotation", []
	end
	def llGetRot 
		return send_packet "llGetRot", []
	end
	def llGetSPMaxMemory 
		return send_packet "llGetSPMaxMemory", []
	end
	def llGetScale 
		return send_packet "llGetScale", []
	end
	def llGetScriptName 
		return send_packet "llGetScriptName", []
	end
	def llGetScriptState ll_name
		return send_packet "llGetScriptState", [ll_name]
	end
	def llGetSimulatorHostname 
		return send_packet "llGetSimulatorHostname", []
	end
	def llGetStartParameter 
		return send_packet "llGetStartParameter", []
	end
	def llGetStatus ll_status
		return send_packet "llGetStatus", [ll_status]
	end
	def llGetSubString ll_src, ll_start, ll_end
		return send_packet "llGetSubString", [ll_src, ll_start, ll_end]
	end
	def llGetSunDirection 
		return send_packet "llGetSunDirection", []
	end
	def llGetTexture ll_face
		return send_packet "llGetTexture", [ll_face]
	end
	def llGetTextureOffset ll_face
		return send_packet "llGetTextureOffset", [ll_face]
	end
	def llGetTextureRot ll_side
		return send_packet "llGetTextureRot", [ll_side]
	end
	def llGetTextureScale ll_side
		return send_packet "llGetTextureScale", [ll_side]
	end
	def llGetTime 
		return send_packet "llGetTime", []
	end
	def llGetTimeOfDay 
		return send_packet "llGetTimeOfDay", []
	end
	def llGetTimestamp 
		return send_packet "llGetTimestamp", []
	end
	def llGetTorque 
		return send_packet "llGetTorque", []
	end
	def llGetUnixTime 
		return send_packet "llGetUnixTime", []
	end
	def llGetUsedMemory 
		return send_packet "llGetUsedMemory", []
	end
	def llGetUsername ll_id
		return send_packet "llGetUsername", [ll_id]
	end
	def llGetVel 
		return send_packet "llGetVel", []
	end
	def llGetWallclock 
		return send_packet "llGetWallclock", []
	end
	def llGiveInventory ll_destination, ll_inventory
		return send_packet "llGiveInventory", [ll_destination, ll_inventory]
	end
	def llGiveInventoryList ll_target, ll_folder, ll_inventory
		return send_packet "llGiveInventoryList", [ll_target, ll_folder, ll_inventory]
	end
	def llGiveMoney ll_destination, ll_amount
		return send_packet "llGiveMoney", [ll_destination, ll_amount]
	end
	def llGodLikeRezObject ll_inventory, ll_pos
		return send_packet "llGodLikeRezObject", [ll_inventory, ll_pos]
	end
	def llGround ll_offset
		return send_packet "llGround", [ll_offset]
	end
	def llGroundContour ll_offset
		return send_packet "llGroundContour", [ll_offset]
	end
	def llGroundNormal ll_offset
		return send_packet "llGroundNormal", [ll_offset]
	end
	def llGroundRepel ll_height, ll_water, ll_tau
		return send_packet "llGroundRepel", [ll_height, ll_water, ll_tau]
	end
	def llGroundSlope ll_offset
		return send_packet "llGroundSlope", [ll_offset]
	end
	def llHTTPRequest ll_url, ll_parameters, ll_body
		return send_packet "llHTTPRequest", [ll_url, ll_parameters, ll_body]
	end
	def llHTTPResponse ll_request_id, ll_status, ll_body
		return send_packet "llHTTPResponse", [ll_request_id, ll_status, ll_body]
	end
	def llInsertString ll_dst, ll_pos, ll_src
		return send_packet "llInsertString", [ll_dst, ll_pos, ll_src]
	end
	def llInstantMessage ll_user, ll_message
		return send_packet "llInstantMessage", [ll_user, ll_message]
	end
	def llIntegerToBase64 ll_number
		return send_packet "llIntegerToBase64", [ll_number]
	end
	def llKey2Name ll_id
		return send_packet "llKey2Name", [ll_id]
	end
	def llLinkParticleSystem ll_link, ll_rules
		return send_packet "llLinkParticleSystem", [ll_link, ll_rules]
	end
	def llLinkSitTarget ll_link, ll_offset, ll_rot
		return send_packet "llLinkSitTarget", [ll_link, ll_offset, ll_rot]
	end
	def llList2CSV ll_src
		return send_packet "llList2CSV", [ll_src]
	end
	def llList2Float ll_src, ll_index
		return send_packet "llList2Float", [ll_src, ll_index]
	end
	def llList2Integer ll_src, ll_index
		return send_packet "llList2Integer", [ll_src, ll_index]
	end
	def llList2Key ll_src, ll_index
		return send_packet "llList2Key", [ll_src, ll_index]
	end
	def llList2List ll_src, ll_start, ll_end
		return send_packet "llList2List", [ll_src, ll_start, ll_end]
	end
	def llList2ListStrided ll_src, ll_start, ll_end, ll_stride
		return send_packet "llList2ListStrided", [ll_src, ll_start, ll_end, ll_stride]
	end
	def llList2Rot ll_src, ll_index
		return send_packet "llList2Rot", [ll_src, ll_index]
	end
	def llList2String ll_src, ll_index
		return send_packet "llList2String", [ll_src, ll_index]
	end
	def llList2Vector ll_src, ll_index
		return send_packet "llList2Vector", [ll_src, ll_index]
	end
	def llListFindList ll_src, ll_test
		return send_packet "llListFindList", [ll_src, ll_test]
	end
	def llListInsertList ll_dest, ll_src, ll_start
		return send_packet "llListInsertList", [ll_dest, ll_src, ll_start]
	end
	def llListRandomize ll_src, ll_stride
		return send_packet "llListRandomize", [ll_src, ll_stride]
	end
	def llListReplaceList ll_dest, ll_src, ll_start, ll_end
		return send_packet "llListReplaceList", [ll_dest, ll_src, ll_start, ll_end]
	end
	def llListSort ll_src, ll_stride, ll_ascending
		return send_packet "llListSort", [ll_src, ll_stride, ll_ascending]
	end
	def llListStatistics ll_operation, ll_src
		return send_packet "llListStatistics", [ll_operation, ll_src]
	end
	def llListen ll_channel, ll_name, ll_id, ll_msg
		return send_packet "llListen", [ll_channel, ll_name, ll_id, ll_msg]
	end
	def llListenControl ll_number, ll_active
		return send_packet "llListenControl", [ll_number, ll_active]
	end
	def llListenRemove ll_number
		return send_packet "llListenRemove", [ll_number]
	end
	def llLoadURL ll_avatar, ll_message, ll_url
		return send_packet "llLoadURL", [ll_avatar, ll_message, ll_url]
	end
	def llLog ll_val
		return send_packet "llLog", [ll_val]
	end
	def llLog10 ll_val
		return send_packet "llLog10", [ll_val]
	end
	def llLookAt ll_target, ll_strength, ll_damping
		return send_packet "llLookAt", [ll_target, ll_strength, ll_damping]
	end
	def llLoopSound ll_sound, ll_volume
		return send_packet "llLoopSound", [ll_sound, ll_volume]
	end
	def llLoopSoundMaster ll_sound, ll_volume
		return send_packet "llLoopSoundMaster", [ll_sound, ll_volume]
	end
	def llLoopSoundSlave ll_sound, ll_volume
		return send_packet "llLoopSoundSlave", [ll_sound, ll_volume]
	end
	def llMD5String ll_src, ll_nonce
		return send_packet "llMD5String", [ll_src, ll_nonce]
	end
	def llMakeExplosion ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_texture, ll_offset
		return send_packet "llMakeExplosion", [ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_texture, ll_offset]
	end
	def llMakeFire ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_texture, ll_offset
		return send_packet "llMakeFire", [ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_texture, ll_offset]
	end
	def llMakeFountain ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_bounce, ll_texture, ll_offset, ll_bounce_offset
		return send_packet "llMakeFountain", [ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_bounce, ll_texture, ll_offset, ll_bounce_offset]
	end
	def llMakeSmoke ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_texture, ll_offset
		return send_packet "llMakeSmoke", [ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_texture, ll_offset]
	end
	def llManageEstateAccess ll_action, ll_avatar
		return send_packet "llManageEstateAccess", [ll_action, ll_avatar]
	end
	def llMapDestination ll_simname, ll_pos, ll_look_at
		return send_packet "llMapDestination", [ll_simname, ll_pos, ll_look_at]
	end
	def llMessageLinked ll_linknum, ll_num, ll_str, ll_id
		return send_packet "llMessageLinked", [ll_linknum, ll_num, ll_str, ll_id]
	end
	def llMinEventDelay ll_delay
		return send_packet "llMinEventDelay", [ll_delay]
	end
	def llModPow ll_a, ll_b, ll_c
		return send_packet "llModPow", [ll_a, ll_b, ll_c]
	end
	def llModifyLand ll_action, ll_brush
		return send_packet "llModifyLand", [ll_action, ll_brush]
	end
	def llMoveToTarget ll_target, ll_tau
		return send_packet "llMoveToTarget", [ll_target, ll_tau]
	end
	def llOffsetTexture ll_u, ll_v, ll_face
		return send_packet "llOffsetTexture", [ll_u, ll_v, ll_face]
	end
	def llOpenRemoteDataChannel 
		return send_packet "llOpenRemoteDataChannel", []
	end
	def llOverMyLand ll_id
		return send_packet "llOverMyLand", [ll_id]
	end
	def llOwnerSay ll_msg
		return send_packet "llOwnerSay", [ll_msg]
	end
	def llParcelMediaCommandList ll_commandList
		return send_packet "llParcelMediaCommandList", [ll_commandList]
	end
	def llParcelMediaQuery ll_query
		return send_packet "llParcelMediaQuery", [ll_query]
	end
	def llParseString2List ll_src, ll_separators, ll_spacers
		return send_packet "llParseString2List", [ll_src, ll_separators, ll_spacers]
	end
	def llParseStringKeepNulls ll_src, ll_separators, ll_spacers
		return send_packet "llParseStringKeepNulls", [ll_src, ll_separators, ll_spacers]
	end
	def llParticleSystem ll_rules
		return send_packet "llParticleSystem", [ll_rules]
	end
	def llPassCollisions ll_pass
		return send_packet "llPassCollisions", [ll_pass]
	end
	def llPassTouches ll_pass
		return send_packet "llPassTouches", [ll_pass]
	end
	def llPlaySound ll_sound, ll_volume
		return send_packet "llPlaySound", [ll_sound, ll_volume]
	end
	def llPlaySoundSlave ll_sound, ll_volume
		return send_packet "llPlaySoundSlave", [ll_sound, ll_volume]
	end
	def llPointAt ll_pos
		return send_packet "llPointAt", [ll_pos]
	end
	def llPow ll_base, ll_exponent
		return send_packet "llPow", [ll_base, ll_exponent]
	end
	def llPreloadSound ll_sound
		return send_packet "llPreloadSound", [ll_sound]
	end
	def llPushObject ll_target, ll_impulse, ll_ang_impulse, ll_local
		return send_packet "llPushObject", [ll_target, ll_impulse, ll_ang_impulse, ll_local]
	end
	def llRefreshPrimURL 
		return send_packet "llRefreshPrimURL", []
	end
	def llRegionSay ll_channel, ll_msg
		return send_packet "llRegionSay", [ll_channel, ll_msg]
	end
	def llRegionSayTo ll_target, ll_channel, ll_msg
		return send_packet "llRegionSayTo", [ll_target, ll_channel, ll_msg]
	end
	def llReleaseCamera ll_avatar
		return send_packet "llReleaseCamera", [ll_avatar]
	end
	def llReleaseControls 
		return send_packet "llReleaseControls", []
	end
	def llReleaseURL ll_url
		return send_packet "llReleaseURL", [ll_url]
	end
	def llRemoteDataReply ll_channel, ll_message_id, ll_sdata, ll_idata
		return send_packet "llRemoteDataReply", [ll_channel, ll_message_id, ll_sdata, ll_idata]
	end
	def llRemoteDataSetRegion 
		return send_packet "llRemoteDataSetRegion", []
	end
	def llRemoteLoadScript ll_target, ll_name, ll_running, ll_start_param
		return send_packet "llRemoteLoadScript", [ll_target, ll_name, ll_running, ll_start_param]
	end
	def llRemoteLoadScriptPin ll_target, ll_name, ll_pin, ll_running, ll_start_param
		return send_packet "llRemoteLoadScriptPin", [ll_target, ll_name, ll_pin, ll_running, ll_start_param]
	end
	def llRemoveFromLandBanList ll_avatar
		return send_packet "llRemoveFromLandBanList", [ll_avatar]
	end
	def llRemoveFromLandPassList ll_avatar
		return send_packet "llRemoveFromLandPassList", [ll_avatar]
	end
	def llRemoveInventory ll_item
		return send_packet "llRemoveInventory", [ll_item]
	end
	def llRemoveVehicleFlags ll_flags
		return send_packet "llRemoveVehicleFlags", [ll_flags]
	end
	def llRequestAgentData ll_id, ll_data
		return send_packet "llRequestAgentData", [ll_id, ll_data]
	end
	def llRequestDisplayName ll_id
		return send_packet "llRequestDisplayName", [ll_id]
	end
	def llRequestInventoryData ll_name
		return send_packet "llRequestInventoryData", [ll_name]
	end
	def llRequestPermissions ll_agent, ll_perm
		return send_packet "llRequestPermissions", [ll_agent, ll_perm]
	end
	def llRequestSecureURL 
		return send_packet "llRequestSecureURL", []
	end
	def llRequestSimulatorData ll_region, ll_data
		return send_packet "llRequestSimulatorData", [ll_region, ll_data]
	end
	def llRequestURL 
		return send_packet "llRequestURL", []
	end
	def llRequestUsername ll_id
		return send_packet "llRequestUsername", [ll_id]
	end
	def llResetLandBanList 
		return send_packet "llResetLandBanList", []
	end
	def llResetLandPassList 
		return send_packet "llResetLandPassList", []
	end
	def llResetOtherScript ll_name
		return send_packet "llResetOtherScript", [ll_name]
	end
	def llResetScript 
		return send_packet "llResetScript", []
	end
	def llResetTime 
		return send_packet "llResetTime", []
	end
	def llRezAtRoot ll_inventory, ll_position, ll_velocity, ll_rot, ll_param
		return send_packet "llRezAtRoot", [ll_inventory, ll_position, ll_velocity, ll_rot, ll_param]
	end
	def llRezObject ll_inventory, ll_pos, ll_vel, ll_rot, ll_param
		return send_packet "llRezObject", [ll_inventory, ll_pos, ll_vel, ll_rot, ll_param]
	end
	def llRot2Angle ll_rot
		return send_packet "llRot2Angle", [ll_rot]
	end
	def llRot2Axis ll_rot
		return send_packet "llRot2Axis", [ll_rot]
	end
	def llRot2Euler ll_quat
		return send_packet "llRot2Euler", [ll_quat]
	end
	def llRot2Fwd ll_q
		return send_packet "llRot2Fwd", [ll_q]
	end
	def llRot2Left ll_q
		return send_packet "llRot2Left", [ll_q]
	end
	def llRot2Up ll_q
		return send_packet "llRot2Up", [ll_q]
	end
	def llRotBetween ll_start, ll_end
		return send_packet "llRotBetween", [ll_start, ll_end]
	end
	def llRotLookAt ll_target, ll_strength, ll_damping
		return send_packet "llRotLookAt", [ll_target, ll_strength, ll_damping]
	end
	def llRotTarget ll_rot, ll_error
		return send_packet "llRotTarget", [ll_rot, ll_error]
	end
	def llRotTargetRemove ll_number
		return send_packet "llRotTargetRemove", [ll_number]
	end
	def llRotateTexture ll_angle, ll_face
		return send_packet "llRotateTexture", [ll_angle, ll_face]
	end
	def llRound ll_val
		return send_packet "llRound", [ll_val]
	end
	def llSHA1String ll_src
		return send_packet "llSHA1String", [ll_src]
	end
	def llSameGroup ll_agent
		return send_packet "llSameGroup", [ll_agent]
	end
	def llSay ll_channel, ll_msg
		return send_packet "llSay", [ll_channel, ll_msg]
	end
	def llScaleTexture ll_u, ll_v, ll_face
		return send_packet "llScaleTexture", [ll_u, ll_v, ll_face]
	end
	def llScriptDanger ll_pos
		return send_packet "llScriptDanger", [ll_pos]
	end
	def llScriptProfiler ll_flags
		return send_packet "llScriptProfiler", [ll_flags]
	end
	def llSendRemoteData ll_channel, ll_dest, ll_idata, ll_sdata
		return send_packet "llSendRemoteData", [ll_channel, ll_dest, ll_idata, ll_sdata]
	end
	def llSensor ll_name, ll_id, ll_type, ll_range, ll_arc
		return send_packet "llSensor", [ll_name, ll_id, ll_type, ll_range, ll_arc]
	end
	def llSensorRemove 
		return send_packet "llSensorRemove", []
	end
	def llSensorRepeat ll_name, ll_id, ll_type, ll_range, ll_arc, ll_rate
		return send_packet "llSensorRepeat", [ll_name, ll_id, ll_type, ll_range, ll_arc, ll_rate]
	end
	def llSetAlpha ll_alpha, ll_face
		return send_packet "llSetAlpha", [ll_alpha, ll_face]
	end
	def llSetAngularVelocity ll_force, ll_local
		return send_packet "llSetAngularVelocity", [ll_force, ll_local]
	end
	def llSetBuoyancy ll_buoyancy
		return send_packet "llSetBuoyancy", [ll_buoyancy]
	end
	def llSetCameraAtOffset ll_offset
		return send_packet "llSetCameraAtOffset", [ll_offset]
	end
	def llSetCameraEyeOffset ll_offset
		return send_packet "llSetCameraEyeOffset", [ll_offset]
	end
	def llSetCameraParams ll_rules
		return send_packet "llSetCameraParams", [ll_rules]
	end
	def llSetClickAction ll_action
		return send_packet "llSetClickAction", [ll_action]
	end
	def llSetColor ll_color, ll_face
		return send_packet "llSetColor", [ll_color, ll_face]
	end
	def llSetContentType ll_request_id, ll_content_type
		return send_packet "llSetContentType", [ll_request_id, ll_content_type]
	end
	def llSetDamage ll_damage
		return send_packet "llSetDamage", [ll_damage]
	end
end
def llAbs ll_val
	return $objects[0].llAbs ll_val
end
def llAcos ll_val
	return $objects[0].llAcos ll_val
end
def llAddToLandBanList ll_avatar, ll_hours
	return $objects[0].llAddToLandBanList ll_avatar, ll_hours
end
def llAddToLandPassList ll_avatar, ll_hours
	return $objects[0].llAddToLandPassList ll_avatar, ll_hours
end
def llAdjustSoundVolume ll_volume
	return $objects[0].llAdjustSoundVolume ll_volume
end
def llAllowInventoryDrop ll_add
	return $objects[0].llAllowInventoryDrop ll_add
end
def llAngleBetween ll_a, ll_b
	return $objects[0].llAngleBetween ll_a, ll_b
end
def llApplyImpulse ll_force, ll_local
	return $objects[0].llApplyImpulse ll_force, ll_local
end
def llApplyRotationalImpulse ll_force, ll_local
	return $objects[0].llApplyRotationalImpulse ll_force, ll_local
end
def llAsin ll_val
	return $objects[0].llAsin ll_val
end
def llAtan2 ll_y, ll_x
	return $objects[0].llAtan2 ll_y, ll_x
end
def llAttachToAvatar ll_attach_point
	return $objects[0].llAttachToAvatar ll_attach_point
end
def llAvatarOnLinkSitTarget ll_link
	return $objects[0].llAvatarOnLinkSitTarget ll_link
end
def llAvatarOnSitTarget 
	return $objects[0].llAvatarOnSitTarget 
end
def llAxes2Rot ll_fwd, ll_left, ll_up
	return $objects[0].llAxes2Rot ll_fwd, ll_left, ll_up
end
def llAxisAngle2Rot ll_axis, ll_angle
	return $objects[0].llAxisAngle2Rot ll_axis, ll_angle
end
def llBase64ToInteger ll_str
	return $objects[0].llBase64ToInteger ll_str
end
def llBase64ToString ll_str
	return $objects[0].llBase64ToString ll_str
end
def llBreakAllLinks 
	return $objects[0].llBreakAllLinks 
end
def llBreakLink ll_linknum
	return $objects[0].llBreakLink ll_linknum
end
def llCSV2List ll_src
	return $objects[0].llCSV2List ll_src
end
def llCastRay ll_start, ll_end, ll_options
	return $objects[0].llCastRay ll_start, ll_end, ll_options
end
def llCeil ll_val
	return $objects[0].llCeil ll_val
end
def llClearCameraParams 
	return $objects[0].llClearCameraParams 
end
def llClearLinkMedia ll_link, ll_face
	return $objects[0].llClearLinkMedia ll_link, ll_face
end
def llClearPrimMedia ll_face
	return $objects[0].llClearPrimMedia ll_face
end
def llCloseRemoteDataChannel ll_channel
	return $objects[0].llCloseRemoteDataChannel ll_channel
end
def llCloud ll_offset
	return $objects[0].llCloud ll_offset
end
def llCollisionFilter ll_name, ll_id, ll_accept
	return $objects[0].llCollisionFilter ll_name, ll_id, ll_accept
end
def llCollisionSound ll_impact_sound, ll_impact_volume
	return $objects[0].llCollisionSound ll_impact_sound, ll_impact_volume
end
def llCollisionSprite ll_impact_sprite
	return $objects[0].llCollisionSprite ll_impact_sprite
end
def llCos ll_theta
	return $objects[0].llCos ll_theta
end
def llCreateLink ll_target, ll_parent
	return $objects[0].llCreateLink ll_target, ll_parent
end
def llDeleteSubList ll_src, ll_start, ll_end
	return $objects[0].llDeleteSubList ll_src, ll_start, ll_end
end
def llDeleteSubString ll_src, ll_start, ll_end
	return $objects[0].llDeleteSubString ll_src, ll_start, ll_end
end
def llDetachFromAvatar 
	return $objects[0].llDetachFromAvatar 
end
def llDetectedGrab ll_number
	return $objects[0].llDetectedGrab ll_number
end
def llDetectedGroup ll_number
	return $objects[0].llDetectedGroup ll_number
end
def llDetectedKey ll_number
	return $objects[0].llDetectedKey ll_number
end
def llDetectedLinkNumber ll_number
	return $objects[0].llDetectedLinkNumber ll_number
end
def llDetectedName ll_item
	return $objects[0].llDetectedName ll_item
end
def llDetectedOwner ll_number
	return $objects[0].llDetectedOwner ll_number
end
def llDetectedPos ll_number
	return $objects[0].llDetectedPos ll_number
end
def llDetectedRot ll_number
	return $objects[0].llDetectedRot ll_number
end
def llDetectedTouchBinormal ll_index
	return $objects[0].llDetectedTouchBinormal ll_index
end
def llDetectedTouchFace ll_index
	return $objects[0].llDetectedTouchFace ll_index
end
def llDetectedTouchNormal ll_index
	return $objects[0].llDetectedTouchNormal ll_index
end
def llDetectedTouchPos ll_index
	return $objects[0].llDetectedTouchPos ll_index
end
def llDetectedTouchST ll_index
	return $objects[0].llDetectedTouchST ll_index
end
def llDetectedTouchUV ll_index
	return $objects[0].llDetectedTouchUV ll_index
end
def llDetectedType ll_number
	return $objects[0].llDetectedType ll_number
end
def llDetectedVel ll_number
	return $objects[0].llDetectedVel ll_number
end
def llDialog ll_avatar, ll_message, ll_buttons, ll_chat_channel
	return $objects[0].llDialog ll_avatar, ll_message, ll_buttons, ll_chat_channel
end
def llDie 
	return $objects[0].llDie 
end
def llDumpList2String ll_src, ll_separator
	return $objects[0].llDumpList2String ll_src, ll_separator
end
def llEdgeOfWorld ll_pos, ll_dir
	return $objects[0].llEdgeOfWorld ll_pos, ll_dir
end
def llEjectFromLand ll_avatar
	return $objects[0].llEjectFromLand ll_avatar
end
def llEmail ll_address, ll_subject, ll_message
	return $objects[0].llEmail ll_address, ll_subject, ll_message
end
def llEscapeURL ll_url
	return $objects[0].llEscapeURL ll_url
end
def llEuler2Rot ll_v
	return $objects[0].llEuler2Rot ll_v
end
def llFabs ll_val
	return $objects[0].llFabs ll_val
end
def llFloor ll_val
	return $objects[0].llFloor ll_val
end
def llForceMouselook ll_mouselook
	return $objects[0].llForceMouselook ll_mouselook
end
def llFrand ll_mag
	return $objects[0].llFrand ll_mag
end
def llGetAccel 
	return $objects[0].llGetAccel 
end
def llGetAgentInfo ll_id
	return $objects[0].llGetAgentInfo ll_id
end
def llGetAgentLanguage ll_avatar
	return $objects[0].llGetAgentLanguage ll_avatar
end
def llGetAgentSize ll_id
	return $objects[0].llGetAgentSize ll_id
end
def llGetAlpha ll_face
	return $objects[0].llGetAlpha ll_face
end
def llGetAndResetTime 
	return $objects[0].llGetAndResetTime 
end
def llGetAnimation ll_id
	return $objects[0].llGetAnimation ll_id
end
def llGetAnimationList ll_id
	return $objects[0].llGetAnimationList ll_id
end
def llGetAttached 
	return $objects[0].llGetAttached 
end
def llGetBoundingBox ll_object
	return $objects[0].llGetBoundingBox ll_object
end
def llGetCameraPos 
	return $objects[0].llGetCameraPos 
end
def llGetCameraRot 
	return $objects[0].llGetCameraRot 
end
def llGetCenterOfMass 
	return $objects[0].llGetCenterOfMass 
end
def llGetColor ll_face
	return $objects[0].llGetColor ll_face
end
def llGetCreator 
	return $objects[0].llGetCreator 
end
def llGetDate 
	return $objects[0].llGetDate 
end
def llGetDisplayName ll_id
	return $objects[0].llGetDisplayName ll_id
end
def llGetEnergy 
	return $objects[0].llGetEnergy 
end
def llGetEnv ll_name
	return $objects[0].llGetEnv ll_name
end
def llGetForce 
	return $objects[0].llGetForce 
end
def llGetFreeMemory 
	return $objects[0].llGetFreeMemory 
end
def llGetFreeURLs 
	return $objects[0].llGetFreeURLs 
end
def llGetGMTclock 
	return $objects[0].llGetGMTclock 
end
def llGetGeometricCenter 
	return $objects[0].llGetGeometricCenter 
end
def llGetHTTPHeader ll_request_id, ll_header
	return $objects[0].llGetHTTPHeader ll_request_id, ll_header
end
def llGetInventoryCreator ll_item
	return $objects[0].llGetInventoryCreator ll_item
end
def llGetInventoryKey ll_name
	return $objects[0].llGetInventoryKey ll_name
end
def llGetInventoryName ll_type, ll_number
	return $objects[0].llGetInventoryName ll_type, ll_number
end
def llGetInventoryNumber ll_type
	return $objects[0].llGetInventoryNumber ll_type
end
def llGetInventoryPermMask ll_item, ll_mask
	return $objects[0].llGetInventoryPermMask ll_item, ll_mask
end
def llGetInventoryType ll_name
	return $objects[0].llGetInventoryType ll_name
end
def llGetKey 
	return $objects[0].llGetKey 
end
def llGetLandOwnerAt ll_pos
	return $objects[0].llGetLandOwnerAt ll_pos
end
def llGetLinkKey ll_link_number
	return $objects[0].llGetLinkKey ll_link_number
end
def llGetLinkMedia ll_link, ll_face, ll_params
	return $objects[0].llGetLinkMedia ll_link, ll_face, ll_params
end
def llGetLinkName ll_linknum
	return $objects[0].llGetLinkName ll_linknum
end
def llGetLinkNumber 
	return $objects[0].llGetLinkNumber 
end
def llGetLinkNumberOfSides ll_link
	return $objects[0].llGetLinkNumberOfSides ll_link
end
def llGetLinkPrimitiveParams ll_link, ll_params
	return $objects[0].llGetLinkPrimitiveParams ll_link, ll_params
end
def llGetListEntryType ll_src, ll_index
	return $objects[0].llGetListEntryType ll_src, ll_index
end
def llGetListLength ll_src
	return $objects[0].llGetListLength ll_src
end
def llGetLocalPos 
	return $objects[0].llGetLocalPos 
end
def llGetLocalRot 
	return $objects[0].llGetLocalRot 
end
def llGetMass 
	return $objects[0].llGetMass 
end
def llGetMassMKS 
	return $objects[0].llGetMassMKS 
end
def llGetMemoryLimit 
	return $objects[0].llGetMemoryLimit 
end
def llGetNextEmail ll_address, ll_subject
	return $objects[0].llGetNextEmail ll_address, ll_subject
end
def llGetNotecardLine ll_name, ll_line
	return $objects[0].llGetNotecardLine ll_name, ll_line
end
def llGetNumberOfNotecardLines ll_name
	return $objects[0].llGetNumberOfNotecardLines ll_name
end
def llGetNumberOfPrims 
	return $objects[0].llGetNumberOfPrims 
end
def llGetNumberOfSides 
	return $objects[0].llGetNumberOfSides 
end
def llGetObjectDesc 
	return $objects[0].llGetObjectDesc 
end
def llGetObjectDetails ll_id, ll_params
	return $objects[0].llGetObjectDetails ll_id, ll_params
end
def llGetObjectMass ll_id
	return $objects[0].llGetObjectMass ll_id
end
def llGetObjectName 
	return $objects[0].llGetObjectName 
end
def llGetObjectPermMask ll_mask
	return $objects[0].llGetObjectPermMask ll_mask
end
def llGetObjectPrimCount ll_prim
	return $objects[0].llGetObjectPrimCount ll_prim
end
def llGetOmega 
	return $objects[0].llGetOmega 
end
def llGetOwner 
	return $objects[0].llGetOwner 
end
def llGetOwnerKey ll_id
	return $objects[0].llGetOwnerKey ll_id
end
def llGetParcelDetails ll_pos, ll_params
	return $objects[0].llGetParcelDetails ll_pos, ll_params
end
def llGetParcelFlags ll_pos
	return $objects[0].llGetParcelFlags ll_pos
end
def llGetParcelMaxPrims ll_pos, ll_sim_wide
	return $objects[0].llGetParcelMaxPrims ll_pos, ll_sim_wide
end
def llGetParcelMusicURL 
	return $objects[0].llGetParcelMusicURL 
end
def llGetParcelPrimCount ll_pos, ll_category, ll_sim_wide
	return $objects[0].llGetParcelPrimCount ll_pos, ll_category, ll_sim_wide
end
def llGetParcelPrimOwners ll_pos
	return $objects[0].llGetParcelPrimOwners ll_pos
end
def llGetPermissions 
	return $objects[0].llGetPermissions 
end
def llGetPermissionsKey 
	return $objects[0].llGetPermissionsKey 
end
def llGetPhysicsMaterial 
	return $objects[0].llGetPhysicsMaterial 
end
def llGetPos 
	return $objects[0].llGetPos 
end
def llGetPrimMediaParams ll_face, ll_params
	return $objects[0].llGetPrimMediaParams ll_face, ll_params
end
def llGetPrimitiveParams ll_params
	return $objects[0].llGetPrimitiveParams ll_params
end
def llGetRegionAgentCount 
	return $objects[0].llGetRegionAgentCount 
end
def llGetRegionCorner 
	return $objects[0].llGetRegionCorner 
end
def llGetRegionFPS 
	return $objects[0].llGetRegionFPS 
end
def llGetRegionFlags 
	return $objects[0].llGetRegionFlags 
end
def llGetRegionName 
	return $objects[0].llGetRegionName 
end
def llGetRegionTimeDilation 
	return $objects[0].llGetRegionTimeDilation 
end
def llGetRootPosition 
	return $objects[0].llGetRootPosition 
end
def llGetRootRotation 
	return $objects[0].llGetRootRotation 
end
def llGetRot 
	return $objects[0].llGetRot 
end
def llGetSPMaxMemory 
	return $objects[0].llGetSPMaxMemory 
end
def llGetScale 
	return $objects[0].llGetScale 
end
def llGetScriptName 
	return $objects[0].llGetScriptName 
end
def llGetScriptState ll_name
	return $objects[0].llGetScriptState ll_name
end
def llGetSimulatorHostname 
	return $objects[0].llGetSimulatorHostname 
end
def llGetStartParameter 
	return $objects[0].llGetStartParameter 
end
def llGetStatus ll_status
	return $objects[0].llGetStatus ll_status
end
def llGetSubString ll_src, ll_start, ll_end
	return $objects[0].llGetSubString ll_src, ll_start, ll_end
end
def llGetSunDirection 
	return $objects[0].llGetSunDirection 
end
def llGetTexture ll_face
	return $objects[0].llGetTexture ll_face
end
def llGetTextureOffset ll_face
	return $objects[0].llGetTextureOffset ll_face
end
def llGetTextureRot ll_side
	return $objects[0].llGetTextureRot ll_side
end
def llGetTextureScale ll_side
	return $objects[0].llGetTextureScale ll_side
end
def llGetTime 
	return $objects[0].llGetTime 
end
def llGetTimeOfDay 
	return $objects[0].llGetTimeOfDay 
end
def llGetTimestamp 
	return $objects[0].llGetTimestamp 
end
def llGetTorque 
	return $objects[0].llGetTorque 
end
def llGetUnixTime 
	return $objects[0].llGetUnixTime 
end
def llGetUsedMemory 
	return $objects[0].llGetUsedMemory 
end
def llGetUsername ll_id
	return $objects[0].llGetUsername ll_id
end
def llGetVel 
	return $objects[0].llGetVel 
end
def llGetWallclock 
	return $objects[0].llGetWallclock 
end
def llGiveInventory ll_destination, ll_inventory
	return $objects[0].llGiveInventory ll_destination, ll_inventory
end
def llGiveInventoryList ll_target, ll_folder, ll_inventory
	return $objects[0].llGiveInventoryList ll_target, ll_folder, ll_inventory
end
def llGiveMoney ll_destination, ll_amount
	return $objects[0].llGiveMoney ll_destination, ll_amount
end
def llGodLikeRezObject ll_inventory, ll_pos
	return $objects[0].llGodLikeRezObject ll_inventory, ll_pos
end
def llGround ll_offset
	return $objects[0].llGround ll_offset
end
def llGroundContour ll_offset
	return $objects[0].llGroundContour ll_offset
end
def llGroundNormal ll_offset
	return $objects[0].llGroundNormal ll_offset
end
def llGroundRepel ll_height, ll_water, ll_tau
	return $objects[0].llGroundRepel ll_height, ll_water, ll_tau
end
def llGroundSlope ll_offset
	return $objects[0].llGroundSlope ll_offset
end
def llHTTPRequest ll_url, ll_parameters, ll_body
	return $objects[0].llHTTPRequest ll_url, ll_parameters, ll_body
end
def llHTTPResponse ll_request_id, ll_status, ll_body
	return $objects[0].llHTTPResponse ll_request_id, ll_status, ll_body
end
def llInsertString ll_dst, ll_pos, ll_src
	return $objects[0].llInsertString ll_dst, ll_pos, ll_src
end
def llInstantMessage ll_user, ll_message
	return $objects[0].llInstantMessage ll_user, ll_message
end
def llIntegerToBase64 ll_number
	return $objects[0].llIntegerToBase64 ll_number
end
def llKey2Name ll_id
	return $objects[0].llKey2Name ll_id
end
def llLinkParticleSystem ll_link, ll_rules
	return $objects[0].llLinkParticleSystem ll_link, ll_rules
end
def llLinkSitTarget ll_link, ll_offset, ll_rot
	return $objects[0].llLinkSitTarget ll_link, ll_offset, ll_rot
end
def llList2CSV ll_src
	return $objects[0].llList2CSV ll_src
end
def llList2Float ll_src, ll_index
	return $objects[0].llList2Float ll_src, ll_index
end
def llList2Integer ll_src, ll_index
	return $objects[0].llList2Integer ll_src, ll_index
end
def llList2Key ll_src, ll_index
	return $objects[0].llList2Key ll_src, ll_index
end
def llList2List ll_src, ll_start, ll_end
	return $objects[0].llList2List ll_src, ll_start, ll_end
end
def llList2ListStrided ll_src, ll_start, ll_end, ll_stride
	return $objects[0].llList2ListStrided ll_src, ll_start, ll_end, ll_stride
end
def llList2Rot ll_src, ll_index
	return $objects[0].llList2Rot ll_src, ll_index
end
def llList2String ll_src, ll_index
	return $objects[0].llList2String ll_src, ll_index
end
def llList2Vector ll_src, ll_index
	return $objects[0].llList2Vector ll_src, ll_index
end
def llListFindList ll_src, ll_test
	return $objects[0].llListFindList ll_src, ll_test
end
def llListInsertList ll_dest, ll_src, ll_start
	return $objects[0].llListInsertList ll_dest, ll_src, ll_start
end
def llListRandomize ll_src, ll_stride
	return $objects[0].llListRandomize ll_src, ll_stride
end
def llListReplaceList ll_dest, ll_src, ll_start, ll_end
	return $objects[0].llListReplaceList ll_dest, ll_src, ll_start, ll_end
end
def llListSort ll_src, ll_stride, ll_ascending
	return $objects[0].llListSort ll_src, ll_stride, ll_ascending
end
def llListStatistics ll_operation, ll_src
	return $objects[0].llListStatistics ll_operation, ll_src
end
def llListen ll_channel, ll_name, ll_id, ll_msg
	return $objects[0].llListen ll_channel, ll_name, ll_id, ll_msg
end
def llListenControl ll_number, ll_active
	return $objects[0].llListenControl ll_number, ll_active
end
def llListenRemove ll_number
	return $objects[0].llListenRemove ll_number
end
def llLoadURL ll_avatar, ll_message, ll_url
	return $objects[0].llLoadURL ll_avatar, ll_message, ll_url
end
def llLog ll_val
	return $objects[0].llLog ll_val
end
def llLog10 ll_val
	return $objects[0].llLog10 ll_val
end
def llLookAt ll_target, ll_strength, ll_damping
	return $objects[0].llLookAt ll_target, ll_strength, ll_damping
end
def llLoopSound ll_sound, ll_volume
	return $objects[0].llLoopSound ll_sound, ll_volume
end
def llLoopSoundMaster ll_sound, ll_volume
	return $objects[0].llLoopSoundMaster ll_sound, ll_volume
end
def llLoopSoundSlave ll_sound, ll_volume
	return $objects[0].llLoopSoundSlave ll_sound, ll_volume
end
def llMD5String ll_src, ll_nonce
	return $objects[0].llMD5String ll_src, ll_nonce
end
def llMakeExplosion ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_texture, ll_offset
	return $objects[0].llMakeExplosion ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_texture, ll_offset
end
def llMakeFire ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_texture, ll_offset
	return $objects[0].llMakeFire ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_texture, ll_offset
end
def llMakeFountain ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_bounce, ll_texture, ll_offset, ll_bounce_offset
	return $objects[0].llMakeFountain ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_bounce, ll_texture, ll_offset, ll_bounce_offset
end
def llMakeSmoke ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_texture, ll_offset
	return $objects[0].llMakeSmoke ll_particles, ll_scale, ll_vel, ll_lifetime, ll_arc, ll_texture, ll_offset
end
def llManageEstateAccess ll_action, ll_avatar
	return $objects[0].llManageEstateAccess ll_action, ll_avatar
end
def llMapDestination ll_simname, ll_pos, ll_look_at
	return $objects[0].llMapDestination ll_simname, ll_pos, ll_look_at
end
def llMessageLinked ll_linknum, ll_num, ll_str, ll_id
	return $objects[0].llMessageLinked ll_linknum, ll_num, ll_str, ll_id
end
def llMinEventDelay ll_delay
	return $objects[0].llMinEventDelay ll_delay
end
def llModPow ll_a, ll_b, ll_c
	return $objects[0].llModPow ll_a, ll_b, ll_c
end
def llModifyLand ll_action, ll_brush
	return $objects[0].llModifyLand ll_action, ll_brush
end
def llMoveToTarget ll_target, ll_tau
	return $objects[0].llMoveToTarget ll_target, ll_tau
end
def llOffsetTexture ll_u, ll_v, ll_face
	return $objects[0].llOffsetTexture ll_u, ll_v, ll_face
end
def llOpenRemoteDataChannel 
	return $objects[0].llOpenRemoteDataChannel 
end
def llOverMyLand ll_id
	return $objects[0].llOverMyLand ll_id
end
def llOwnerSay ll_msg
	return $objects[0].llOwnerSay ll_msg
end
def llParcelMediaCommandList ll_commandList
	return $objects[0].llParcelMediaCommandList ll_commandList
end
def llParcelMediaQuery ll_query
	return $objects[0].llParcelMediaQuery ll_query
end
def llParseString2List ll_src, ll_separators, ll_spacers
	return $objects[0].llParseString2List ll_src, ll_separators, ll_spacers
end
def llParseStringKeepNulls ll_src, ll_separators, ll_spacers
	return $objects[0].llParseStringKeepNulls ll_src, ll_separators, ll_spacers
end
def llParticleSystem ll_rules
	return $objects[0].llParticleSystem ll_rules
end
def llPassCollisions ll_pass
	return $objects[0].llPassCollisions ll_pass
end
def llPassTouches ll_pass
	return $objects[0].llPassTouches ll_pass
end
def llPlaySound ll_sound, ll_volume
	return $objects[0].llPlaySound ll_sound, ll_volume
end
def llPlaySoundSlave ll_sound, ll_volume
	return $objects[0].llPlaySoundSlave ll_sound, ll_volume
end
def llPointAt ll_pos
	return $objects[0].llPointAt ll_pos
end
def llPow ll_base, ll_exponent
	return $objects[0].llPow ll_base, ll_exponent
end
def llPreloadSound ll_sound
	return $objects[0].llPreloadSound ll_sound
end
def llPushObject ll_target, ll_impulse, ll_ang_impulse, ll_local
	return $objects[0].llPushObject ll_target, ll_impulse, ll_ang_impulse, ll_local
end
def llRefreshPrimURL 
	return $objects[0].llRefreshPrimURL 
end
def llRegionSay ll_channel, ll_msg
	return $objects[0].llRegionSay ll_channel, ll_msg
end
def llRegionSayTo ll_target, ll_channel, ll_msg
	return $objects[0].llRegionSayTo ll_target, ll_channel, ll_msg
end
def llReleaseCamera ll_avatar
	return $objects[0].llReleaseCamera ll_avatar
end
def llReleaseControls 
	return $objects[0].llReleaseControls 
end
def llReleaseURL ll_url
	return $objects[0].llReleaseURL ll_url
end
def llRemoteDataReply ll_channel, ll_message_id, ll_sdata, ll_idata
	return $objects[0].llRemoteDataReply ll_channel, ll_message_id, ll_sdata, ll_idata
end
def llRemoteDataSetRegion 
	return $objects[0].llRemoteDataSetRegion 
end
def llRemoteLoadScript ll_target, ll_name, ll_running, ll_start_param
	return $objects[0].llRemoteLoadScript ll_target, ll_name, ll_running, ll_start_param
end
def llRemoteLoadScriptPin ll_target, ll_name, ll_pin, ll_running, ll_start_param
	return $objects[0].llRemoteLoadScriptPin ll_target, ll_name, ll_pin, ll_running, ll_start_param
end
def llRemoveFromLandBanList ll_avatar
	return $objects[0].llRemoveFromLandBanList ll_avatar
end
def llRemoveFromLandPassList ll_avatar
	return $objects[0].llRemoveFromLandPassList ll_avatar
end
def llRemoveInventory ll_item
	return $objects[0].llRemoveInventory ll_item
end
def llRemoveVehicleFlags ll_flags
	return $objects[0].llRemoveVehicleFlags ll_flags
end
def llRequestAgentData ll_id, ll_data
	return $objects[0].llRequestAgentData ll_id, ll_data
end
def llRequestDisplayName ll_id
	return $objects[0].llRequestDisplayName ll_id
end
def llRequestInventoryData ll_name
	return $objects[0].llRequestInventoryData ll_name
end
def llRequestPermissions ll_agent, ll_perm
	return $objects[0].llRequestPermissions ll_agent, ll_perm
end
def llRequestSecureURL 
	return $objects[0].llRequestSecureURL 
end
def llRequestSimulatorData ll_region, ll_data
	return $objects[0].llRequestSimulatorData ll_region, ll_data
end
def llRequestURL 
	return $objects[0].llRequestURL 
end
def llRequestUsername ll_id
	return $objects[0].llRequestUsername ll_id
end
def llResetLandBanList 
	return $objects[0].llResetLandBanList 
end
def llResetLandPassList 
	return $objects[0].llResetLandPassList 
end
def llResetOtherScript ll_name
	return $objects[0].llResetOtherScript ll_name
end
def llResetScript 
	return $objects[0].llResetScript 
end
def llResetTime 
	return $objects[0].llResetTime 
end
def llRezAtRoot ll_inventory, ll_position, ll_velocity, ll_rot, ll_param
	return $objects[0].llRezAtRoot ll_inventory, ll_position, ll_velocity, ll_rot, ll_param
end
def llRezObject ll_inventory, ll_pos, ll_vel, ll_rot, ll_param
	return $objects[0].llRezObject ll_inventory, ll_pos, ll_vel, ll_rot, ll_param
end
def llRot2Angle ll_rot
	return $objects[0].llRot2Angle ll_rot
end
def llRot2Axis ll_rot
	return $objects[0].llRot2Axis ll_rot
end
def llRot2Euler ll_quat
	return $objects[0].llRot2Euler ll_quat
end
def llRot2Fwd ll_q
	return $objects[0].llRot2Fwd ll_q
end
def llRot2Left ll_q
	return $objects[0].llRot2Left ll_q
end
def llRot2Up ll_q
	return $objects[0].llRot2Up ll_q
end
def llRotBetween ll_start, ll_end
	return $objects[0].llRotBetween ll_start, ll_end
end
def llRotLookAt ll_target, ll_strength, ll_damping
	return $objects[0].llRotLookAt ll_target, ll_strength, ll_damping
end
def llRotTarget ll_rot, ll_error
	return $objects[0].llRotTarget ll_rot, ll_error
end
def llRotTargetRemove ll_number
	return $objects[0].llRotTargetRemove ll_number
end
def llRotateTexture ll_angle, ll_face
	return $objects[0].llRotateTexture ll_angle, ll_face
end
def llRound ll_val
	return $objects[0].llRound ll_val
end
def llSHA1String ll_src
	return $objects[0].llSHA1String ll_src
end
def llSameGroup ll_agent
	return $objects[0].llSameGroup ll_agent
end
def llSay ll_channel, ll_msg
	return $objects[0].llSay ll_channel, ll_msg
end
def llScaleTexture ll_u, ll_v, ll_face
	return $objects[0].llScaleTexture ll_u, ll_v, ll_face
end
def llScriptDanger ll_pos
	return $objects[0].llScriptDanger ll_pos
end
def llScriptProfiler ll_flags
	return $objects[0].llScriptProfiler ll_flags
end
def llSendRemoteData ll_channel, ll_dest, ll_idata, ll_sdata
	return $objects[0].llSendRemoteData ll_channel, ll_dest, ll_idata, ll_sdata
end
def llSensor ll_name, ll_id, ll_type, ll_range, ll_arc
	return $objects[0].llSensor ll_name, ll_id, ll_type, ll_range, ll_arc
end
def llSensorRemove 
	return $objects[0].llSensorRemove 
end
def llSensorRepeat ll_name, ll_id, ll_type, ll_range, ll_arc, ll_rate
	return $objects[0].llSensorRepeat ll_name, ll_id, ll_type, ll_range, ll_arc, ll_rate
end
def llSetAlpha ll_alpha, ll_face
	return $objects[0].llSetAlpha ll_alpha, ll_face
end
def llSetAngularVelocity ll_force, ll_local
	return $objects[0].llSetAngularVelocity ll_force, ll_local
end
def llSetBuoyancy ll_buoyancy
	return $objects[0].llSetBuoyancy ll_buoyancy
end
def llSetCameraAtOffset ll_offset
	return $objects[0].llSetCameraAtOffset ll_offset
end
def llSetCameraEyeOffset ll_offset
	return $objects[0].llSetCameraEyeOffset ll_offset
end
def llSetCameraParams ll_rules
	return $objects[0].llSetCameraParams ll_rules
end
def llSetClickAction ll_action
	return $objects[0].llSetClickAction ll_action
end
def llSetColor ll_color, ll_face
	return $objects[0].llSetColor ll_color, ll_face
end
def llSetContentType ll_request_id, ll_content_type
	return $objects[0].llSetContentType ll_request_id, ll_content_type
end
def llSetDamage ll_damage
	return $objects[0].llSetDamage ll_damage
end
