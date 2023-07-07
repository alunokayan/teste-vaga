require './lib/desafio.rb'

describe Desafio do
    describe "#reverse_string" do
        it "Reverte a ordem das palavras na string." do
            desafio = Desafio.new
            expect(desafio.reverse_string('Hello, World! OpenAI is amazing.')).to eql('amazing. is OpenAI World! Hello,')
        end
    end 

=begin
    describe "#remove_duplicates" do

    end
=end

    describe "#longest_palindrome" do
        it "Encontra o palindromo mais longo dentro da string." do
            desafio = Desafio.new
            expect(desafio.longest_palindrome('babad')).to eql('bab')
        end

        it "Encontra o palindromo mais longo dentro da string contendo espaços." do
            desafio = Desafio.new
            expect(desafio.longest_palindrome('anna renner')).to eql('renner')
        end
    end

    describe "#capitalize_first_letter" do
        it "Transforma a primeira letra de cada frase em maiúscula." do
            desafio = Desafio.new
            expect(desafio.capitalize_first_letter("hello. how are you? i'm fine, thank you.")).to eql("Hello. How are you? I'm fine, thank you.")
        end

        it "Supondo que as palavras partam da língua inglesa, transforma o 'i' em maiúsculo quando for um pronome em qualquer lugar da frase." do
            desafio = Desafio.new
            expect(desafio.capitalize_first_letter("come on, i don't wanna be me anymore!")).to eql("Come on, I don't wanna be me anymore!")
        end

        it "Supondo que as palavras partam da língua inglesa, transforma o 'i' em maiúsculo quando for um pronome ao fim da frase." do
            desafio = Desafio.new
            expect(desafio.capitalize_first_letter("here i'm!")).to eql("Here I'm!")
        end

        it "Não transforma a primeira letra de outras palavras, a menos que estejam precedidas pelos sinais gráficos, que iniciam com a letra 'i'." do
            desafio = Desafio.new
            expect(desafio.capitalize_first_letter("what's your favorite color? my favorite color is indigo")).to eql("What's your favorite color? My favorite color is indigo")
        end
    end

=begin 
    describe "#is_anagram_palindrome?" do

    end
=end
end