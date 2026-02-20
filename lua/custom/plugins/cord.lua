return {
  'vyfor/cord.nvim',
  build = './build || .\\build',
  event = 'VeryLazy',
  opts = {
    usercmds = {
      enable = true,
    },
    editor = {
      image = 'https://raw.githubusercontent.com/vyfor/cord.nvim/master/assets/neovim.png',
      tooltip = 'nvim',
    },
    display = {
      workspace_blacklist = {},
    },
    text = {
      workspace = 'kickstart.nvim',
    },
  },
}
