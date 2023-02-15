

def addParser(input, pos):
    temp = input[pos:pos + 3]
    return temp, 3

def multiplyParser(input, pos):
    temp = input[pos:pos + 8]
    return temp, 8

def handleNumbers(input, pos, varchar):
  line = pos
  numInCha = ""
  while (line < len(input)) and (input[line] in varchar):
    numInCha+=input[line]
    line+=1
  return int(numInCha), line - pos
def handleBrackets(input, pos):
  return input[pos], 1
def handleSpaces():
  return None, 1
possibleExpr = {
  "a":addParser,
  "m":multiplyParser,
  "n":handleNumbers,
  ")":handleBrackets,
  "(":handleBrackets,
  
}
  
def parse(input):
  if not input:
    raise Exception("Sorry, Your input is Empty or None")
  varchar = {"0","1","2","3","4","5","6","7","8","9"}
  res = []
  inLen = len(input)
  k = 0
  while k < inLen:
    cha = input[k]
    if cha in possibleExpr:
      val, pos = possibleExpr[cha](input, k)
      res.append(val)
      k+=pos
    elif cha in varchar:
      val, pos = possibleExpr["n"](input, k, varchar)
      res.append(val)
      k+=pos
    elif cha == " ":
      k+=1
    else:
      raise Exception(f"Sorry, input character '{cha}' not recognised ")
  return res

__all__ = ['parse']
# print(parse(input))