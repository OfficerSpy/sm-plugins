#include <sourcemod>
#include <tf2>

public Action OnPlayerRunCmd(int client, int &buttons, int &impulse, float vel[3], float angles[3], int &weapon, int &subtype, int &cmdnum, int &tickcount, int &seed, int mouse[2])
{
	if (GetEntProp(client, Prop_Send, "m_bViewingCYOAPDA") && GetEntProp(client, Prop_Send, "m_iStunFlags") & TF_STUNFLAG_SLOWDOWN)
	{
		buttons &= ~IN_JUMP;
		vel = NULL_VECTOR;
	}
	
	return Plugin_Continue;
}
