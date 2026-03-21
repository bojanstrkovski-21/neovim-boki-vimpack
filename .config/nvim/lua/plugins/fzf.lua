-- require('fzf-lua').setup()
-- 
-- vim.keymap.set('n', '<leader>ff', function()
  -- require('fzf-lua').files()
-- end, { desc = "Find Files in project directory" })
-- 
-- vim.keymap.set('n', '<leader>cs', function()
  -- local function set_colorscheme_and_save(name)
    -- vim.cmd('colorscheme ' .. name)
    -- local file = io.open(vim.fn.stdpath('config') .. '/lua/current-theme.lua', 'w')
    -- file:write('vim.cmd("colorscheme ' .. name .. '")\n')
    -- file:close()
  -- end
-- 
  -- local colors = vim.fn.getcompletion('', 'color')
-- require('fzf-lua').fzf_exec(colors, {
  -- prompt = 'Colorschemes> ',
  -- actions = {
    -- ['default'] = function(selected)
      -- if selected and selected[1] then
        -- set_colorscheme_and_save(selected[1])
      -- end
    -- end,
  -- },
  -- preview = false,
-- })
-- end, { desc = "FZF Colorscheme Picker (persistent)" })


-- require('fzf-lua').setup()

-- Find files
vim.keymap.set('n', '<leader>ff', function()
  require('fzf-lua').files()
end, { desc = "Find Files in project directory" })

-- Colorscheme picker with persistence
vim.keymap.set('n', '<leader>cs', function()
  local function set_colorscheme_and_save(name)
    vim.cmd('colorscheme ' .. name)
    local file = io.open(vim.fn.stdpath('config') .. '/lua/current-theme.lua', 'w')
    file:write('vim.cmd("colorscheme ' .. name .. '")\n')
    file:close()
  end
  require('fzf-lua').colorschemes({
    actions = {
      ["default"] = function(selected)
        set_colorscheme_and_save(selected[1])
      end
    }
  })
end, { desc = "FZF Colorscheme Picker (persistent)" })