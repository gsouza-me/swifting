//
//  modelData.swift
//  Landmarks
//
//  Created by Gui  on 15/09/22.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>( _ filename: String ) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Não foi possivel encontrar \(filename) no pacote principal.")
        
    }
    
    do{
        data = try Data(contentsOf: file)
    } catch{
        fatalError("Não foi possivel carregar \(filename) do pacote principal.\(error).")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Não foi possivel juntar \(filename) como \(T.self):\n\(error)")
    }
            
    
}
