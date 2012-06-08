/**
 *  This work is distributed under the Lesser General Public License,
 *	see LICENSE for details
 *
 *  @author Gwenna�l ARBONA
 **/

class W_Shotgun extends DVWeapon;


/*----------------------------------------------------------
	Attributes
----------------------------------------------------------*/

var float 	SpreadDist;


/*----------------------------------------------------------
	Methods
----------------------------------------------------------*/

/*--- Custom burst-fire ---*/
simulated function CustomFire()
{
   	local vector RealStartLoc, AimDir, YDir, ZDir;
	local class<Projectile> ShardProjectileClass;
	local Projectile Proj;
	local float Mag;
	local int i,j;

	// Firing
	IncrementFlashCount();
	if (Role == ROLE_Authority)
	{
		RealStartLoc = GetPhysicalFireStartLoc();
		GetAxes(GetAdjustedAim(RealStartLoc),AimDir, YDir, ZDir);

		// A shard in every direction
		ShardProjectileClass = GetProjectileClass();
		for ( i=-1; i<2; i++)
		{
			for ( j=-1; j<2; j++ )
			{
				Mag = (abs(i)+abs(j) > 1) ? 0.7 : 1.0;
				Proj = Spawn(ShardProjectileClass,,, RealStartLoc);
				if (Proj != None)
				{
					Proj.Init(AimDir + (0.3 + 0.7*FRand())*Mag*i*SpreadDist*YDir + (0.3 + 0.7*FRand())*Mag*j*SpreadDist*ZDir );
				}
			}
	    }
	}
}


/*----------------------------------------------------------
	Properties
----------------------------------------------------------*/

defaultproperties
{
	// Mesh
	Begin Object Name=WeaponMesh
		SkeletalMesh=SkeletalMesh'DV_Spacegear.Mesh.SK_Rifle'
	End Object
	Mesh=WeaponMesh
	
	// Settings
	WeaponFireSnd[0]=SoundCue'DV_Sound.Weapons.A_ShotgunShot'
	WeaponEmptySound=SoundCue'DV_Sound.Weapons.A_Empty'
	ZoomOffset=(X=1.50000,Y=23.000000,Z=0.000000)
	ZoomSensitivity=0.8
	SmoothingFactor=0.7
	ZoomedFOV=45
	
	// Interface
	WeaponPath="DeepVoid"
	WeaponIconPath="DV_Spacegear"
	WeaponIcon=Texture2D'DV_Spacegear.Icon.T_W_Shotgun'
	
	// Weaponry
	WeaponProjectiles(0)=class'WP_ShotgunShell'
	WeaponFireTypes(0)=EWFT_Custom
	FireInterval(0)=0.5
	RecoilAngle=1000.0
	SpreadDist=0.04
	MaxAmmo=40
}
