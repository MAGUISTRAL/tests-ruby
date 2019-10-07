

def echo(texte)
return texte
end


def shout(texte)
return texte.upcase
end


def repeat(str, n=2)
return "#{str} #{str}" +" #{str}"*(n-2)
end

#def repeat(texte,i)
#i.times do
#results ("#{texte} ")
#end


def start_of_word(texte,i)
return texte [0,i]
end


def first_word (texte)
return texte.split.first
end


def titleize(str)
  array = str.split(" ")
  array.each { |w| w.capitalize! if w.length > 3}
  array[0].capitalize!
  return array.join(" ")
end

#   rspec spec/04_simon_says_spec.rb
