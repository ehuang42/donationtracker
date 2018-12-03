////
////  Location.swift
////  donationtracker2
////
////  Created by Eva Huang on 12/3/18.
////  Copyright © 2018 Eva Huang. All rights reserved.
////
//
//import Foundation
//
//class Location {
//    
//    var objectId: String!
//    var address: String!
//    var name: String!
//    var domain: String!
//    var coord_x: Int!
//    var coord_y: Int!
//    var locations = [Location]()
//    
//    
//    init(address: String, name: String, objectId: String, coordx: Int, coordy: Int) {
//        self.objectId = objectId
//        self.address = address
//        self.name = name
//        self.coord_x = coordx
//        self.coord_y = coordy
//    }
//    
//    
//    func getLocationNames(locationsToFilter: [Location]) -> [String] {
//        var names = [String]()
//        for location in locationsToFilter {
//            names.append(location.name)
//        }
//        return names
//    }
//}
