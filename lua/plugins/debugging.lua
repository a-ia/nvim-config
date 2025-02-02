return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "theHamsta/nvim-dap-virtual-text",
            "nvim-telescope/telescope-dap.nvim",
        },
        config = function()
            local dap = require("dap")
            
            dap.adapters.codelldb = {
                type = 'server',
                port = "${port}",
                executable = {
                    command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
                    args = {"--port", "${port}"},
                    -- Enable memory references
                    options = {
                        initialize_timeout_sec = 20,
                        memory_references = true,
                    },
                }
            }

            dap.configurations.cpp = {
                {
                    name = "Launch file",
                    type = "codelldb",
                    request = "launch",
                    program = function()
                        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/build/', 'file')
                    end,
                    cwd = '${workspaceFolder}',
                    stopOnEntry = false,
                    -- Memory visualization enabled here
                    showMemoryReferences = true,
                    -- Detailed variable information enabled here
                    showLocalVariables = true,
                    showGlobalVariables = true,
                    visualizePointers = true,
                }
            }

            -- Memory inspection expressions
            dap.defaults.fallback.focus_terminal = true
            dap.defaults.fallback.force_external_terminal = false

        end
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {"mfussenegger/nvim-dap"},
        config = function()
            local dap, dapui = require("dap"), require("dapui")
            
            dapui.setup({
                icons = { expanded = "▾", collapsed = "▸", current_frame = "▸" },
                mappings = {
                    expand = { "<CR>", "<2-LeftMouse>" },
                    open = "o",
                    remove = "d",
                    edit = "e",
                    repl = "r",
                    toggle = "t",
                },
                layouts = {
                    {
                        elements = {
                            { id = "scopes", size = 0.33 },
                            { id = "breakpoints", size = 0.17 },
                            { id = "stacks", size = 0.25 },
                            { id = "watches", size = 0.25 },
                        },
                        size = 0.33,
                        position = "right"
                    },
                    {
                        elements = {
                            { id = "repl", size = 0.45 },
                            { id = "console", size = 0.55 },
                        },
                        size = 0.27,
                        position = "bottom",
                    },
                },
                render = {
                    max_value_lines = 3,
                    max_type_length = 100,
                    show_variable_types = true,
                }
            })

            -- Auto open/close dap-ui
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
                -- Useful memory watches by default
                dapui.elements.watches.add("this")
                dapui.elements.watches.add("&this")
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end
    }
}
