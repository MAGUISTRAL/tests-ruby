def time_string(sds)
  a = ( sds / 60**2 )
  b = ( sds % 60**2 ) / 60
  c = ( sds % 60**2 ) % 60

  if a < 10
    if b < 10
      if c < 10
        return "0#{a}:0#{b}:0#{c}"
      else
        return "0#{a}:0#{b}:#{c}"
      end
    else
      if c < 10
        return "0#{a}:#{b}:0#{c}"
      else
        return "0#{a}:#{b}:#{c}"
      end
    end
  else
    if b < 10
      if c < 10
        return "0#{a}:0#{b}:0#{c}"
      else
        return "0#{a}:0#{b}:#{c}"
      end
    else
      if c < 10
        return "0#{a}:#{b}:0#{c}"
      else
        return "0#{a}:#{b}:#{c}"
      end
    end
  end
end
