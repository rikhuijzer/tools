function one_sample_data()
    n = 12
    μ = 10
    σ = 3
    Random.seed!(1)
    A = rand(Normal(μ, σ), n)
    μ₀ = μ + 4
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
    mₛ = mean(A)
    p = plot(x=A, y=O,
        Geom.point,
        Coord.cartesian(; xmin, xmax, ymin=0.8, ymax=1.2),
        Guide.ylabel(nothing), Guide.yticks(ticks=nothing),
        Guide.xlabel(nothing),
        layer(x=fill(mₛ, 2), y=[0.8, 1.2], Geom.line,
            style(default_color=colorant"#080000", line_style=[:dot], line_width=0.7mm)),
        layer(x=fill(μ₀, 2), y=[0.8, 1.2], Geom.line,
            style(default_color=colorant"#080000", line_style=[:dot], line_width=0.7mm)),
        gadfly_text(mₛ+0.2, 1.15, "mₛ"),
        gadfly_text(μ₀+0.2, 1.15, "μ₀")
    )
    imo = ImageOptions(p; height=1.2inch)
    caption = """
        $n points generated from a normal distribution with μ = $μ and σ = $σ.
        Also, the sample mean mₛ and the null-hypothesis mean μ₀ are shown.
        """
    options = Options(imo; caption)
end

function plot_one_sample_data_distribution()
    n, μ, σ, A, μ₀ = one_sample_data()
    mₛ = mean(A)
    sₛ = std(A)
    xmin = 0
    xmax = 20
    n = Normal(mₛ, sₛ)
    pdf = Distributions.pdf
    lower_ci = quantile(n, 0.025)
    upper_ci = quantile(n, 0.975)
    p = plot(xmin = [xmin], xmax = [xmax], y = [x -> pdf(n, x)],
        Stat.func, Geom.line, Guide.xlabel(""), Guide.ylabel(""),
        Guide.yticks(ticks=nothing),
        layer(x=fill(mₛ, 2), y=[0, pdf(n, mₛ)], Geom.line,
            style(default_color=colorant"#080000", line_style=[:dot], line_width=0.7mm)
        ),
        gadfly_text(mₛ+0.2, pdf(n, mₛ+sₛ), "mₛ"),
        layer(x=fill(μ₀, 2), y=[0, pdf(n, mₛ)], Geom.line,
            style(default_color=colorant"#080000", line_style=[:dot], line_width=0.7mm)
        ),
        gadfly_text(μ₀+0.2, pdf(n, mₛ+sₛ), "μ₀"),
        layer(x=fill(lower_ci, 2), y=[0, pdf(n, lower_ci)], Geom.line),
        layer(x=fill(upper_ci, 2), y=[0, pdf(n, upper_ci)], Geom.line)
    )
    imo = ImageOptions(p; height=2.5inch)
    caption = raw"""
        Normal distribution for the sample mean and standard deviation.
        The means for the sample mean mₛ and null-hypothesis μ₀ are indicated by dashed black lines.
        The bounds for the 95% confidence interval are indicated by blue solid lines.
        """
    Options(imo; caption)
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
