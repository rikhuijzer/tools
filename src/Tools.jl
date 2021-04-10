module Tools

import Pkg

using Books
using Colors
using Compose
using Gadfly
using DataFrames
using Distributions
using HypothesisTests
using Random
using Statistics

include("includes.jl")
include("images.jl")
include("frequentist.jl")

r1(x) = round(x; digits=1)
r2(x) = round(x; digits=2)
r3(x) = round(x; digits=3)

function build()
    println("Building tools")
    Books.gen(; M=Tools, fail_on_error=true)
    Books.build_all()
end

end # module
