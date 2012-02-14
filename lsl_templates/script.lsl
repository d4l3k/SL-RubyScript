string BASE_URL = "http://rice.outerearth.net/";
string API_KEY = "dd94709528bb1c83d08f3088d4043f4742891f4f";
string SANDBOX = "default";
//integer mode = 0; //Web
//integer mode = 1; //Notecard
integer mode = 2; //Server
string load_path = "test.rb";

//!$!-CODE_START
key resp_id="";
string serializeList(list l){
    integer i=(l!=[]);//This is a hack, it gets list length.
    if(i)
    {
        string serialized_data = "";
        integer type = 0;
        string result;
        {@loop;
            // this custom loop is about as fast as a while loop.
            // we build the string backwords for memory reasons.
            // My kingdom for select statements....

            if(TYPE_FLOAT==(type=llGetListEntryType(l,(i=~-i)))){
                // floats get extra love
                result=(string)(llList2Float(l,i));
            }
            else if(TYPE_VECTOR==type){
                vector v=llList2Vector(l, i);
                result=(string)(v.x)+","+(string)(v.y)+","+(string)(v.z);
            }else if(TYPE_ROTATION==type){
                rotation r=llList2Rot(l,i);
                result=(string)(r.x)+","+(string)(r.y)+","+(string)(r.z)+","+(string)(r.s);
            }else{ //if ((TYPE_INTEGER == type) || (TYPE_STRING ==  type) || (TYPE_KEY == type))
                result=llList2String(l,i);// integers, strings and keys required no voodoo
			}
            if(i)
            {
                //This came to me after reverse engeneering LSL bytecode, the realization that LSL memory management sucks.
                serialized_data = "$!$" + (string)type + (serialized_data = result = ",") + result + serialized_data;
                jump loop;
            }
        }
        return (string)type + (serialized_data = result = ",") + result + serialized_data;
    }
    return "";
}

list unserializeList(string serialized_data){
    // TODO: add some checking in-case we encounter a poorly formed serialization
    //       consider using the same mem-packing list pushing technique used above
    //       (want to run performace tests first)
    list result=[];
    list t;
    list l=llParseStringKeepNulls(serialized_data, ["$!$"], []);

    string item;
    integer i=(l!=[]);//This is a hack, it gets list lenght.
    integer type = 0;
    do
    {
        if((type=(integer)(item=llList2String(l,(i=~-i)))))
        {
            integer p = llSubStringIndex(item, ",");
            item = llDeleteSubString(item, 0, p);
            if(TYPE_INTEGER==type)
            {
                t=[(integer)item];
            }
            else if(TYPE_FLOAT==type)
            {
                t = [(float)item];
            }
            else if(TYPE_STRING==type)
            {
                t = [item];
            }
            else if(TYPE_KEY==type)
            {
                t=[(key)item];
            }
            else
            {
                if (TYPE_ROTATION ^ type)
                {// if (TYPE_VECTOR == type)
                    t=[(vector)("<" + item + ">")];
                }
                else// if (TYPE_ROTATION == type)
                {
                    t=[(rotation)("<"+item+">")];
                }
            }
            result=t+result;

        }
    }while(i);
    return result;
}

send_packet(string data)
{
	llHTTPRequest(BASE_URL+"api/"+API_KEY+"/"+(string)llGetKey()+"/"+data,[],"");
}

default
{
    state_entry(){
    	llReleaseURL(llGetObjectDesc());
    	llOwnerSay("RubyScript_Core_MEM:"+(string)llGetFreeMemory());
        llRequestURL();
    }
 
    http_request(key id, string method, string body){
    	resp_id = id;
        string path = llGetHTTPHeader(id,"x-path-info");
        if(method == URL_REQUEST_GRANTED){
            llOwnerSay("Obtained URL: " + body);
            llSetObjectDesc(body);
            send_packet("init/"+llEscapeURL(body)+"/"+SANDBOX);
        }
        else if(method == URL_REQUEST_DENIED){
            llOwnerSay("ERR:"+body);
        }
        else
		{
            list args = llParseString2List(llUnescapeURL(path),["/"],[]);
            string func = llList2String(args,0);
			llMessageLinked(LINK_THIS,-426100,path,"");
        }
    }
    on_rez(integer n)
    {
    	llResetScript();
    }
    link_message(integer src, integer num, string path, key id)
	{
		if(num==-426101)
		{
			llHTTPResponse(resp_id,200,path);
		}
		else if(num!=-426100)
		{
			send_packet("event/link_message"
		  		+"/s_src|"+llEscapeURL(serializeList([src]))
		  		+"/s_num|"+llEscapeURL(serializeList([num]))
		  		+"/s_path|"+llEscapeURL(serializeList([path]))
		  		+"/s_id|"+llEscapeURL(serializeList([id]))
		  	);
		}
	}
    touch_start(integer total_number)
    {
    	integer i;
        list keys=[];
        list pos=[];
        list owner=[];
        list rot=[];
        list name=[];
        list type=[];
        list vel=[];
        list group=[];
        // Collision & Touch
        list link=[];
        // Touch
        list binormal=[];
        list face=[];
        list normal=[];
        list touch_pos=[];
        list st=[];
        list uv=[];
        for(i=0;i<total_number;i++){
            keys+=llDetectedKey(i);
            pos+=llDetectedPos(i);
            owner+=llDetectedOwner(i);
            rot+=llDetectedRot(i);
            name+=llDetectedName(i);
            type+=llDetectedType(i);
            vel+=llDetectedVel(i);
            group+=llDetectedGroup(i);
            // Collision & Touch
            link+=llDetectedLinkNumber(i);
            // Touch
            binormal+=llDetectedTouchBinormal(i);
            face+=llDetectedTouchFace(i);
            normal+=llDetectedTouchNormal(i);
            touch_pos+=llDetectedTouchPos(i);
            st+=llDetectedTouchST(i);
            uv+=llDetectedTouchUV(i);
 		}
        send_packet("event/touch_start"+
      		"/key|"+llEscapeURL(serializeList(keys))+
      		"/pos|"+llEscapeURL(serializeList(pos))+
      		"/owner|"+llEscapeURL(serializeList(owner))+
      		"/rot|"+llEscapeURL(serializeList(rot))+
      		"/name|"+llEscapeURL(serializeList(name))+
      		"/type|"+llEscapeURL(serializeList(type))+
      		"/vel|"+llEscapeURL(serializeList(vel))+
      		"/group|"+llEscapeURL(serializeList(group))+
      		// Touch & Collision
      		"/link_num|"+llEscapeURL(serializeList(link))+
      		// Touch
      		"/touch_binormal|"+llEscapeURL(serializeList(binormal))+
      		"/touch_face|"+llEscapeURL(serializeList(face))+
      		"/touch_normal|"+llEscapeURL(serializeList(normal))+
      		"/touch_pos|"+llEscapeURL(serializeList(touch_pos))+
      		"/touch_st|"+llEscapeURL(serializeList(st))+
      		"/touch_uv|"+llEscapeURL(serializeList(uv))
      	);
    }
    collision_start(integer total_number)
    {
    	integer i;
        list keys=[];
        list pos=[];
        list owner=[];
        list rot=[];
        list name=[];
        list type=[];
        list vel=[];
        list group=[];
        // Collision & Touch
        list link=[];
        for(i=0;i<total_number;i++){
            keys+=llDetectedKey(i);
            pos+=llDetectedPos(i);
            owner+=llDetectedOwner(i);
            rot+=llDetectedRot(i);
            name+=llDetectedName(i);
            type+=llDetectedType(i);
            vel+=llDetectedVel(i);
            group+=llDetectedGroup(i);
            // Collision & Touch
            link+=llDetectedLinkNumber(i)
 		}
        send_packet("event/collision_start"+
      		"/key|"+llEscapeURL(serializeList(keys))+
      		"/pos|"+llEscapeURL(serializeList(pos))+
      		"/owner|"+llEscapeURL(serializeList(owner))+
      		"/rot|"+llEscapeURL(serializeList(rot))+
      		"/name|"+llEscapeURL(serializeList(name))+
      		"/type|"+llEscapeURL(serializeList(type))+
      		"/vel|"+llEscapeURL(serializeList(vel))+
      		"/group|"+llEscapeURL(serializeList(group))+
      		// Touch & Collision
      		"/link_num|"+llEscapeURL(serializeList(link))
      		}
    }
    sensor(integer total_number)
    {
    	integer i;
        list keys=[];
        list pos=[];
        list owner=[];
        list rot=[];
        list name=[];
        list type=[];
        list vel=[];
        list group=[];
        for(i=0;i<total_number;i++){
            keys+=llDetectedKey(i);
            pos+=llDetectedPos(i);
            owner+=llDetectedOwner(i);
            rot+=llDetectedRot(i);
            name+=llDetectedName(i);
            type+=llDetectedType(i);
            vel+=llDetectedVel(i);
            group+=llDetectedGroup(i);
 		}
        send_packet("event/sensor"+
      		"/key|"+llEscapeURL(serializeList(keys))+
      		"/pos|"+llEscapeURL(serializeList(pos))+
      		"/owner|"+llEscapeURL(serializeList(owner))+
      		"/rot|"+llEscapeURL(serializeList(rot))+
      		"/name|"+llEscapeURL(serializeList(name))+
      		"/type|"+llEscapeURL(serializeList(type))+
      		"/vel|"+llEscapeURL(serializeList(vel))+
      		"/group|"+llEscapeURL(serializeList(group))
      	);
    }
    no_sensor()
    {
    	send_packet("event/no_sensor/nil");
    }
    moving_start()
    {
    	send_packet("event/moving_start/nil");
    }
    moving_end()
    {
    	send_packet("event/moving_end/nil");
    }
    changed(integer change)
    {
    	if(change & CHANGED_REGION_START)
	{
    		llResetScript();
	}
	send_packet("event/changed"+
      		"/s_change|"+llEscapeURL(serializeList([change])));
    }
    listen(integer channel, string name, key id, string message)
    {
    	send_packet("event/listen"
      		+"/s_channel|"+llEscapeURL(serializeList([channel]))
      		+"/s_name|"+llEscapeURL(serializeList([name]))
      		+"/s_id|"+llEscapeURL(serializeList([id]))
      		+"/s_message|"+llEscapeURL(serializeList([message]))
      	);
    }
    control(key id, integer level, integer edge)
    {
    	send_packet("event/control"
      		+"/s_id|"+llEscapeURL(serializeList([id]))
      		+"/s_level|"+llEscapeURL(serializeList([level]))
      		+"/s_edge|"+llEscapeURL(serializeList([edge]))
      	);
    }
    attach(key id)
    {
    	send_packet("event/attach"
      		+"/s_id|"+llEscapeURL(serializeList([id]))
      	);
    }
    at_rot_target(integer tnum, rotation targetrot, rotation ourrot)
    {
    	send_packet("event/at_rot_target"
      		+"/s_tnum|"+llEscapeURL(serializeList([tnum]))
      		+"/s_targetrot|"+llEscapeURL(serializeList([targetrot]))
      		+"/s_ourrot|"+llEscapeURL(serializeList([ourrot]))
      	);
    }
    not_at_rot_target()
    {
    	send_packet("event/not_at_rot_target/nil");
    }
    at_target(integer tnum, vector targetpos, vector ourpos)
    {
    	send_packet("event/at_target"
      		+"/s_tnum|"+llEscapeURL(serializeList([tnum]))
      		+"/s_targetpos|"+llEscapeURL(serializeList([targetpos]))
      		+"/s_ourpos|"+llEscapeURL(serializeList([ourpos]))
      	);
    }
    not_at_target()
    {
    	send_packet("event/not_at_rot_target/nil");
    }
    timer()
    {
    	send_packet("event/timer/nil");
    }
    remote_data( integer event_type, key channel, key message_id, string sender, integer idata, string sdata )
    {
    	send_packet("event/remote_data"
      		+"/s_event_type|"+llEscapeURL(serializeList([event_type]))
      		+"/s_channel|"+llEscapeURL(serializeList([channel]))
      		+"/s_message_id|"+llEscapeURL(serializeList([message_id]))
      		+"/s_sender|"+llEscapeURL(serializeList([sender]))
      		+"/s_idata|"+llEscapeURL(serializeList([idata]))
      		+"/s_sdata|"+llEscapeURL(serializeList([sdata]))
      	);
    }
    run_time_permissions( integer perm )
    {
    	send_packet("event/run_time_permissions"
      		+"/s_perm|"+llEscapeURL(serializeList([perm]))
      	);
    }
    dataserver( key queryid, string data )
    {
    	send_packet("event/dataserver"
      		+"/s_queryid|"+llEscapeURL(serializeList([queryid]))
      		+"/s_data|"+llEscapeURL(serializeList([data]))
      	);
    }
    email( string time, string address, string subject, string message, integer num_left ){
    	send_packet("event/email"
      		+"/s_time|"+llEscapeURL(serializeList([time]))
      		+"/s_address|"+llEscapeURL(serializeList([address]))
      		+"/s_subject|"+llEscapeURL(serializeList([subject]))
      		+"/s_message|"+llEscapeURL(serializeList([message]))
      		+"/s_num_left|"+llEscapeURL(serializeList([num_left]))
      	);
    }
    money( key id, integer amount )
    {
    	send_packet("event/money"
      		+"/s_id|"+llEscapeURL(serializeList([id]))
      		+"/s_amount|"+llEscapeURL(serializeList([amount]))
      	);
    }
    transaction_result(key id, integer success, string data)
    {
    	send_packet("event/money"
      		+"/s_id|"+llEscapeURL(serializeList([id]))
      		+"/s_success|"+llEscapeURL(serializeList([success]))
      		+"/s_data|"+llEscapeURL(serializeList([data]))
      	);
    }
    object_rez( key id )
    {
    	send_packet("event/object_rez"
      		+"/s_id|"+llEscapeURL(serializeList([id]))
      	);
    }
    land_collision_start( vector pos )
    {
    	send_packet("event/land_collision_start"
      		+"/s_pos|"+llEscapeURL(serializeList([pos]))
      	);
    }
}
