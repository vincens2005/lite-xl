-- mod-version:2 -- lite-xl 2.0
local syntax = require "core.syntax"

syntax.add {
  files = { "%.css$" },
  patterns = {
    { pattern = "\\.",                type = "normal"   },
    { pattern = "//.-\n",             type = "comment"  },
    { pattern = { "/%*", "%*/" },     type = "comment"  },
    { pattern = { '"', '"', '\\' },   type = "string"   },
    { pattern = { "'", "'", '\\' },   type = "string"   },
    { pattern = "[%a][%w-]*%s*%f[:]", type = "keyword"  },
    { pattern = "#%x%x%x%x%x%x%f[%W]",type = "string"   },
    { pattern = "#%x%x%x%f[%W]",      type = "string"   },
    { pattern = "-?%d+[%d%.]*p[xt]",  type = "number"   },
    { pattern = "-?%d+[%d%.]*deg",    type = "number"   },
    { pattern = "-?%d+[%d%.]*",       type = "number"   },
    { pattern = "[%a_][%w_]*",        type = "symbol"   },
    { pattern = "#[%a][%w_-]*",       type = "keyword2" },
    { pattern = "@[%a][%w_-]*",       type = "keyword2" },
    { pattern = "%.[%a][%w_-]*",      type = "keyword2" },
    { pattern = "[{}:]",              type = "operator" },
  },
  symbols = {},
}
