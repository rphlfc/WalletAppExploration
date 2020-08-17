//
//  CardView.swift
//  WalletAppExploration
//
//  Created by Raphael Cerqueira on 17/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var colors: [Color]
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack(alignment: .leading) {
                HStack {
                    Text("Balance")
                        .font(.system(size: 18))
                        .padding(.top)
                    
                    Spacer()
                    
                    ZStack {
                        Circle()
                            .foregroundColor(Color(#colorLiteral(red: 0.9995114207, green: 0.7353406549, blue: 0.3102956414, alpha: 1)))
                            .frame(width: 20, height: 20)
                            .offset(x: -10)
                        
                        Circle()
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.4881224632, blue: 0.308005929, alpha: 1)))
                            .frame(width: 20, height: 20)
                        
                    }
                }
                
                Text("$34.465,00")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .padding(.top, 16)
                
                Text("Card number")
                    .padding(.top, 20)
                
                Text("**** **** **** 4321")
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                
                Text("Expired: 04/34")
                    .font(.system(size: 14))
                    .padding(.top, 48)
                    .padding(.bottom)
            }
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [colors[0], colors[1]]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(20)
            
            Circle()
                .frame(width: 90, height: 90)
                .foregroundColor(Color.white.opacity(0.3))
                .offset(x: 10, y: 10)
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(colors: [Color(#colorLiteral(red: 0.5399339795, green: 0.633271873, blue: 0.9989008307, alpha: 1)), Color(#colorLiteral(red: 0.3673488498, green: 0.4606823325, blue: 0.9980909228, alpha: 1))])
    }
}
