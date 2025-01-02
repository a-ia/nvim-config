return {
  -- https://github.com/rebelot/kanagawa.nvim
  'rebelot/kanagawa.nvim', -- You can replace this with your favorite colorscheme
  lazy = false, -- We want the colorscheme to load immediately when starting Neovim
  priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
  opts = {
    -- Replace this with your scheme-specific settings or remove to use the defaults
    transparent = true,
    background = {
      -- light = "lotus",
      dark = "wave", -- "wave, dragon"
    },
    colors = {
      palette = {
        -- Background colors
        sumiInk0 = "#3A3A3A", -- modified
        sumiInk1 = "#3A3A3A", -- modified
        sumiInk2 = "#3A3A3A", -- modified
        sumiInk3 = "#3A3A3A", -- modified
        sumiInk4 = "#3A3A3A", -- modified
        sumiInk5 = "#3A3A3A", -- modified
        sumiInk6 = "#F9E7C0", -- modified

        -- Popup and Floats
        waveBlue1 = "#e8e8f2", -- modified
        waveBlue2 = "#e8e8f2", -- modified

        -- Diff and Git
        winterGreen = "#2B3328",
        winterYellow = "#49443C",
        winterRed = "#43242B",
        winterBlue = "#252535",
        autumnGreen = "#76A56A", -- modified
        autumnRed = "#C34043",
        autumnYellow = "#DCA561",

        -- Diag
        samuraiRed = "#E82424",
        roninYellow = "#FF9E3B",
        waveAqua1 = "#7E9CD8", -- modified
        dragonBlue = "#7FB4CA", -- modified

        -- Foreground and Comments
        oldWhite = "#ffffff",
        fujiWhite = "#F9E7C0", -- modified
        fujiGray = "#ffaaee", -- modified
        oniViolet = "#BFA3E6", -- modified
        oniViolet2 = "#BCACDB", -- modified
        crystalBlue = "#8CABFF", -- modified
        springViolet1 = "#938AA9",
        springViolet2 = "#9CABCA",
        springBlue = "#7FC4EF", -- modified
        waveAqua2 = "#EC9EC0", -- modified

        springGreen = "#98BB6C",
        boatYellow1 = "#938056",
        boatYellow2 = "#C0A36E",
        carpYellow = "#FFEE99", -- modified

        sakuraPink = "#D27E99",
        waveRed = "#E46876",
        peachRed = "#FF5D62",
        surimiOrange = "#FFAA44", -- modified
        katanaGray = "#717C7C",
      },
    },
  },
  config = function(_, opts)
    require('kanagawa').setup(opts) -- Replace this with your favorite colorscheme
    vim.cmd("colorscheme kanagawa") -- Replace this with your favorite colorscheme

    -- Custom diff colors
    vim.cmd([[
      autocmd VimEnter * hi DiffAdd guifg=#00FF00 guibg=#005500
      autocmd VimEnter * hi DiffDelete guifg=#FF0000 guibg=#550000
      autocmd VimEnter * hi DiffChange guifg=#CCCCCC guibg=#555555
      autocmd VimEnter * hi DiffText guifg=#00FF00 guibg=#005500
    ]])

    -- Custom border colors
    vim.cmd([[
      autocmd ColorScheme * hi NormalFloat guifg=#F9E7C0 guibg=#1F1F1F
      autocmd ColorScheme * hi FloatBorder guifg=#F9E7C0 guibg=#1F1F1F
    ]])
  end
}
