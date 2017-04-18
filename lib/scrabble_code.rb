
class String
  define_method(:word_score) do
    score_total = 0
    score_table = Hash.new()
    score_table = {1 => "AEIOULNRST",2 => "DG",3 => "BCMP",4 => "FHVWY",5 => "K",8 => "JX",10 => "QZ"}
    score_total = score_table.key(self)

    if (score_total != nil)
      score_total.to_s
    else
      self
    end

  end
end
