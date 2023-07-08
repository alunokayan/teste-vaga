class Desafio
    def reverse_string(string)
        substrings = string.split
        substrings.reverse.join(' ')
    end

    def remove_duplicates(string)
        new_string = []
        string.each_char do |letter|
            if new_string.none?(letter)
                new_string << letter
            else
                next
            end
        end

        new_string.join
    end

    def longest_palindrome(string)
        palindromes = []
        (string.length - 1).downto(2) do |i|
            (string.length - i).times do |n|
                if string.slice(n..n+i) == string.slice(n..n+i).reverse
                    palindromes << string.slice(n..n+i)
                end
            end
        end

        palindromes[0]
    end

    def capitalize_first_letter(string)
        substrings = string.split 
        substrings[0].capitalize!
        
        substrings.each_index do |i|
            if substrings[i].end_with?('.', '!', '?') && i != substrings.length - 1
                substrings[i + 1].capitalize!
            end

            if substrings[i].start_with?('i') && substrings[i].length == 1 || substrings[i].start_with?("i'm")
                substrings[i].capitalize!
            end
        end

        substrings.join(' ')
    end

    def is_anagram_palindrome?(string)
        char_count = Hash.new(0)

        string.each_char do |char|
            char_count[char] += 1
        end
    
        odd_count = 0
        char_count.each_value do |count|
            odd_count += 1 if count.odd?
        end

        odd_count <= 1
    end
end