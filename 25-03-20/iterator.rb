def main
    array = inputarr
    prev = 0
    count = 0
    array.each_with_index do |element, index|
        if(prev > 0 && element < 0) || (prev < 0 && element > 0)
            print "Смена знака на элементе №#{index+1} \n"
            count += 1
        end
        prev = element
    end
    print "Всего смен знака #{count}"
end

def inputarr
    print "Введите строку из целых чисел.\nНеверные числа не будут восприняты.\n>"
    raw = gets
    array = raw.split(" ").map { |element| element.to_i }
end

if __FILE__ == $0
    main
end
