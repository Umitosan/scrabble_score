
class String
  define_method(:word_score) do

    user_input_split = self.upcase().split("")
    score_total = 0
    score_hash = Hash.new()
    score_hash = {1 => "AEIOULNRST",2 => "DG",3 => "BCMP",4 => "FHVWY",5 => "K",8 => "JX",10 => "QZ"}

    user_input_split.each do |element|
      score_hash.each_value do |value|
        if value.include?(element)
          score_total += score_hash.key(value)
        end
      end
      score_total
    end

    if (score_total != 0)
      score_total.to_s
    else
      self
    end

  end
end
