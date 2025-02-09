return {
  'rebelot/kanagawa.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true,
    background = {
      dark = "wave",
    },
    colors = {
      palette = {
        -- Background colors
        sumiInk0 = "#EBEDEF",
        sumiInk1 = "#EBEDEF",
        sumiInk2 = "#EBEDEF",
        sumiInk3 = "#EBEDEF",
        sumiInk4 = "#EBEDEF",
        sumiInk5 = "#EBEDEF",
        sumiInk6 = "#555555",

        -- Popup and Floats
        waveBlue1 = "#dcdddf",
        waveBlue2 = "#dcdddf",

        -- Diff and Git
        winterGreen = "#ff2adc",
        winterYellow = "#b7fb11",
        winterRed = "#fe0000",
        winterBlue = "#c1fefe",
        autumnGreen = "#7ae121",
        autumnRed = "#C34043",
        autumnYellow = "#c84495",

        -- Diagnostics
        samuraiRed = "#fe0000",
        roninYellow = "#FF9E3B",
        waveAqua1 = "#11d7e8",
        dragonBlue = "#0256ff",

        -- Foreground and Comments
        oldWhite = "#000131",
        fujiWhite = "#350927",
        fujiGray = "#350927",
        oniViolet = "#371666",
        oniViolet2 = "#371666",
        crystalBlue = "#111c4a",
        springViolet1 = "#4c00b7",
        springViolet2 = "#4c00b7",
        springBlue = "#007878",
        waveAqua2 = "#000e78",

        springGreen = "#00a5a7",
        boatYellow1 = "#a4ac91",
        boatYellow2 = "#a4ac91",
        carpYellow = "#a3c946",

        sakuraPink = "#fc67b4",
        waveRed = "#d9171b",
        peachRed = "#ff0f51",
        surimiOrange = "#ee4e17",
        katanaGray = "#484950",
      },
    },
  },
  config = function(_, opts)
    require('kanagawa').setup(opts)
    vim.cmd("colorscheme kanagawa")

    -- Apply Lazy UI and floating window colors after the colorscheme loads
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      callback = function()
        vim.api.nvim_set_hl(0, "LazyNormal", { bg = "#EBEDEF", fg = "#000000" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#EBEDEF", fg = "#000000" })
        vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#EBEDEF", fg = "#000000" })
      end,
    })

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
