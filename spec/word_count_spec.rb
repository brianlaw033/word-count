require('pry')
require('rspec')
require('word_count')

  describe('String#word_count') do
      it("I am walking my cat to the cathedral => word") do
        expect("I am walking my cat to the cathedral".word_count1("cat")).to(eq(1))
      end
      it("I am walking my cat to the cathedral => letters in word") do
        expect("I am walking my cat to the cathedral".word_count2("cat")).to(eq(2))
      end
  end
