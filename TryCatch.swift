//
//  TryCatch.swift
//
//  Created by Zak Goneau
//  Created on 2025-02-13
//  Version 1.0
//  Copyright (c) 2025 Zak Goneau. All rights reserved.
//
//  Volume of sphere calculator in Swift with a Try Catch

// Import library
import Foundation

// define function to calculate volume
func sphereVolume() {

    // Introduce program to user
    print("This program calculates the volume of a sphere.")

    // Get user input
    print("Please enter a radius (cm): ")

    // Try to assign input as sting and convert into float
    guard let radiusString = readLine(), let radiusFloat = Float(radiusString) else {

        // Tell user invalid input if failed conversion
        print("Invalid input. This is not a number.")

        // Exit function
        return
    }

    // Check if input is negative
    if (radiusFloat < 0) {

        // If negative tell user
        print("No negative inputs.")
    
    // Otherwise calculate volume of sphere
    } else {
        // Calculate the volume of the sphere
        let volume = (4.0 / 3.0) * (Float.pi * pow(radiusFloat, 3))

        // Round volume
        let volumeRounded:String = String(format: "%0.3f", volume)

        // Display the volume to user
        print("The volume of a sphere with a radius of \(radiusFloat) cm is \(volumeRounded) cm³.")
    }

}

// Call function
sphereVolume()
