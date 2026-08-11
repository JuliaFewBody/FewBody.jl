using FewBody
using Documenter

DocMeta.setdocmeta!(FewBody, :DocTestSetup, :(using FewBody); recursive = true)

makedocs(;
    modules = [FewBody],
    authors = "Shuhei Ohno, Martin Mikkelsen",
    sitename = "FewBody.jl",
    format = Documenter.HTML(;
        canonical = "https://JuliaFewBody.github.io/FewBody.jl",
        edit_link = "main",
        assets = String[],
    ),
    pages = [
        "Home" => "index.md",
        "User Guide" => "user.md",
        "Developer Guide" => "developer.md",
        "API Reference" => "api.md",
    ],
)

deploydocs(;
    repo = "github.com/JuliaFewBody/FewBody.jl",
    devbranch = "main",
)
