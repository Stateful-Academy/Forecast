//
//  Day.swift
//  Forecast
//
//  Created by Isiah Parra on 5/24/22.
//

import Foundation

class Day {
    
    let cityName: String
    let temp: Double
    let highTemp: Double
    let lowTemp: Double
    let description: String
    let iconString: String
    let validDate: String
    
    //memberwise Init
    init(cityName: String, temp: Double ,highTemp: Double, lowTemp: Double, description: String, iconString: String, validDate: String) {
        self.cityName = cityName
        self.temp = temp
        self.highTemp = highTemp
        self.lowTemp = lowTemp
        self.description = description
        self.iconString = iconString
        self.validDate = validDate
    }
    //Failable init
    init?(dayDictionary: [String:Any], cityName: String){
        guard let temp = dayDictionary["temp"] as? Double,
        let highTemp = dayDictionary["high_temp"] as? Double,
        let lowTemp = dayDictionary["low_temp"] as? Double,
        let validDate = dayDictionary["valid_date"] as? String,
        let weatherDict = dayDictionary["weather"] as? [String:Any],
        let description = weatherDict["description"] as? String,
        let iconString = weatherDict["icon"] as? String
        else {return nil}
        
        self.highTemp = highTemp
        self.lowTemp = lowTemp
        self.validDate = validDate
        self.description = description
        self.iconString = iconString
        self.cityName = cityName
        self.temp = temp
    }
    
}// End of class
