# W1D3-May-2017

### Outline
  - Inheritance
  - self vs super
  - interface vs implementation
  - encapsulation
  - nil and friends
  - NS(Mutable)Dictionary

## Inheritance
[wikipedia article](https://en.wikipedia.org/wiki/Inheritance_(object-oriented_programming) )

#### What is inheritance? 
- When one class gets some subset of properties and/or method implementations from a parent class. 
- Classes can inherit behavior and attributes from its parents just like we do! (Unfortunately)

#### Why is it a good thing?
- It lets us reuse code. Why is the important?
- It allows us to extend the functionality of classes already written by us or by others. (Without inheritance we wouldn't be writing iOS apps at all).

#### Inheritance vs object composition
- Inheritance contrasts with object composition.
- Composition is where a class gets behavior or attributes from other objects that are passed in to it.
- Classes can be complex and made up of (composed of) other classes.
- You also didn't just inherit everything you are. Some of it you went out and got or it was handed to you by others. For instance, you probably didn't inherit  (in the biological sense) your fascination for iPhones. It was something you acquired.

#### Why Is Inheritance Important to Understand?
- It's a central concept in OOP.
- You need to understand inheritance to interact with CocoaTouch.
- Much of your code in iOS will start by subclassing CocoaTouch classes.
- Actually CocoaTouch classes themselves usually consist of big inheritance trees!
- For instance, we know that all classes in Objective-C descend from NSObject. 
- This is where we get alloc and init from, for example.
- Also, most iOS apps are made up of custom ViewControllers that all start by subclassing Apple's UIViewController class.
- Inheritance is absolutely everywhere!
![](img/h.png)

- If you want to read and comprehend Apple's documentation you need to understand inheritance.

![](img/d.png)

What's Good About Inheritance?
- The best thing about inheritance is that you get code reuse. Why is this so important?
- It allows you to easily extend already written classes (like those from Apple) to add our own specific functionality.
- We do this every time we subclass NSObject.
- It gives us a means of abstraction which allows us to use polymorphism.

"Polymorphism is when you can treat an object as a generic version of something, but when you access it, the code determines which exact type it is and calls the associated code."

http://stackoverflow.com/a/3110318/951349

What's Bad About Inheritance?
- Inheritance has a lot of problems too.
- It makes code very complex to understand.
- The code we're running might be sitting in a super class far removed up the hierarchy from where it is running.
- Inheriting implementation creates a dependency between the subclass and all of its super classes. 
- This means that your subclass gets all of the public properties and method implementations whether this makes sense or not! You might have to override stuff and do nothing!

self vs super
- when you want to call something on yourself you use self.
- when you want to call something on your super class you call super.
- self stands for the current instance.
- super stands for the current superclass instance you inherit from.
- you mostly only use super when you override a method and you want to get the super class's implementation too.

[ RubberDuck Demo]

interface vs implementation files

- By convention the name of the file matches the name of the class. 
- Objc uses 2 files by convention to represent a class. You could put them both in 1 file if you wanted.
- Objc separates out an interface and an implementation.
- Whatever is declared in the interface is public (except ivars)
- We will learn about how to declare properties that can only be seen internally later when we talk about categories.
- Properties are conveniences that by default the compiler defines as a setter and getter method and a backing store.
- The backing store is private and cannot be accessed from outside the class directly.
- To access it, that is, set it or get it you must call the property using . notation or method notation. (prefer dot notation for properties please)
- The face that instance variables are hidden by design is an expression of a principle in OOP known as encapsulation.

encapsulation
- 
wikipedia https://en.wikipedia.org/wiki/Encapsulation_(computer_programming)

2 distinct senses:
1) A language mechanism for restricting direct access to some of the object's components.
2) A language construct that facilitates the bundling of data with the methods (or other functions) operating on that data.

[ encapsulation demo ]

nil, Nil, NULL, NSNULL

These are ways of representing nothing in Objective-C/C

C represents nothing as 0 for primitives and NULL for pointers.

Objective-C represents object instances that are nothing as nil.
nil is a pointer to nothing.

- You can't add nil to a collection in Objc, since nil is not an object.
For that there is a wrapper object in Foundation NSNull. You create it by calling the [NSNull null] class method.

- Nil is a class pointer to nothing, but I've never used it.

- Main take aways. Use nil for the absence of an instance to a class. Avoid using NULL unless you know why you're using it. 

- Primitives can represent no value using 0.

- If you need to add nil to a collection using [NSNull null].
eg.
NSArray *a = [[NSNull null]];	
- You can send a message to nil in Objc without crashing. Careful.

http://nshipster.com/nil/

[ nil Demo ]

NSDictionary
What is a dictionary?
- It stores 0 or many key value pairs.
- It is unordered.
- Each key must be unique.
- It is accessible using subscripting notation.

NSDictionary *dict = @{@"name" : @"Bob"}

NSString *name = dict[@"name"];
// name evaluates to "Bob"

- If you attempt to access a value using a key and it doesn't exist the expression evaluates to nil.
- In Objc NSDictionary is heterogeneous, meaning that it can be of mixed types.
- This is rarely what you want. You can specify the types using light weight generics in modern Objc.

- When should you use a dictionary vs a class?
- With dictionaries we can add arbitrary keys at runtime.

- Let's just look at the documentation and read through this together.

NSMutableDictionary
- Look at documentation & Code Example.

[ NSDictionary Demo ]
