

def who_is_bigger(a, b, c)
      if a == nil || b == nil || c == nil
          return "nil detected"
            else if a > b && a > c
                return "a is bigger"
                else if b > a && b > c
                    return "b is bigger"
        else "c is bigger"
                end
            end
      end
end


def reverse_upcase_noLTA(texte)
  return texte.reverse.upcase.delete("LTA")
end

def array_42(arr)
  return arr.find {|i| i == 42 } != nil
end

def magic_array(arr)
  return arr.flatten.sort.delete_if {|x| x%3 == 0}.uniq.map { |i| i*2 }
end

#  rspec spec/03_basics_spec.rb
