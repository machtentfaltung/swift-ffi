// Copyright © 2024-2025 Matei Pralea <matei@pralea.me>
// SPDX-License-Identifier: MIT OR Apache-2.0

import CLibrary

@main
struct FFITest {
    static func main() {
        while true {
            print("Enter a number: ", terminator: String())

            guard let firstNumberString = readLine() else {
                print("No provided text could be fetched.")
                continue
            }

            guard let firstNumber = Int32(firstNumberString) else {
                print("The provided text is not a valid number.")
                continue
            }

            print("Enter another number: ", terminator: String())

            guard let secondNumberString = readLine() else {
                print("No provided text could be fetched.")
                continue
            }

            guard let secondNumber = Int32(secondNumberString) else {
                print("The provided text is not a valid number.")
                continue
            }

            let result = add(firstNumber, secondNumber)

            print("\(firstNumber) + \(secondNumber) = \(result)")
        }
    }
}

