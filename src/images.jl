function gadfly_text(x, y, s::AbstractString)
    Guide.annotation(compose(context(), text(x, y, s)))
end

function image_and_caption(file, p; caption=file, w=6inch, h=4inch)
    image_path = write_svg(file, p; w, h)
    text = """
    ![$caption]($image_path){#fig:$file}
    """
end

line(x0, y0, x1, y1) = Compose.line([[(x0, y0), (x1, y1)]])

function green_ci()
    c = context()
    composition = compose(c,
        (c, text(0.07, 0.18, "John Doe"), fontsize(16px)),
        (c, rectangle(0.05, 0.05, 0.9, 0.2), stroke("black"), fill(colorant"#f1f8ff")),
        (c, text(0.07, 0.38, "I've added a test."), fontsize(16px)),
        (c, rectangle(0.05, 0.25, 0.9, 0.3), stroke("black"), fill("transparent")),
        (c, Compose.circle(0.1, 0.65, 0.02), stroke("gray"), linewidth(1.5px), fill("white")),
        (c, Compose.circle(0.1, 0.8, 0.02), stroke("gray"), linewidth(1.5px), fill("white")),
        (c, line(0.1, 0.55, 0.10, 0.9), stroke("gray"), linewidth(2px)),
        (c, line(0.07, 0.65, 0.13, 0.65), stroke("gray"), linewidth(2px)),
        (c, line(0.07, 0.8, 0.13, 0.8), stroke("gray"), linewidth(2px)),
        (c, text(0.16, 0.67, "Add test"), fill("gray"), fontsize(16px)),
        (c, text(0.16, 0.83, "Fix typo"), fill("gray"), fontsize(16px)),
        (c, line(0.88, 0.6, 0.91, 0.66), stroke("red"), linewidth(3px),
        line(0.91, 0.6, 0.88, 0.66))
    )
    caption = """
    Simplified view of the GitHub interface for pull-requests.
    It shows that John Doe did a failing commit and fixed it afterwards.
    """

    Options(composition; caption)
end
