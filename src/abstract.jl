# create abstract type named RefElement
abstract type RefElement end


#create abstract type named Element1D that is a subtype of RefElement
abstract type Elements1D <: RefElement end
abstract type Elements2D <: RefElement end
abstract type Elements3D <: RefElement end


#create abstract type named Line that is a subtype of Elements1D
abstract type Line <: Elements1D end


#create abstract type named Quadrilateral and triangle that is a subtype of Elements2D
abstract type Quadrilateral <: Elements2D end
abstract type Triangle <: Elements2D end


#create abstract type named Hexahedron and Tetrahedron that is a subtype of Elements3D
abstract type Hexahedron <: Elements3D end
abstract type Tetrahedron <: Elements3D end


#create abstract type named ContinuousLine from Line
abstract type ContinuousLine <: Line end
abstract type DiscontinuousLine <: Line end
abstract type HybridizableDiscontinuousLine <: Line end


#create abstract type named ContinuousLine from Quadrlateral
abstract type ContinuousQuadrilateral <: Quadrilateral end
abstract type DiscontinuousQuadrilateral <: Quadrilateral end
abstract type HybridizableDiscontinuousQuadrilateral <: Quadrilateral end


#create abstract type named ContinuousLine from Triangle
abstract type ContinuousTriangle <: Triangle end
abstract type DiscontinuousTriangle <: Triangle end
abstract type HybridizableDiscontinuousTriangle <: Triangle end


#create abstract type named ContinuousLine from Hexahedron
abstract type ContinuousHexahedron <: Hexahedron end
abstract type DiscontinuousHexahedron <: Hexahedron end
abstract type HybridizableDiscontinuousHexahedron <: Hexahedron end


#create abstract type named ContinuousLine from Tetrahedron
abstract type ContinuousTetrahedron <: Tetrahedron end
abstract type DiscontinuousTetrahedron <: Tetrahedron end
abstract type HybridizableDiscontinuousTetrahedron <: Tetrahedron end
