BouncyGun = Weapon.Inherit("BouncyGun")

BouncyBall = Prop.Inherit("BouncyBall")
function BouncyBall:Constructor(location, rotation)
  -- CHAMAR SUPER COM . CRASHA KAKAKA
  self.Super:Constructor(location or Vector(), (rotation or Rotator()) + Rotator(0, 90, 0), "nanos-world::SM_Sphere")
  self:SetPhysicalMaterial("nanos-world::PM_RubberBouncy")
  local scale = math.random(5, 10)
  self:SetScale(Vector(scale, scale, scale) / 10)
  local color = Color.RandomPalette()
  self:SetMaterialColorParameter("Tint", color * 1000)
  self:SetMaterialScalarParameter("Roughness", 0)
end

function BouncyGun:Constructor(location, rotation)
  self.Super:Constructor(location or Vector(), rotation or Rotator(), "nanos-world::SK_FlareGun")

  self:SetAmmoSettings(9999, 0)
  self:SetDamage(0)
  self:SetRecoil(0)
  self:SetSightTransform(Vector(0, 0, -4), Rotator(0, 0, 0))
  self:SetLeftHandTransform(Vector(0, 1, -5), Rotator(0, 60, 100))
  self:SetRightHandOffset(Vector(-25, -5, 0))
  self:SetHandlingMode(HandlingMode.SingleHandedWeapon)
  self:SetCadence(0.1)
  self:SetSoundDry("nanos-world::A_Pistol_Dry")
  self:SetSoundZooming("nanos-world::A_AimZoom")
  self:SetSoundAim("nanos-world::A_Rattle")
  self:SetSoundFire("nanos-world::A_Whoosh")
  self:SetAnimationCharacterFire("nanos-world::A_Mannequin_Sight_Fire_Pistol")
  self:SetCrosshairMaterial("nanos-world::MI_Crosshair_Square")
  self:SetUsageSettings(true, false)
end

function BouncyGun:OnFire(character)
  local control_rotation = character:GetControlRotation()
  local forward_vector = control_rotation:GetForwardVector()
  local spawn_location = self:GetLocation() + Vector(0, 0, 50) + forward_vector * 150

  local prop = BouncyBall(spawn_location, Rotator.Random(true))
  prop:SetLifeSpan(10)
  prop:AddImpulse(forward_vector * 12000, true)
end

BouncyGun.SubscribeRemote("Fire", BouncyGun.OnFire)
