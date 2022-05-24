//
//  DayController.swift
//  Forecast
//
//  Created by Isiah Parra on 5/24/22.
//

import Foundation

class DayController {
    
    private static let baseURLString = "https://api.weatherbit.io/v2.0"
    
    
    
    static func fetchDays(completion: @escaping ([Day]?) -> Void) {
        guard let baseURL = URL(string: baseURLString) else {return}
        let forecastURL = baseURL.appendingPathComponent("forecast")
        let dailyURL = forecastURL.appendingPathComponent("daily")
        // Query URLs
        var urlComponents = URLComponents(url: dailyURL, resolvingAgainstBaseURL: true)
        var apiQuery = URLQueryItem(name: "key", value: "8503276d5f49474f953722fa0a8e7ef8")
        var cityQuery = URLQueryItem(name: "city", value: "miami")
        var unitsQuery = URLQueryItem(name: "units", value: "I")
        urlComponents?.queryItems = [apiQuery,cityQuery,unitsQuery]
        guard let finalURL = urlComponents?.url else {return}
        print(finalURL)
    }
    
    
    
    
}// end of class
