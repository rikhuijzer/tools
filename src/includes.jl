function julia_and_pkgs_info()
    io = IOBuffer()
    Pkg.status(; io)
    text = String(take!(io))
    lines = split(text, '\n')[3:end-1]
    lines_without_id = [l[14:end] for l in lines]
    pkgs = join(lines_without_id, '\n')

    text = """
    This website is built with Julia $VERSION and

    ```
    $pkgs
    ```
    """
end

function git_version_text()
    io = IOBuffer()
    cmd = `git rev-parse HEAD`
    run(pipeline(cmd; stdout=io))
    out = String(take!(io))
    hash = strip(out)
    text = """
    Specifically, it is generated by <https://github.com/rikhuijzer/tools> at commit `$hash`.
    """
end

function versions()
    text = """
    $(julia_and_pkgs_info())

    $(git_version_text())
    """
end
