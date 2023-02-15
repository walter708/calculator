import parseData
import sys


class Calculator:
  def __init__(self) -> None:
    self.operation = {
        "add":self.add,
        "multiply":self.multiply
      }
    pass
  def add(self, arr):
    sum = 0
    for i in range(len(arr)):
      sum+=arr[i]
    return sum
  def multiply(self, arr):
    product = 1
    for i in range(len(arr)):
      product*=arr[i]
    return product
  def evaluate(self, input):
    try:
      data = parseData.parse(input)
      stack = []
      for i in range(len(data)):
        cha = data[i]
        if cha == ")":
          tmpArr = []
          while stack:
            stackItem = stack.pop()
            if stackItem  not in self.operation:
              tmpArr.append(stackItem)
            else:
              stack[-1] = self.operation[stackItem](tmpArr)
              break
        else:
          stack.append(cha)
      return stack[0]
    except Exception as e:
      print(repr(e))
      return
  

def main():
  input = sys.argv[1].strip()
  calc = Calculator()
  print(calc.evaluate(input))
  
if __name__ == "__main__":
  main()

      
      