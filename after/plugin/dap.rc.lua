local status, dap = pcall(require, 'dap')
if (not status) then return end

dap.adapters.rust_gdb = {
	type = 'executable',
	command = 'rust-gdb',
}

dap.configurations.rust = { {
	type = 'rust_gdb',
	request = 'launch',
	name = 'Launch file',
	program = 'target/debug/advent-of-code-2022'
} }
