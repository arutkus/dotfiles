--------------------------------------------------------------------------------
-- Global Config
--------------------------------------------------------------------------------

hyper = {"cmd", "alt", "ctrl"}
lilHyper = {"cmd", "ctrl"}
bigHyper = {"cmd", "alt", "ctrl", "shift"}

hs.hotkey.bind(hyper, 'r', hs.reload)
hs.hotkey.bind(hyper, '`', hs.toggleConsole)

require('helpers')

local chain = require('chain')

--------------------------------------------------------------------------------
-- Focus Window
--------------------------------------------------------------------------------

hs.hotkey.bind(lilHyper, 'h', function()
  hs.window.filter.focusWest()
end)

hs.hotkey.bind(lilHyper, 'j', function()
  hs.window.filter.focusSouth()
end)

hs.hotkey.bind(lilHyper, 'k', function()
  hs.window.filter.focusNorth()
end)

hs.hotkey.bind(lilHyper, 'l', function()
  hs.window.filter.focusEast()
end)

--------------------------------------------------------------------------------
-- Grid Settings
--------------------------------------------------------------------------------

hs.window.animationDuration = 0
hs.grid.setGrid('30x20')

resetWhenSwitchingScreen(function ()
  hs.grid.setMargins(largeOrSmallScreen({x=16, y=16}, {x=10, y=10}))
end)

positions = {
  full     = '0,0 30x20',

  center = {
    wide   = '2,1 26x18',
    normal = '6,1 18x18',
    narrow = '10,1 10x18',
  },

  thirds = {
    left   = '0,0 10x20',
    center = '10,0 10x20',
    right  = '20,0 10x20',
  },

  halves = {
    left   = '0,0 15x20',
    right  = '15,0 15x20',
  },

  twoThirds = {
    left   = '0,0 20x20',
    right  = '10,0 20x20',
  },

  fourFifths = {
    left   = '0,0 24x20',
    center = '3,0 24x20',
    right  = '6,0 24x20',
  },
}


--------------------------------------------------------------------------------
-- Grid Movements
--------------------------------------------------------------------------------
-- f:    fullscreen
-- hjkl: edge movements
-- yu:   top corner movements
-- bn:   bottom corner movements
-- m:    middle column
-- s:    snap to nearest grid region

--hs.hotkey.bind(hyper, 'f', chain({positions.full}))
hs.hotkey.bind(hyper, 'c', chain({positions.center.wide, positions.center.normal, positions.center.narrow}))

local largeX = { 'thirds', 'halves', 'twoThirds', }
local smallX = { 'halves', 'twoThirds', 'fourFifths' }
local largeY = { 'thirds', 'full' }
local smallY = { 'fourFifths', 'full' }

resetWhenSwitchingScreen(function ()
  hs.hotkey.bind(hyper, 'h', chain(getPositions(largeOrSmallScreen(largeX, smallX), 'left')))
  hs.hotkey.bind(hyper, 'j', chain(getPositions(largeOrSmallScreen(largeY, smallY), 'center', 'bottom')))
  hs.hotkey.bind(hyper, 'k', chain(getPositions(largeOrSmallScreen(largeY, smallY), 'center', 'top')))
  hs.hotkey.bind(hyper, 'l', chain(getPositions(largeOrSmallScreen(largeX, smallX), 'right')))
  hs.hotkey.bind(hyper, 'y', chain(getPositions(largeOrSmallScreen(largeX, smallX), 'left', 'top')))
  hs.hotkey.bind(hyper, 'u', chain(getPositions(largeOrSmallScreen(largeX, smallX), 'right', 'top')))
  hs.hotkey.bind(hyper, 'b', chain(getPositions(largeOrSmallScreen(largeX, smallX), 'left', 'bottom')))
  hs.hotkey.bind(hyper, 'n', chain(getPositions(largeOrSmallScreen(largeX, smallX), 'right', 'bottom')))
  hs.hotkey.bind(hyper, 'm', chain(getPositions(largeOrSmallScreen(largeY, smallY), 'center')))
end)

hs.hotkey.bind(lilHyper, 's', function ()
  snap()
end)


--------------------------------------------------------------------------------
-- Some Testing
--------------------------------------------------------------------------------

-- Toogle the App between hide and show
hs.hotkey.bind(hyper, 'return' , function() 
    toogleApp('Alacritty') 
end)

hs.hotkey.bind(hyper, '0' , function()
    toogleApp('Firefox')
end)

hs.hotkey.bind(hyper, '9' , function()
    toogleApp('Discord')
end)

hs.hotkey.bind(hyper, '8' , function()
    toogleApp('Spotify')
end)

hs.hotkey.bind(hyper, '6' , function()
    toogleApp('Jira')
end)

hs.hotkey.bind(hyper, '5' , function()
    toogleApp('Notes')
end)

hs.hotkey.bind(hyper, '4' , function()
    toogleApp('Mail')
end)

hs.hotkey.bind(hyper, '3' , function()
    toogleApp('PhpStorm')
end)

hs.hotkey.bind(hyper, '2' , function()
    toogleApp('Slack')
end)

hs.hotkey.bind(hyper, '1' , function()
    toogleApp('Querious')
end)

function toogleApp(_app) 
    frontApp = hs.application.frontmostApplication()
    if frontApp:title() == _app then
        frontApp:hide()
    else
        hs.application.launchOrFocus(_app)
    end
  end


hs.hotkey.bind(hyper, 'f', function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    win:toggleFullScreen()
  end
end)

  -- Send the window to the next screen
hs.hotkey.bind(hyper, ';', function()
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local screen = win:screen()
        if #hs.screen.allScreens() > 1 then
			if win:isFullScreen() then
				win:setFullScreen(false):moveToScreen(screen:next())
				hs.timer.doAfter(0.6,function()
					win:setFullScreen(true)
				end)
			else	
				win:moveToScreen(screen:next())
			end
        else
            hs.alert.show("Only one monitor")
        end
    else
        hs.alert.show("No active window")
    end
end)


--------------------------------------------------------------------------------
-- The End
--------------------------------------------------------------------------------

hs.notify.show('Hammerspoon loaded', '', '...more like hammerspork') -- thnx jesseleite
