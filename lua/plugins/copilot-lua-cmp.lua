return {
  "zbirenbaum/copilot.lua",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = false,
        keymap = {
        }
      }
    })
    vim.cmd("highlight default link CopilotSuggestion NONE")
  end,
}
