// Swift FFI
// Copyright (C) 2024-2025 Matei Pralea <matei.pralea@proton.me>
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

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
