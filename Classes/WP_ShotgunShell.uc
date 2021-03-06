/**
 *  This work is distributed under the Lesser General Public License,
 *	see LICENSE for details
 *
 *  @author Gwenna�l ARBONA
 **/

class WP_ShotgunShell extends DVProjectile;


/*----------------------------------------------------------
	Properties
----------------------------------------------------------*/

defaultproperties
{
	ProjFlightTemplate=ParticleSystem'VH_Manta.Effects.PS_Manta_Projectile'
	ProjExplosionTemplate=ParticleSystem'DV_CoreEffects.FX.PS_ImpactDyn''
	ExplosionSound=SoundCue'DV_Sound.Impacts.A_Impact_Plasma'
    MyDamageType=class'DVDamage'
	
    bCollideWorld=true
    
    CurveScaling=0
    Damage=8
    Speed=100
    DrawScale=1.5
    MaxSpeed=15000
    AccelRate=5000.0
    MomentumTransfer=25000
}
