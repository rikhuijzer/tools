import Colors

using Compose
using Gadfly

inch = Gadfly.inch
function write_svg(file, p; w=6inch, h=4inch) 
    dir = joinpath(build_dir, "im")
    mkpath(dir)
    filename = "$file.svg"
    path = joinpath(dir, filename)
    Gadfly.draw(Gadfly.SVG(path, w, h), p)
    joinpath("im", filename)
end

function write_svg_and_md(file, p; w=6inch, h=4inch)
    image_path = write_svg(file, p; w, h)
    text = """
    ![$file]($image_path)
    """
    md_path = output_path(file)
    write(md_path, text)
end

function green_ci(file)
    c = context()
    composition = compose(c, 
        (c, text(0.12, 0.26, "John Doe")),
        (c, rectangle(0.1, 0.2, 0.5, 0.1), stroke("black"), fill(colorant"#f1f8ff")),
        (c, text(0.12, 0.38, "I've updated the documentation.")),
        (c, rectangle(0.1, 0.3, 0.5, 0.17), stroke("black"), fill("transparent")),
    )
    write_svg_and_md(file, composition)
end
