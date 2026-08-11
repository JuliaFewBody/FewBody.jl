```@meta
CurrentModule = FewBody
```

# User Guide

Before starting the tutorial, complete the [Installation](@ref) section. Feature requests and bug reports are handled through GitHub [Issues](https://github.com/JuliaFewBody/FewBody.jl/issues).

## Tutorial

```@repl
import FewBody
FewBody.hello()
```

## Examples

```@example
import FewBody
text_1 = FewBody.hello()
text_2 = "Goodbye, World!"
text_1 * " " * text_2
```
