using IsoparametricElements
using Test

# Define the test cases
abstract_types = (AbstractIsoElement,
    AbstractDimension,
    AbstractShape)

dimension_types = (Dim1, Dim2, Dim3)

shape_types = (Line,
    Quadrilateral,
    Triangle,
    Hexahedron,
    Tetrahedron)

order_types = (LinearOrder,
    QuadraticOrder,
    CubicOrder,
    QuarticOrder,
    FithOrder)

interpolation_type = (
    Lagrange, 
    Serendipity
)

interpoints_type = (
    LobatoPoints,
    ChevyshevPoints
)

field_type = (
    ScalarField,
    VectorField,
    TraceField
)

coords_type =(
    CartesianCoords, 
    PolarCoords, 
    AxysimmetricCoords
)

continuity_type = (
    Continuous,
    Discontinuous,
    HybridizableDiscontinuous
)

# Define the tests
@testset "Abstract Tests" begin
    # Test that each abstract type is a subtype of Any
    for abstract in abstract_types
        @test abstract <: Any
    end

    # Test that each dimension type is a subtype of AbstractDimension and has the correct dimension
    for (i, dim) in enumerate(dimension_types)
        @test dim <: AbstractDimension
        @test dim <: AbstractDimension{i}
    end

    # Test that each shape type is a subtype of AbstractShape
    for shape in shape_types
        @test shape <: AbstractShape
    end

    # Test that each order type is a subtype of AbstractOrder and has the correct order
    for (i, order) in enumerate(order_types)
        @test order <: AbstractOrder
        @test order <: AbstractOrder{i}
    end

    # Test that each interpolation type is a subtype of AbstractInterpolation
    for interpolation in interpolation_type
        @test interpolation <: AbstractInterpolation
    end

    # Test that each interpoints type is a subtype of AbstractInterPoints
    for interpoints in interpoints_type
        @test interpoints <: AbstractInterPoints
    end

    # Test that each field type is a subtype of AbstractField
    for field in field_type
        @test field <: AbstractField
    end
    # Test that each coords type is a subtype of AbstractCoords
    for coords in coords_type
        @test coords <: AbstractCoords
    end

    # Test that each continuity type is a subtype of AbstractContinuity
    for continuity in continuity_type
        @test continuity <: AbstractContinuity
    end
end
