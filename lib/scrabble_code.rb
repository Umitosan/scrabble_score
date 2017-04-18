
class String
  define_method(:word_score) do
    user_input = self
    score_total = 0
    score_hash = Hash.new()
    score_hash = {1 => "AEIOULNRST",2 => "DG",3 => "BCMP",4 => "FHVWY",5 => "K",8 => "JX",10 => "QZ"}

    score_hash.each_value { |value|
      if value.include?(user_input)
        score_total = score_hash.key(value)
      end
      score_total
    }

    if (score_total != 0)
      score_total.to_s
    else
      self
    end

  end
end
