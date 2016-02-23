//
//  LøsningMaxVerdi.swift
//  
//
//  Created by Espen Næss on 22.02.16.
//
//

import Foundation

func maxVerdi(arr:[Int]) -> Int {
    var maxverdi = arr[0]
    
    for tall in arr {
        if tall > maxverdi {
            maxverdi = tall
        }
    }
    return maxverdi
}

maxVerdi([3, 5, 2, 8]) // returnerer 8

