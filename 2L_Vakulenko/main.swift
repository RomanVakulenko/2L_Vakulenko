///  main.swift
//  2l_VakulenkoRoman.playground
//  Created by Roman Vakulenko on 29.04.2022

import Foundation
// 1. Написать функцию, которая определяет, четное число или нет.

func isEven (_ variable: Int) {
    if variable%2==0 {
        let answer: Bool = true
        print("Variable is even it is \(answer)")
    } else {
        print("Variable is odd")
    }
}
isEven(52)

//2. Написать функцию, которая определяет, делится ли число без остатка на 3

func isDividedWithoutReminder (_ variable: Int) {
    if variable%3==0 {
        let answer: Bool = true
        print("Variable is divided at 3 without reminder it is \(answer)")
    } else {
        print("Variable isn't divided at 3 without reminder")
    }
}
isDividedWithoutReminder(40)


// 3. Создать возрастающий массив из 100 чисел.
var arrayHundred: [Int] = []
for i in 1...100{
    arrayHundred.append(i)
}
print(arrayHundred)
print("The arrayHundred list contains \(arrayHundred.count) items.")
// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var arraySpecial1 = arrayHundred.filter {$0 % 2 != 0 && $0 % 3 == 0}
print("Solution by built in function 'filter'\n", arraySpecial1)
print("The arraySpecial1 list contains \(arraySpecial1.count) items.")

var arraySpecial2: [Int] = []
for k in arrayHundred {
    if (k%2>0) && (k%3==0) && k<101 {
        arraySpecial2.append(k)
        }
    }
print(arraySpecial2)
print("The arraySpecial2 list contains \(arraySpecial2.count) items.")
