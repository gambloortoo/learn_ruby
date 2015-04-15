def echo(input)
    input
end

def shout(input)
    input.upcase
end

def repeat(input, n = 2)
    output = input.dup
    (n - 1).times do
        output += " #{input}"
    end
    output
end

def start_of_word(input, n = 1)
    input[0, n]
end

def first_word(input)
    input.split(' ')[0]
end

def titleize(input)
    little_words = ['a', 'to', 'the', 'and', 'over']
    title = input.split(' ')

    title.each_index do |i|
        if not little_words.include?(title[i])
            title[i] = title[i].capitalize
        end
    end
    title[0] = title[0].capitalize
    title.join(' ')
end

