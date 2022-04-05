local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local function footer()
    local plugins_count = 0
    if vim.fn.has("win32") == 1 then
        plugins_count = vim.fn.len(vim.fn.globpath("~/AppData/Local/nvim-data/site/pack/packer/start", "*", 0, 1))
    else
        plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))
    end
    -- local datetime = os.date(" %Y-%m-%d %H:%M:%S")
    local version = vim.version()
    local nvim_version_info = "   " .. version.major .. "." .. version.minor .. "." .. version.patch
    return {
        "",
        "",
        "",
        "",
        "",
        " Plugins:   " .. plugins_count .. "    ",
        " Neovim: " .. nvim_version_info,
    }
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
[[███    ██ ███████  ██████  ██    ██ ██ ███    ███]],
[[████   ██ ██      ██    ██ ██    ██ ██ ████  ████]],
[[██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██]],
[[██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██]],
[[██   ████ ███████  ██████    ████   ██ ██      ██]],
 -- [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
 -- [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
 -- [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
 -- [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
 -- [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
 -- [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
 [[]],
 [[]],
 [[]],
 [[]],
 [[]],
 [[]],
 [[]],
 [[]],
 [[]],
 [[]],
}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("p", "  Projects", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
    dashboard.button("s", "  Sessions", ":SessionManager load_session<CR>"),
    dashboard.button("l", "  Last Session", ":SessionManager load_last_session<CR>"),
    dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
    dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

dashboard.section.footer.val = {}
-- dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Comment"
dashboard.section.buttons.opts.hl = "Type"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
