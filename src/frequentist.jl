function one_sample_data()
    n = 15
    μ = 10
    σ = 4
    Random.seed!(1)
    A = rand(Normal(μ, σ), n)
    (n, μ, σ, A)
end

function plot_one_sample_data()
    (n, μ, σ, A) = one_sample_data()
    O = fill(1, length(A))
    xmin = minimum(A) - 3
    xmax = maximum(A) + 3
    p = plot(x=A, y=O,
        Coord.cartesian(; xmin, xmax, ymin=0.8, ymax=1.2),
        Guide.ylabel(nothing), Guide.yticks(ticks=nothing),
        Guide.xlabel(nothing),
    )
    imo = ImageOptions(p; height=1.2inch)
    caption = "$n normally distributed points with μ = $μ and σ = $σ"
    options = Options(imo; caption)
end

function plot_one_sample_data_mean()
    (n, μ, σ, A) = one_sample_data()
    O = fill(1, length(A))
    xmin = minimum(A) - 3
    xmax = maximum(A) + 3
    p = plot(x=A, y=O, yintercept=[mean(A)],
        Geom.point,
        Coord.cartesian(; xmin, xmax, ymin=0.8, ymax=1.2),
        Guide.ylabel(nothing), Guide.yticks(ticks=nothing),
        Guide.xlabel(nothing),
        Geom.hline(color="red"),
        layer(x=fill(mean(A), 2), y=[0.8, 1.2], Geom.line,
            style(default_color=colorant"#080000", line_width=0.7mm))
    )
    imo = ImageOptions(p; height=1.2inch)
    caption = "$n normally distributed points with μ = $μ and σ = $σ"
    options = Options(imo; caption)
end

function g()
    1
end

@memoize h() = 1
