function one_sample_data()
    n = 40
    μ = 10
    σ = 3
    Random.seed!(1)
    A = rand(Normal(μ, σ), n)
    μ₀ = μ + 2
    (n, μ, σ, A, μ₀)
end

function plot_one_sample_data()
    n, μ, σ, A, μ₀ = one_sample_data()
    O = fill(1, length(A))
    xmin = 0
    xmax = 20
    p = plot(x=A, y=O,
        Coord.cartesian(; xmin, xmax, ymin=0.8, ymax=1.2),
        Guide.ylabel(nothing), Guide.yticks(ticks=nothing),
        Guide.xlabel(nothing),
    )
    imo = ImageOptions(p; height=1.2inch)
    caption = "$n points generated from a normal distribution with μ = $μ and σ = $σ."
    options = Options(imo; caption)
end

function plot_one_sample_data_mean()
    n, μ, σ, A, μ₀ = one_sample_data()
    O = fill(1, length(A))
    xmin = 0
    xmax = 20
    μₛ = mean(A)
    p = plot(x=A, y=O,
        Geom.point,
        Coord.cartesian(; xmin, xmax, ymin=0.8, ymax=1.2),
        Guide.ylabel(nothing), Guide.yticks(ticks=nothing),
        Guide.xlabel(nothing),
        layer(x=fill(μₛ, 2), y=[0.8, 1.2], Geom.line,
            style(default_color=colorant"#080000", line_width=0.7mm)),
        layer(x=fill(μ₀, 2), y=[0.8, 1.2], Geom.line,
            style(default_color=colorant"#080000", line_width=0.7mm)),
        gadfly_text(μₛ+0.2, 1.15, "μₛ"),
        gadfly_text(μ₀+0.2, 1.15, "μ₀")
    )
    imo = ImageOptions(p; height=1.2inch)
    caption = """
        $n points generated from a normal distribution with μ = $μ and σ = $σ.
        Also, the sample mean μₛ and the null-hypothesis mean μ₀ are shown.
        """
    options = Options(imo; caption)
end

function plot_one_sample_data_distribution()
    n, μ, σ, A, μ₀ = one_sample_data()
    xmin = 0
    xmax = 20
    n = Normal(mean(A), std(A))
    pdf = Distributions.pdf
    p = plot(xmin = [quantile(n, 0.01)], xmax = [quantile(n, 0.99)], y = [x -> pdf(n, x)],
        Stat.func, Geom.line, Guide.xlabel("x"), Guide.ylabel("density"),
        # layer(Stat.density, Geom.line, Geom.polygon(fill=true, preserve_order=true), alpha=[0.4]),
    )
end

function one_sample_tests()
    n, μ, σ, A, μ₀ = one_sample_data()
    μ₀ = μ + 4
    t_test = HypothesisTests.OneSampleTTest(A, μ₀)
    t_conf = confint(t_test)
    t_lower, t_upper = r1.(t_conf)
    t_p = pvalue(t_test) |> r3
    df = DataFrame(
        model = ["t-test"],
        p = [t_p],
        lower = [t_lower],
        upper = [t_upper]
    )
    caption = raw"Comparison of multiple models being fitted on our sample data with alternative mean " * raw"$\mu_0 = μ + 4 = " * "$μ₀\$."
    options = Options(df; caption)
end
