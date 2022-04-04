vim.g.startify_disable_at_vimenter = 1
vim.g.startify_session_delete_buffers = 1
vim.g.startify_session_dir = '~/vimfiles/session'
vim.g.startify_files_number = 13
vim.g.startify_enable_special = 0 
vim.g.startify_custom_indices = { 'w', 'r', 'y', 'u', 'a', 'd',
                                  'f', 'g', 'h', 'l', 'z', 'x',
                                  'c', 'o', 'p', 'n', 'm' }

vim.g.startify_list_order = {
      { ' bookmarks:' }, 'bookmarks',
      { ' sessions:' }, 'sessions',
      { ' recently opened files:' }, 'files',
      { ' recently modified files in the current directory:' }, 'dir',
}
