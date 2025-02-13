//
//  TryCatch.swift
//
//  Created by Zak Goneau
//  Created on 2025-02-13
//  Version 1.0
//  Copyright (c) 2025 Zak Goneau. All rights reserved.
//
//  Volume of sphere calculator in Swift with a Try Catch

// Import libraries
import Foundation

// Introduce program
print("This program calculates the volume of a sphere.")

// Get user input
print("Please enter the radius (cm): ")

// do try catch
do {
    // Assign user input to variable
    let radiusString = readLine()

    // Try to cast string to float
    let radiusFloat = try Float(radiusString!)

    // Check if number is positive
    if (radiusFloat >= 0 ) {

        // Calculate volume
        let volume = (4.0/3.0) * (Float.pi*pow(radiusFloat, 3))

        // Print volume
        print("volume = \(volume) cm^3")

    // Tell user number is negative
    } else {
        print("No negative numbers allowed.")
    }

} catch {
    print("/(radiusString!) is not a valid number.")
}
