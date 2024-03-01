func returnTuple() -> (Int, String, Bool) {
    let number = 10
    let text = "Hello, world!"
    let flag = true
    
    return (number, text, flag)
}

let result = returnTuple()
let (number, text, flag) = returnTuple()
print(result.0) // 10