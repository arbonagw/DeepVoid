/**
 *  This work is distributed under the Lesser General Public License,
 *	see LICENSE for details
 *
 *  @author Gwenna�l ARBONA
 **/

class W_Sniper extends DVWeapon;


/*----------------------------------------------------------
	Properties
----------------------------------------------------------*/

defaultproperties
{
	// Mesh
	Begin Object Name=WeaponMesh
		SkeletalMesh=SkeletalMesh'DV_Spacegear.Mesh.SK_Rifle'
		Scale=1.2
	End Object
	Mesh=WeaponMesh
	
	// Settings
	ImpactEffect=(MaterialType=Water, ParticleTemplate=ParticleSystem'DV_CoreEffects.FX.PS_Impact')
	WeaponFireSnd[0]=SoundCue'DV_Sound.Weapons.A_SniperShot'
	WeaponEmptySound=SoundCue'DV_Sound.Weapons.A_Empty'
	ZoomOffset=(X=1.50000,Y=23.000000,Z=0.000000)
	ZoomSensitivity=0.7
	ZoomedFOV=45
	
	// Interface
	WeaponIconPath="DV_Spacegear"
	WeaponIcon=Texture2D'DV_Spacegear.Icon.T_W_Sniper'
	
	// Weaponry
	InstantHitMomentum(0)=40000.0
	InstantHitDamage(0)=90.0
	FireInterval(0)=1.0
	SmoothingFactor=1.0
	RecoilAngle=2000.0
	Spread(0)=0.0
	MaxAmmo=20
}
