//
//  DataLoader.swift
//  LocalJsonFileAssignment
//
//  Created by Apple on 11/02/22.
//

import Foundation

public class DataLoader {
    
    @Published var cityData = [CityData]()
    
    init() {
        load()
        sort()
    }
    
    func load() {
        
        if let fileLocation = Bundle.main.url(forResource: "cities", withExtension: "json") {
            
            
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([CityData].self, from: data)
                
                self.cityData = dataFromJson
            } catch {
                print(error)
            }
        }
    }
    
    func sort() {
        self.cityData = self.cityData.sorted(by: { $0.name < $1.name })
    }
}
