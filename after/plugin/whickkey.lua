local wk = require("which-key")

wk.register({
    a = {
        name = "Action",
        a = "Action Selected",
        c = "Code Action",
        s = "Source Action",
    },
    c = {
        name = "List",
        c = "List Commands",
        d = "List Diagnostics",
        e = "List Extensions",
        l = "Codelens Action",
    },
    f = {
        name = "Format",
        f = "Format Selected"
    },
    j = {
        name = "CocJump",
        j = "CocNext",
        k = "CocPrev"
    },
    p = {
        name = "Project",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        v = "Virtual File Browser"
    },
    q = {
        name = "QuickFix",
        f = "CocFixCurrent"
    },
    r = {
        name = "Refactor",
        e = "CodeAction Refactor",
        n = "Rename",
        r = "CodeAction Refactor Selected",
    },
    s = {
        name = "String",
        s = "Substitute",
        y = "List Symbols"
    },
    x = {
        name = "Shell",
        x = "Set File as Executable"
    }
}, { prefix = "<leader>" })
