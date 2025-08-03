def foo(x: int) -> int:
  y = x + 1
  return y

def decorator(func):
  def wrapper(*args, **kwargs):
    print("Decorator called")
    return func(*args, **kwargs)
  return wrapper

@decorator
class Bar:
  def __init__(self, value: int):
    self.value = value

  def increment(self) -> None:
    self.value += 1

  def get_value(self) -> int:
    return self.value

v = foo(4)

r = [x for x in range(10) if x % 2 == 0]

b = Bar(10)
b.increment()

# This is a comment

print(b.get_value(), flush=True)  

