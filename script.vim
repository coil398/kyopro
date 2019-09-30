echo 'Hello World'

let number = 1
let string = 'Hoge'
let array = [1, 2, 3, 4, 5]

echo number
echo string
echo array

if number == 1
    echo 'number is 1'
elseif number == 2
    echo 'number is 2'
else
    echo 'others'
endif

function! Double(number)
    return a:number * 2
endfunction

echo 'double number is ' . eval(Double(number))

for i in [1, 2, 3]
    echo i
endfor

let n = 0
while n < 10
    echo n
    let n += 1
endwhile
