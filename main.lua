-----------------------------------------------------------------------------------------
--
-- Created by: Matsuru Hoshi
-- Created on: Apr 5, 2019
--
-- This file will see if you are worthy of getting discount on musuem pricing.
-----------------------------------------------------------------------------------------

local background = display.setDefault( "background", 244/255, 152/255, 66/255)

local title = display.newText( "Museum", 160, 50, "Arial", 40)

local ageBox = native.newTextField( 160, 150, 100, 30)

local output = display.newText( "", 160, 100, "Arial", 20)
output:setFillColor(1, 1, 1)

local dayOfWeek = ""

local mondayBox = display.newRect(50, 300, 60, 60)

local tuesdayBox = display.newRect(150, 300, 60, 60)

local wednesdayBox = display.newRect(250, 300, 60, 60)

local thursdayBox = display.newRect(50, 390, 60, 60)

local fridayBox = display.newRect(150, 390, 60, 60)

local saturdayBox = display.newRect(250, 390, 60, 60)

local sundayBox = display.newRect(150, 480, 60, 60)

local calButton = display.newRect( 160, 220, 200, 30)


	local function monday( event )
		dayOfWeek = "monday"
	end

	local function tuesday( event )
		dayOfWeek = "tuesday"
	end

	local function wednesday( event )
		dayOfWeek = "wednesday"
	end

	local function thursday( event )
		dayOfWeek = "thursday"
	end

	local function friday( event )
		dayOfWeek = "friday"
	end

	local function saturday( event )
		dayOfWeek = "saturday"
	end

	local function sunday( event )
		dayOfWeek = "sunday"
		print(dayOfWeek)
	end

	mondayBox:addEventListener( "touch", monday)
	tuesdayBox:addEventListener( "touch", tuesday)
	wednesdayBox:addEventListener( "touch", wednesday)
	thursdayBox:addEventListener( "touch", thursday)
	fridayBox:addEventListener( "touch", friday)
	saturdayBox:addEventListener( "touch", saturday)
	sundayBox:addEventListener( "touch", sunday)

local function Check( event )
	local age = tonumber(ageBox.text)

	if ((dayOfWeek == "tuesday" or dayOfWeek == "thursday") or (age > 12 and age < 21)) then
		output.text = "You get discount"
	else
		output.text = "you get nothing, pay the normal price"
	end
	print(output)
	print(age)
end

calButton:addEventListener( "touch", Check)

