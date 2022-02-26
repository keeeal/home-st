
EPS = 1e-4;

module rounded_square(size, radius) {
    _radius = max(radius, EPS);
    minkowski() {
        square([size[0] - 2*_radius, size[1] - 2*_radius], center=true);
        circle(_radius);
    }
}

module frame(size, border, radius=0) {
    difference() {
        rounded_square(size, radius);
        rounded_square([size[0] - 2*border, size[1] - 2*border], radius - border);
    }
}
