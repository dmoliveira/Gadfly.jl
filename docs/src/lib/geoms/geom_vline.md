```@meta
Author = "Daniel C. Jones"
```

# Geom.vline

Draw vertical lines across the plot canvas.

## Aesthetics

  * `xintercept`: X-axis intercept

## Arguments

  * `color`: Color of the lines.
  * `size`: Width of the lines.
  * `style`: Style of the lines.

## Examples

```@setup 1
using RDatasets
using Gadfly
Gadfly.set_default_plot_size(14cm, 8cm)
```

```@example 1
plot(dataset("datasets", "iris"), x="SepalLength", y="SepalWidth",
   xintercept=[5.0, 7.0], Geom.point, Geom.vline(style=[:solid,[1mm,1mm]]))
```

```@example 1
# Colors and widths of lines can be changed. This works separately from the
# `color` and `size` aesthetics.  They may be either a scalar or a vector of
# length(xintercept).
plot(dataset("datasets", "iris"), x="SepalLength", y="SepalWidth",
   xintercept=[5.0, 7.0], Geom.point,
   Geom.vline(color=["orange","red"], size=[2mm,3mm]))
```
