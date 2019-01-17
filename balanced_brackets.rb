def do_stuff(text)
  #your code
  text = text.split("")
  i = 0
  bracket = []
  while i < text.length
    if text[i] == "{" || text[i] == "(" || text[i] == "["
      bracket.push(text[i])
    end
    if bracket[-1] == "{" && text[i] == "}" || bracket[-1] == "(" && text[i] == ")" || bracket[-1] == "[" && text[i] == "]"
      bracket.pop
    end
    i += 1
  end
  p bracket.empty? ? true : false
end

do_stuff("[({}{}{})([])]") # true
do_stuff("([)]") # false
