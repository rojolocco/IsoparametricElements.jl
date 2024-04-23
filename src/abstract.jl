# Create abstract type named AbstractIsoElement
abstract type AbstractIsoElement end


# Create abstract typeLinear, Linearar, Lineared AbstractDimension with a parameter named dims
abstract type AbstractDimension{dims} end

const Dim1 = AbstractDimension{1}
const Dim2 = AbstractDimension{2}
const Dim3 = AbstractDimension{3}


# Create abstract type named AbstractShape with a parameter named shape
abstract type AbstractShape{dims} end

struct Line{dims<:Dim1} <: AbstractShape{dims} end
struct Quadrilateral{dims<:Dim2} <: AbstractShape{dims} end
struct Triangle{dims<:Dim2} <: AbstractShape{dims} end
struct Hexahedron{dims<:Dim3} <: AbstractShape{dims} end
struct Tetrahedron{dims<:Dim3} <: AbstractShape{dims} end


# Create abstract type named AbstractOrder with a parameter named order
abstract type AbstractOrder{order} end

const LinearOrder = AbstractOrder{1}
const QuadraticOrder = AbstractOrder{2}
const CubicOrder = AbstractOrder{3}
const QuarticOrder = AbstractOrder{4}
const FithOrder = AbstractOrder{5}


# Create abstract type named AbstractInterpolation
abstract type AbstractInterpolation end

struct Lagrange <: AbstractInterpolation end
struct Serendipity <: AbstractInterpolation end


# Create abstract type named AbstractInterPoints
abstract type AbstractInterPoints end

struct LobatoPoints <: AbstractInterPoints end
struct ChevyshevPoints <: AbstractInterPoints end


# Create abstract type named AbstractField
abstract type AbstractField end

struct ScalarField <: AbstractField end
struct VectorField <: AbstractField end
struct TraceField <: AbstractField end


# Create abstract type named AbstractCoords
abstract type AbstractCoords end

struct CartesianCoords <: AbstractCoords end
struct PolarCoords <: AbstractCoords end
struct AxysimmetricCoords <: AbstractCoords end


# Create abstract type named AbstractContinuity
abstract type AbstractContinuity end

struct Continuous <: AbstractContinuity end
struct Discontinuous <: AbstractContinuity end
struct HybridizableDiscontinuous <: AbstractContinuity end
