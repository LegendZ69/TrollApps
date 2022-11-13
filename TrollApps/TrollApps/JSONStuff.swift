//
//  JSONStuff.swift
//  TrollApps
//
//  Created by Анохин Юрий on 11.11.2022.
//

import Foundation

struct stuff: Codable, Identifiable {
    var id: Int
    var title: String
    var link: String
    var description: String
    var url: String
    var bundleid: String
    var urlimg: String
    var completed: Bool
}

func FetchApps() -> [stuff] {
    do {
        return try JSONDecoder().decode([stuff].self, from: try! Data(contentsOf: URL(string: "https://haxi0-dev.com/api/trollapps-0.2.json")!))
    } catch {
        print("oopsie")
        return []
    }
}
