import Foundation
// 
//  EnergyConversion.swift
//  ICS4U-Unit1-03-Swift
// 
//  Created by Christina on 18/02/20.
//  Copyright © Christina Ngwa. All rights reserved.
// 
// This program calculates the cook time for food with user input.
// 

// variables and constants
let subTime:Double = 1;
let pizzaTime:Double = 0.75;
let soupTime:Double = 1.75;
var cookTime:Double = 0;
var food:String = "";

print("Welcome to your microwave.")

// input
while (true) {
    print("\nAre you heating up a sub, pizza or soup?: ");
    food = String(readLine()!);

    if (food == "sub" || food == "pizza" || food == "soup") {
        break;
    } else {
        print("Please pick one of the options.");
    }
}

// input
while (true) {
    print("How many \(food)(s) are you heating up (1-3)?: ");
    if let quantity = Int(readLine()!) {
      if (quantity > 3 || quantity < 0) {
        print("Invalid input. Try again.");
      } else {
          // process
          if (quantity == 1 && food == "sub") {
            cookTime = subTime * 1;
          } else if (quantity == 1 && food == "pizza") {
            cookTime = pizzaTime * 1;
          } else if (quantity == 1 && food == "soup") {
            cookTime = soupTime * 1;
          } else if (quantity == 2 && food == "sub") {
            cookTime = subTime * 1.5;
          } else if (quantity == 2 && food == "pizza") {
            cookTime = pizzaTime * 1.5;
          } else if (quantity == 2 && food == "soup") {
            cookTime = soupTime * 1.5;
          } else if (quantity == 3 && food == "sub") {
            cookTime = subTime * 2;
          } else if (quantity == 3 && food == "pizza") {
            cookTime = pizzaTime * 2;
          } else if (quantity == 3 && food == "soup") {
            cookTime = soupTime * 2;
          }
          break;
      }
    } else {
      print("Invalid input. Try again.");
    }
}
// output
print("\nThe total cooking time is \(cookTime) minute(s).")