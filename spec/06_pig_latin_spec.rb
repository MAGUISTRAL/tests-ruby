def mot_unique(s)
  return s += "ay" if s =~ /\A[aeiou]/
  return s = s.reverse! + "ay" if s =~ /\A[b-df-hj-np-tv-z]/ && s[1] =~ /[aeiou]/ && s[0..1] != "qu"
  return s = s[2..-1] + s[0..1] + "ay" if s[0..1] =~ /[b-df-hj-np-tv-z]/ && s[2] =~ /[aeiou]/ && s[0..2] != "squ"
  return s = s[3..-1] + s[0..2] + "ay" if s[0..2] =~ /[b-df-hj-np-tv-z]/ && s[3] =~ /[aeiou]/ && s[0..2] != "sch" && s[0..2] != "squ"
  return s = s[3..-1] + s[0..2] + "ay" if s[0..2] == "sch" && s[3] =~ /[aeiou]/
  return s = s[2..-1] + s[0..1] + "ay" if s[0..1] == "qu" && s[2] =~ /[aeiou]/
  return s = s[3..-1] + s[0..2] + "ay" if s =~ /\A[b-df-hj-np-tv-z]/ && s[1..2] == "qu" && s[3] =~ /[aeiou]/
end

def mots_muliples(s)
  arr=[]
  s.each do |s|
    arr << mot_unique(s)
  end
  x = arr.last[0..1].reverse! + arr.last[2..-1]
  arr.pop
  arr << x
  return arr.join( " ")
end



def translate (str)
  s = str.split(" ")
  if s.count < 2
    return mot_unique(str)
  else
    return mots_muliples(s)
  end
end
