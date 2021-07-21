class ClassTest:
	def instance_method(self):
		print(f"Called instance_method of {self}")


	@classmethod
	def class_method(cls):
		print(f"Called class_method of {cls}")


	@staticmethod
	def static_method():
		print("Called static_method.")


test = ClassTest()
test.instance_method()
ClassTest.instance_method(test)

ClassTest.class_method()


#02 Example
class Book:
	TYPES = ("hardcover", "paperback")

	def __init__(self, name, book_type, weight):
		self.name = name
		self.book_type = book_type
		self.weight = weight

	def __repr(self):
		return f"<Book {self.name}, {self.book_type}, weighing {self.weight}g>"


	@classmethod
	def hardcover(cls, name, page_weight):
		return cls(name, Book.TYPES[0], page_weight + 100)


	@classmethod
	def paperback(cls, name, page_weight):
		return cls(name, Book.TYPES[1], page_weight + 100)



book = Book.hardcover("Harry Potter", 1500)
light = Book.paperback("Python 101", 600)

print(book)
print(light)