local isLoaded, nvimTree = pcall(require, 'nvim-tree')

if not isLoaded then
    return
end

nvimTree.setup({
    sort_by = "case_sensitive",
    view = {
      adaptive_size = false,
      mappings = {
        list = {
          { key = "u", action = "dir_up" },
        },
      },
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
})