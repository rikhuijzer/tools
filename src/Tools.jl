module Tools

import Books
import Pkg

using Colors
using Compose

include("includes.jl")
include("images.jl")

# Convenient for calling `generate_content(; M)`.
export M

const M = Tools

function build()
    println("Building tools")
    Books.gen(; M=Tools, fail_on_error=true)
    Books.build_all()
end

end # module
