using PhysicsEngine2D
using GeometryBasics
using Test

@testset "PhysicsEngine2D.jl" begin
    @testset "Rect2D intersection" begin
        a = Rect2D(1, 2, 3, 4)
        b = Rect2D(3, 4, 5, 6)
        @test PE2D.is_colliding(a, b) == true

        a = Rect2D(1, 2, 3, 4)
        b = Rect2D(4, 6, 1, 2)
        @test PE2D.is_colliding(a, b) == true

        a = Rect2D(1, 2, 3, 4)
        b = Rect2D(0, 0, 6, 6)
        @test PE2D.is_colliding(a, b) == true

        a = Rect2D(1, 2, 3, 4)
        b = Rect2D(4, 2, 1, 2)
        @test PE2D.is_colliding(a, b) == true

        a = Rect2D(1, 2, 3, 4)
        b = Rect2D(5, 6, 7, 8)
        @test PE2D.is_colliding(a, b) == false
    end

    @testset "Circle intersection" begin
        a = Circle(Point2(0, 0), 1)
        b = Circle(Point2(0, 0), 1)
        @test PE2D.is_colliding(a, b) == true

        a = Circle(Point2(0, 0), 1)
        b = Circle(Point2(2, 0), 1)
        @test PE2D.is_colliding(a, b) == true

        a = Circle(Point2(0, 0), 1)
        b = Circle(Point2(3, 0), 1)
        @test PE2D.is_colliding(a, b) == false
    end
end
