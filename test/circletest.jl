using Grassmann, Makie, GLMakie, Meshes; 
basis"2" 

# points = Meshes.Point2[(0,0), (1,0), (0,1), (1,1), (0.25,0.5), (0.75,0.5)]
# tris  = connect.([(1,5,3), (4,6,2)], Triangle)
# quads = connect.([(1,2,6,5), (4,3,5,6)], Quadrangle)
# mesh = SimpleMesh(points, [tris; quads])
points = Meshes.Point3[(0,0,1), (1,0,0), (0,1,0), (0,0,0)]
tris  = Meshes.connect.([(1,2,3), (1,2,4), (1,3,4), (2,3,4)], Meshes.Triangle)
mesh = SimpleMesh(points, tris)
#rect = GeometryBasics.Rect(GeometryBasics.Vec(0.0, 0.0), GeometryBasics.Vec(1.0, 1.0))
#mesh = GeometryBasics.mesh(rect)

t = initmesh(mesh)[3]
#bundle = initmesh(mesh)[2]
Makie.mesh(t,
color = "blue",
    figure = (resolution = (1000, 1000),)
)
