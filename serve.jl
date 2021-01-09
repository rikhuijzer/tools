using LiveServer

dir_files(dir) = ["$dir/$file" for file in readdir(dir)]
interesting_files = [
    "references.bib",
    "metadata.yml",
    "Makefile",
    dir_files("images")...,
    dir_files("templates")...,
    dir_files("chapters")...
]

function myrun()
    cmd = `make --always-make html`
    try 
        stdout = IOBuffer()
        run(pipeline(cmd; stdout))
        println(String(take!(stdout)))
    catch e
        println(e)
    end
end

function custom_callback(file_path::AbstractString) 
    if file_path in interesting_files
        println("Running `cmd`")
        myrun()
    end
    LiveServer.file_changed_callback(file_path)
end

sw = LiveServer.SimpleWatcher(custom_callback)

for file in interesting_files
    println("Watching $file for changes")
    LiveServer.watch_file!(sw, file)
end

const port = 8003

myrun()

println()

serve(sw; verbose=true, port, dir="build/html")
