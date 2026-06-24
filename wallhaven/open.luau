-- Bar widget that opens the Wallhaven browser panel.

local glyph = barWidget.getConfig("glyph")

local function render()
  barWidget.setGlyph(glyph)
  barWidget.setTooltip(noctalia.tr("title"))
end

function update()
  render()
end

function onClick()
  noctalia.runAsync("noctalia msg panel-toggle noctalia/wallhaven:browser")
end

render()
