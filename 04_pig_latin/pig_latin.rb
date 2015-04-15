$vowels     = ['a', 'e', 'i', 'o', 'u']
$consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z', '1', '2']

def translate(input)
    input = input.split(' ');
    input.each_index do |i|
        word    = input[i]
        letters = word.split('')

        if $vowels.include?(letters[0])
            input[i] += "ay"
        elsif $consonants.include?(letters[0])
            input[i] = input[i].gsub('qu', '1')
            input[i] = input[i].gsub('sch', '2')

            count = number_of_consonants(input[i])
            input[i] = input[i][count,input[i].length - count] + input[i][0, count] + "ay"

            input[i] = input[i].gsub('1', 'qu')
            input[i] = input[i].gsub('2', 'sch')            
        end

    end
    input.join(' ')
end

def number_of_consonants(input)
    count = 0
    input.each_char do |c|
        break if $vowels.include?(c)
        count += 1      
    end
    count    # return count
end