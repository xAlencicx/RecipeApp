//
//  DataService.swift
//  RecipeList
//
//  Created by Alen Mujkic on 11.09.22.
//

import Foundation


class DataService {
    
   static func getJson<T : Decodable>(nameOfDataFile:String) -> T? {
        
        let path = Bundle.main.path(forResource: nameOfDataFile, ofType: "json")
        
        guard path != nil else {
            return nil
        }
            
        let url = URL(fileURLWithPath: path!)
        
        do{
            
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do{
                
                return try decoder.decode(T.self, from: data)
                
            }catch{
                print(error)
                return nil
            }
            
        }catch{
            print(error)
            return nil
        }
        
       
    }
    
}
