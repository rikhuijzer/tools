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
    @show image_path
    text = """
    ![$file]($image_path)
    """
    md_path = output_path(file)
    write(md_path, text)
end

function green_ci(file)
    composition = compose(compose(context(), rectangle()), fill("tomato"))
    write_svg_and_md(file, composition)
end
