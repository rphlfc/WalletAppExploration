//
//  ContentView.swift
//  WalletAppExploration
//
//  Created by Raphael Cerqueira on 17/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var topNavBarSelectedIndex = 0
    
    var body: some View {
        ZStack {
            Color("background").edgesIgnoringSafeArea(.all)
            
            ZStack(alignment: .bottom) {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Transaction")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(Color("text"))
                            .padding(.top)
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            ZStack(alignment: .topTrailing) {
                                Image(systemName: "bell.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 25)
                                    .foregroundColor(Color(#colorLiteral(red: 0.6621162891, green: 0.6699317694, blue: 0.7221717238, alpha: 1)))
                                
                                Circle()
                                    .foregroundColor(Color(#colorLiteral(red: 0.9981037974, green: 0.4815000892, blue: 0.483004272, alpha: 1)))
                                    .frame(width: 10, height: 10)
                            }
                        }
                    }
                    
                    TopNavBarView(selectedIndex: self.$topNavBarSelectedIndex)
                        .padding(.top, 32)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            CardView(colors: [Color(#colorLiteral(red: 0.5399339795, green: 0.633271873, blue: 0.9989008307, alpha: 1)), Color(#colorLiteral(red: 0.3673488498, green: 0.4606823325, blue: 0.9980909228, alpha: 1))])
                            CardView(colors: [Color(#colorLiteral(red: 0.9993644357, green: 0.6515241861, blue: 0.6505957246, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.5029973388, blue: 0.5035125613, alpha: 1))])
                            CardView(colors: [Color(#colorLiteral(red: 0.8332657218, green: 0.66456002, blue: 0.9982710481, alpha: 1)), Color(#colorLiteral(red: 0.6316172481, green: 0.4134737849, blue: 0.8528401852, alpha: 1))])
                        }
                    }
                    .padding(.top, 32)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                InfoView()
                    .edgesIgnoringSafeArea(.bottom)
                    .frame(height: 350)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
            ContentView().environment(\.colorScheme, .dark)
        }
    }
}


