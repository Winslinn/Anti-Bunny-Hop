local player = game.Players.LocalPlayer
local character = player.CharacterAppearanceLoaded:Wait() or player.Character
local uis = game:GetService("UserInputService")

local jumpHeight = character:WaitForChild("Humanoid").JumpHeight

character.Humanoid.StateChanged:Connect(function(_,state)
	wait()
	character.Humanoid.JumpHeight = 0
	
	if state == Enum.HumanoidStateType.Running then
		wait(1)
		character.Humanoid.JumpHeight = jumpHeight
	end
end)
