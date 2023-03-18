local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritepost plugin-setup.lua source <afile> | PackerSync
  augroup end
  ]])

  local status, packer = pcall(require, "packer")
  if not status then
      return
  end

  return packer.startup(function(use)

    use("wbthomason/packer.nvim")  
    
    -- use theme
    use { "catppuccin/nvim", as = "catppuccin" }

    use "nvim-lua/plenary.nvim"
   
    -- window maximizer
    use "szw/vim-maximizer"

    -- lualine
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- telescope fuzzy finder
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {'nvim-telescope/telescope.nvim', branch="0.1.x"}

    -- use nvim-tree, file explorer
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    if packer_bootstrap then
    require("packer").sync()
  end
  end)
