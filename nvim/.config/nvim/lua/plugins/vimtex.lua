return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  ft = { 'tex' },
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_mainfile_mode = 0
    vim.g.vimtex_compiler_latexmk = {
      build_dir = 'build', -- separate folder for output
      continuous = 1, -- auto-build on save
    }
  end,
}
