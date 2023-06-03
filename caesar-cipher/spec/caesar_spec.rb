require './caesar.rb'

describe "#caesar_cipher" do
    it "returns an encrypted string" do
        expect(caesar_cipher("abcdef", 2)).to eql("cdefgh")
    end
    it "differentiates between capital and lowercase" do
        expect(caesar_cipher("ABCdef", 4)).to eql("EFGhij")
    end
    it "can include spaces" do 
        expect(caesar_cipher("A B c d", 1)).to eql("B C d e")
    end
    it "does not change punctuation or numbers" do
        expect(caesar_cipher(".,/:57", 5)).to eql(".,/:57")
    end
end

describe "#caesar_decipher" do
    it "takes an encrypted string and deciphers it" do 
        expect(caesar_decipher("cdefg", 2)).to eql("abcde")
    end
    it "differentiates between capital and lowercase" do
        expect(caesar_decipher("IFmmP", 1)).to eql("HEllO")
    end
    it "can include spaces" do
        expect(caesar_decipher("G H i J K", 5)).to eql("B C d E F")
    end
    it "does not change punctuation or numbers" do
        expect(caesar_decipher(".,/:57", 8)).to eql(".,/:57")
    end
    it "can decipher a string encrypted using the cipher method" do
        expect(caesar_decipher(caesar_cipher("This is the final test!!1", 17), 17)).to eql("This is the final test!!1")
    end
end