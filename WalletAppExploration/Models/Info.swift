//
//  Info.swift
//  WalletAppExploration
//
//  Created by Raphael Cerqueira on 17/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import Foundation
import SwiftUI

struct Info: Identifiable {
    let id = UUID().uuidString
    var color: Color
    var initials: String
    var title: String
    var subtitle: String
    var signal: String
    var amount: String
}

let infoData = [
    Info(color: Color(#colorLiteral(red: 0.3152242601, green: 0.4040252864, blue: 0.9546801448, alpha: 1)), initials: "PB", title: "Pizza Burg", subtitle: "April 3, 2018, Tuesday", signal: "-", amount: "$40"),
    
    Info(color: Color(#colorLiteral(red: 0.9264851809, green: 0.4570227265, blue: 0.4659636617, alpha: 1)), initials: "BM", title: "Beth Murphy", subtitle: "April 3, 2018, Tuesday", signal: "-", amount: "$3,340"),
    
    Info(color: Color(#colorLiteral(red: 0.5182590485, green: 0.28698048, blue: 0.7544873953, alpha: 1)), initials: "TY", title: "Tao Yi", subtitle: "April 3, 2018, Tuesday", signal: "+", amount: "$11,140"),
    
    Info(color: Color(#colorLiteral(red: 0.432071209, green: 0.9057072997, blue: 0.5221222043, alpha: 1)), initials: "TM", title: "Tua Manuera", subtitle: "April 3, 2018, Tuesday", signal: "-", amount: "$40"),
    
    Info(color: Color(#colorLiteral(red: 0.8663946986, green: 0.4179340005, blue: 0.6391746998, alpha: 1)), initials: "RB", title: "Rickie Baroch", subtitle: "April 3, 2018, Tuesday", signal: "-", amount: "$340")
]
