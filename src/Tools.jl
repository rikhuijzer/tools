module Tools

import Pkg

using Books
using Colors
using Compose
using Distributions

include("includes.jl")
include("images.jl")
include("frequentist.jl")

function build()
    println("Building tools")
    Books.gen(; M=Tools, fail_on_error=true)
    Books.build_all()
end

end # module
