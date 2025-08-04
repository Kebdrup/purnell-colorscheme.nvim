local M = {}

function M.setup()
	vim.g["colors_name"] = "purnell"
	vim.cmd.highlight("clear")

	local highlight = function(arg)
		if type(arg.bold) == "boolean" then
			vim.api.nvim_set_hl(0, arg.group, { fg = arg.fg, bg = arg.bg, bold = arg.bold })
		else
			vim.api.nvim_set_hl(0, arg.group, { fg = arg.fg, bg = arg.bg })
		end
	end

	local link = function(arg)
		vim.api.nvim_set_hl(0, arg.group, { link = arg.link_to })
	end

	-- Pallette here: https://coolors.co/5fb38e-70abaf-667ea7-d68437-d15c4f
	--
	-- Use :source $VIMRUNTIME/syntax/hitest.vim

	local colors = {
		black = "#000000",
		white = "#ffffff",
		grey_light = "#b3b3b3",
		grey_blue = "#85A3B0",
		grey = "#606060",
		grey_dark = "#404040",
		red = "#d15c4f",
		green = "#00ff00",
		blue_dark = "#667ea7",
		blue_light = "#70abaf",
		orange_light = "#ddb187",
		orange = "#d68437",
		yellow = "#e7c96e",
	}

	-- Core stuff
	highlight({ group = "Normal", fg = colors.white, bg = colors.black })
	highlight({ group = "NormalFloat", fg = colors.white, bg = colors.black })
	highlight({ group = "EndOfBuffer", fg = colors.white, bg = colors.black })
	highlight({ group = "Function", fg = colors.white, bg = colors.black })
	highlight({ group = "String", fg = colors.grey_blue, bg = colors.black })
	highlight({ group = "Identifier", fg = colors.grey_light, bg = colors.black })
	highlight({ group = "Special", fg = colors.grey, bg = colors.black })
	highlight({ group = "Type", fg = colors.blue_light, bg = colors.black })
	highlight({ group = "Statement", fg = colors.blue_dark, bg = colors.black, bold = true })
	highlight({ group = "Comment", fg = colors.grey, bg = colors.black, bold = true })

	-- Misc
	highlight({ group = "DiagnosticError", fg = colors.orange, bg = colors.black })
	highlight({ group = "DiagnosticWarn", fg = colors.orange, bg = colors.black })
	highlight({ group = "DiagnosticInfo", fg = colors.blue_dark, bg = colors.black })
	highlight({ group = "DiagnosticHint", fg = colors.grey_dark, bg = colors.black })
	highlight({ group = "MoreMsg", fg = colors.grey_dark, bg = colors.black })
	highlight({ group = "Question", fg = colors.grey_dark, bg = colors.black })
	highlight({ group = "QuickFixLine", fg = colors.grey_dark, bg = colors.black })

	-- Treesitter
	highlight({ group = "@variable", fg = colors.white, bg = colors.black })

	-- Oil / Files
	highlight({ group = "Directory", fg = colors.white, bg = colors.black })

	-- Typescript
	link({ group = "@constructor.typescript", link_to = "Function" })
	link({ group = "@lsp.typemod.variable.defaultLibrary.typescript", link_to = "Identifier" })

	-- TSX
	link({ group = "@tag.builtin.tsx", link_to = "Normal" })
	link({ group = "@tag.tsx", link_to = "Normal" })
	link({ group = "@tag.delimiter.tsx", link_to = "Normal" })
	link({ group = "@lsp.typemod.variable.defaultLibrary.typescriptreact", link_to = "Identifier" })

	-- Python
	highlight({ group = "pythonDecoratorName", fg = colors.grey_blue, bg = colors.black })

	-- JSON
	highlight({ group = "jsonKeyword", fg = colors.white, bg = colors.black })

	-- HTML
	highlight({ group = "htmlTagName", fg = colors.white, bg = colors.black })
end

return M
