
# Lox Language Compiler and Bytecode VM 
**Written in C**

Lox is a object oriented, dynamically typed language.
Clox is a compiler and bytecode VM built for the Lox language. Clox does single pass compilation and compiles the code into custom bytecode that is interpreted by the VM. Clox uses its own custom garbage collector to manage memory. This language implementation is similar to that of Python, Ruby, and Lua.

### Make: 
```shell
make clox
```

### Usage: 
```shell
./clox [fileName]
```

## Lox Examples
Lines are teriminated with semicolons.

The *var* keyword is used to initialize variables.  
Example: 
```javascript
var a = 4;
print a; // 4
```

Loops should look familar.  
Example:
```javascript
fun fib(n){ // gets up to n of the fibonacci sequence
    var a = 0;
    var b = 1;
    var c = 0;
    while (c < n){
        c = a + b;
        print c;
        a = b;
        b = c;
    }
}
```

The *fun* keyword is used to define functions.  
Example:
```javascript
fun factorial(n){
    if (n < 1){
        return 1;
    }
    return n * factorial(n-1);
}
```

The *class* keywords is used to define classes and *<* is used for inheritance of a superclass.   
Example:
```javascript
class Animal {
    init(age, name){
        this.age = age;
        this.name = name;
    }

    getSound(){
        return "generic sound";
    }
}

class Lion < Animal {
    init(age, name, weight){
        super.init(age, name);
        this.weight = weight;
    }

    getSound(){
        return "roar";
    }

    eat(){
        return "ate";
    }
}

var gabe = Lion(22, "Gabe", 140);
print gabe.weight;
print gabe.getSound();
print gabe.eat();
```