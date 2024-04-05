using IsoparametricElements
using Test

@testset "Main Type" begin
    @test RefElement <: Any
end


@testset "Subtypes of RefElement" begin
    @test Elements1D <: RefElement
    @test Elements2D <: RefElement
    @test Elements3D <: RefElement
    # @test isequal(subtypes(RefElement), [Elements1D, Elements2D, Elements3D])
end


@testset "Subtypes of Element1D" begin
    @test Line <: Elements1D
    # @test isequal(subtypes(RefElement), [Elements1D, Elements2D, Elements3D])
end


@testset "Subtypes of Element2D" begin
    @test Quadrilateral <: Elements2D
    @test Triangle <: Elements2D
    # @test isequal(subtypes(RefElement), [Elements1D, Elements2D, Elements3D])
end


@testset "Subtypes of Element3D" begin
    @test Hexahedron <: Elements3D
    @test Tetrahedron <: Elements3D
    # @test isequal(subtypes(RefElement), [Elements1D, Elements2D, Elements3D])
end


@testset "Subtypes of Element3D" begin
    @test Hexahedron <: Elements3D
    @test Tetrahedron <: Elements3D
    # @test isequal(subtypes(RefElement), [Elements1D, Elements2D, Elements3D])
end


@testset "Subtypes of Line" begin
    @test ContinuousLine <: Line
    @test DiscontinuousLine <: Line
    @test HybridizableDiscontinuousLine <: Line
    # @test isequal(subtypes(RefElement), [Elements1D, Elements2D, Elements3D])
end

@testset "Subtypes of Quadrilateral" begin
    @test ContinuousQuadrilateral <: Quadrilateral
    @test DiscontinuousQuadrilateral <: Quadrilateral
    @test HybridizableDiscontinuousQuadrilateral <: Quadrilateral
    # @test isequal(subtypes(RefElement), [Elements1D, Elements2D, Elements3D])
end


@testset "Subtypes of Triangle" begin
    @test ContinuousTriangle <: Triangle
    @test DiscontinuousTriangle <: Triangle
    @test HybridizableDiscontinuousTriangle <: Triangle
    # @test isequal(subtypes(RefElement), [Elements1D, Elements2D, Elements3D])
end


@testset "Subtypes of Hexahedron" begin
    @test ContinuousHexahedron <: Hexahedron
    @test DiscontinuousHexahedron <: Hexahedron
    @test HybridizableDiscontinuousHexahedron <: Hexahedron
    # @test isequal(subtypes(RefElement), [Elements1D, Elements2D, Elements3D])
end


@testset "Subtypes of Tetrahedron" begin
    @test ContinuousTetrahedron <: Tetrahedron
    @test DiscontinuousTetrahedron <: Tetrahedron
    @test HybridizableDiscontinuousTetrahedron <: Tetrahedron
    # @test isequal(subtypes(RefElement), [Elements1D, Elements2D, Elements3D])
end