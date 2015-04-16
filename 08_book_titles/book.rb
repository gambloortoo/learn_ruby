class Book
    def title
        @title
    end

    def title=(input)
        little_words = ['a', 'to', 'the', 'and', 'over', 'of', 'in', 'on', 'an']

        @title = input.split(' ')

        @title.each_index do |i|
            if not little_words.include?(@title[i])
                @title[i] = @title[i].capitalize
            end
        end
        @title[0] = @title[0].capitalize
        @title    = @title.join(' ')
    end

end