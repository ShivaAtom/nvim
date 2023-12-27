---@diagnostic disable: missing-fields
return {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  config = function()
    local notify = require "notify"
    -- this for transparency
    notify.setup { 
      background_colour = "#000000",
      timeout = 500,
      render = "compact",
    }
    -- this overwrites the vim notify function
    vim.notify = notify.notify
  end,
}