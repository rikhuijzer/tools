module Tools

import Pkg

using Books
using Colors
using Compose

include("includes.jl")
include("images.jl")

const M = Tools

function build()
    println("Building tools")
    Books.gen(; M=Tools, fail_on_error=true)
    Books.build_all()
end

end # module
