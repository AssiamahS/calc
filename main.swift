import Foundation

print("Welcome to Calculator Swift App!")
print("Please enter a number to start this program:")

// Read input from the user
if let input = readLine(), let number = Double(input) {
    print("You entered: \(number)")
    // Now you can perform calculations with the number
    print("What operation would you like to perform? (+, -, *, /)")
    if let operation = readLine() {

        print("Enter another number:")
        if let input2 = readLine(), let number2 = Double(input2) {
            var result: Double?

            switch operation {
            case "+":
                result = number + number2
            case "-":
                result = number - number2
            case "*":
                result = number * number2
            case "/":
                result = number / number2
            default:
                print("Invalid operation")
            }

            if let result = result {
                print("Result: \(result)")
            } else {
                print("Could not perform the operation.")
            }
        } else {
            print("Invalid input for the second number.")
        }
    } else {
        print("Invalid operation input.")
    }
} else {
    print("Invalid input for the first number.")
}
