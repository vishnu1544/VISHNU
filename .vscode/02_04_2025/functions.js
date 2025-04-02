// 1. Function Declaration (Hoisted)
function greet(name) {
    return `Hello, ${name}!`;
}
console.log(greet("Alice")); // Output: Hello, Alice!

// 2. Function Expression (Not Hoisted)
const greetExpression = function(name) {
    return `Hello, ${name}!`;
};
console.log(greetExpression("Bob")); // Output: Hello, Bob!

// 3. Arrow Function (ES6)
const greetArrow = (name) => `Hello, ${name}!`;
console.log(greetArrow("Charlie")); // Output: Hello, Charlie!

// Arrow Function with Multiple Parameters and Statements
const add = (a, b) => {
    let sum = a + b;
    return sum;
};
console.log(add(2, 3)); // Output: 5

// 4. Immediately Invoked Function Expression (IIFE)
(function() {
    console.log("This runs immediately!");
})();

(() => {
    console.log("This also runs immediately!");
})();

// 5. Higher-Order Function
function operate(a, b, operation) {
    return operation(a, b);
}
const multiply = (x, y) => x * y;
console.log(operate(3, 4, multiply)); // Output: 12

// 6. Callback Function
function fetchData(callback) {
    setTimeout(() => {
        callback("Data loaded");
    }, 1000);
}
fetchData(console.log); // Output (after 1 sec): Data loaded

// 7. Generator Function
function* generatorFunction() {
    yield "First";
    yield "Second";
    yield "Third";
}
const gen = generatorFunction();
console.log(gen.next().value); // Output: First
console.log(gen.next().value); // Output: Second
console.log(gen.next().value); // Output: Third

// 8. Async/Await Function
async function fetchDataAsync() {
    return "Data received";
}
fetchDataAsync().then(console.log); // Output: Data received

// 9. Default and Rest Parameters
function greetDefault(name = "Guest") {
    return `Hello, ${name}!`;
}
console.log(greetDefault()); // Output: Hello, Guest!

function sum(...numbers) {
    return numbers.reduce((acc, num) => acc + num, 0);
}
console.log(sum(1, 2, 3, 4)); // Output: 10
