local isLoaded, toggleTerm = pcall(require, "toggleterm")

if not isLoaded then
	print("failed to load toggleterm")
	return
end

toggleTerm.setup{}
