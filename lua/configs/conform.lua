local prettierOption = { "prettierd", "prettier", stop_after_first = true }

local ft_with_prettier = {
  "javascript",
  "typescript",
  "javascriptreact",
  "typescriptreact",
  "vue",
  "svelte",
  "astro",
  "css",
  "scss",
  "html",
  "json",
  "yaml",
  "graphql",
}

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

for _, ft in ipairs(ft_with_prettier) do
  options.formatters_by_ft[ft] = prettierOption
end

return options
