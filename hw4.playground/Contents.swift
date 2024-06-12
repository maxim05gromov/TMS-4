func printHi(){
    print("Hello, world!")
}
func printHi(name: String){
    print("Hello, \(name)")
}
func getHi(name: String) -> String{
    return "Hello! \(name)"
}


printHi()
printHi(name: "Misha")
getHi(name: "Misha")

func countSymbols(first: String, second: String) -> Int{
    return first.count + second.count
}

countSymbols(first: "abc", second: "defg")

func square(number: Int){
    print(number * number)
}
square(number: 5)


func sum(first: Int, second: Int) -> Int{
    return first + second
}
func sub(first: Int, second: Int) -> Int{
    return first - second
}
func mul(first: Int, second: Int) -> Int{
    return first * second
}
func div(first: Int, second: Int) -> Int{
    if second == 0{
        return 0
    }
    return first / second
}
print(sum(first: sub(first: mul(first: div(first: 4, second: 2), second: 2), second: 3), second: 1))


func circleSquare(radius: Double) -> Double{
    return Double.pi * radius * radius
}

print(circleSquare(radius: 50))


func nightDescription(isNight: Bool) -> String{
    if isNight{
        return "Сейчас ночь"
    }
    return "Сейчас не ночь"
}

print(nightDescription(isNight: true))
print(nightDescription(isNight: false))



func isPrime(number: Int) -> Bool{
    var i = 2
    while i * i <= number{
        if number % i == 0{
            return false
        }
        i += 1
    }
    return true
}

print(isPrime(number: 1))
print(isPrime(number: 2))
print(isPrime(number: 3))
print(isPrime(number: 4))
print(isPrime(number: 5))

func getSeason(number: Int) -> String{
    let seasons = ["Зима", "Весна", "Лето", "Осень"]
    let index: Int = (number % 12) / 3
    return seasons[index]
}

for i in 1...12{
    print(getSeason(number: i))
}


func factorial(number: Int) -> Int{
    var result = 1
    for i in 1...number{
        result *= i
    }
    return result
}

print(factorial(number: 5))


func printFib(index: Int){
    if index == 0{
        print("0")
        return
    }else if index == 1{
        print("0, 1")
        return
    }
    var a = 0
    var b = 1
    var result = "0, 1"
    for i in 2...index{
        var c = a + b
        a = b
        b = c
        result += ", \(c)"
    }
    print(result)
}

printFib(index: 6)


func getSumDigits(number: Int) -> Int{
    var temp = number
    var result = 0
    for i in 1...4{
        var a = temp % 10
        temp -= a
        temp /= 10
        result += a
    }
    return result
}

print(getSumDigits(number: 1234))
