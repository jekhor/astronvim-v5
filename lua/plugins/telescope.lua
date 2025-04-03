if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

local actions = require "telescope.actions"

return {
  "nvim-telescope/telescope.nvim",
  commit = "origin/HEAD",
  opts = {
    defaults = {
      layout_config = {
        scroll_speed = 1
      },
      mappings = {
        i = {
          ["<M-Up>"] = actions.preview_scrolling_up,
          ["<M-Down>"] = actions.preview_scrolling_down,
        },
        n = {
          ["<M-Up>"] = actions.preview_scrolling_up,
          ["<M-Down>"] = actions.preview_scrolling_down,
        }
      }
    },
    pickers = {
      git_branches = {
        mappings = {
          i = {
            ["<C-d>"] = actions.preview_scrolling_down,
          },
        },
        previewer = require("telescope.previewers").new_termopen_previewer({
          get_command = function(entry)
            return {
              "git",
              "--no-pager",
              "log",
              --"--graph",
              "--max-count=1000",
              "--pretty=format:%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset",
--              "--pretty=format:%h -%d %s (%cr)",
              "--abbrev-commit",
              "--date=relative",
              entry.value,
            }
          end,
          scroll_fn = function(self, direction)
            if not self.state then return end

            local input = direction > 0 and [[]] or [[]]
            local count = math.abs(direction)

            vim.api.nvim_buf_call(
              self.state.termopen_bufnr,
              function() vim.cmd([[normal! ]] .. count .. input) end
            )
          end,
        }),
      },
    }
  }
}
