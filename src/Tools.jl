module Tools

import Books
import Pkg

using Colors
using Compose

include("includes.jl")
include("images.jl")

# Convenient for calling `generate_content(; M)`.
export M

M = Tools

function build()
    println("Building tools")
    rm(build_dir; force=true, recursive=true)
    mkpath(build_dir)

    Books.generate_content(; M=Tools, fail_on_error=true)
    Books.build_all()
end

end # module
