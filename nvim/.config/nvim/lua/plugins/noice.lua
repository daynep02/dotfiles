local nui = {
  'MunifTanjim/nui.nvim'
}
local noice = {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {},
  dependencies = {
    "MunfiTanjim/nui.nvim",
    "rcarriga/nvim-notify"
  }
}

return {
  noice, nui
}
