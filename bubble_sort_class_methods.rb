class Array
    def each_two_with_index
        i = 0
        while i < (self.length-1)
            yield(self[i],i,self[i+1],i+1)
            i += 1
        end
        self
    end


    def bubble_sort 
        sorted = false
        loop do 
            swap_counter = 0
            self.each_two_with_index do |item1, item1_index, item2, item2_index |
                next if item1 < item2
                if item1 > item2
                    self[item1_index], self[item2_index] = self[item2_index], self[item1_index]
                    swap_counter += 1
                end
            end
            sorted = !sorted if swap_counter == 0
            break if sorted == true
        end
        self
    end


    def bubble_sort_by 
        sorted = false
        loop do 
            swap_counter = 0
            self.each_two_with_index do |item1, item1_index, item2, item2_index |
                if yield(item1,item2) > 0
                    self[item1_index], self[item2_index] = self[item2_index], self[item1_index]
                    swap_counter += 1
                end
            end
            sorted = !sorted if swap_counter == 0
            break if sorted == true
        end
        self
    end
end