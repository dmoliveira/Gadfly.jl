using Gadfly

set_default_plot_size(6inch, 3inch)

n = 10
plot(x=rand(n), y=rand(n), color=sinh.(rand(n)), Scale.color_asinh)
