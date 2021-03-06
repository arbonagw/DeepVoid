/**
 *  This work is distributed under the Lesser General Public License,
 *	see LICENSE for details
 *
 *  @author Gwenna�l ARBONA
 **/

class WA_IronSight extends DVWeaponAddon;


/*----------------------------------------------------------
	Properties
----------------------------------------------------------*/

defaultproperties
{
	// Interface
	IconPath="DV_Addons"
	Icon=Texture2D'DV_Addons.Icon.T_WA_IronSightl'
	
	// Mesh
	Begin Object Name=AddonMesh
		StaticMesh=StaticMesh'DV_Addons.Mesh.SM_IronSight'
		Rotation=(Pitch=32768, Yaw=-16384, Roll=16384)
		Translation=(Y=5.2)
		Scale=0.95
	End Object
	
	// Properties
	SocketID=2
	bUseLens=false
	bRequiresLongRail=true
	ZoomOffset=(X=4.00000,Y=30.000000,Z=0.000000)
}
