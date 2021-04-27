//
//  SportViewModel.swift
//  SportAPI
//
//  Created by MACBOOK on 19/04/21.
//

import Foundation
import Combine
import SwiftyJSON

class SportViewModel: ObservableObject {
    @Published var data = [Sport]()
    
    init() {
        let url = "https://www.thesportsdb.com/api/v1/json/1/search_all_teams.php?l=English%20Premier%20League"
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: URL(string: url)!){ (data, _, error) in
            if error != nil{
                print((error?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            let items = json["teams"].array!
            
            for i in items{
                let title = i["strTeam"].stringValue
                let description = i["strStadiumDescription"].stringValue
                let image = i["strStadiumThumb"].stringValue
                
                DispatchQueue.main.async {
                    self.data.append(Sport(title: title, image: image, description: description))
                }
            }
        }.resume()
    }
}
