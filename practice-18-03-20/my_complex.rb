class MyComplex
    attr_reader :real
    attr_reader :imag
    def initialize (re, im)
        @real = Float(re)
        @imag = Float(im)
    end
    def sum(complex_one, complex_two)
        complex_three = MyComplex.new(0, 0)
        complex_three.real = complex_one.real + complex_two.real
        complex_three.imag = complex_one.imag + complex_two.imag
        return complex_three
    end
end

com_one = MyComplex.new(0.0, 0.0)
com_two = MyComplex.new(1, 1)
pp com_one
pp com_two
com_three = MyComplex.sum(com_one, com_two)
pp com_three