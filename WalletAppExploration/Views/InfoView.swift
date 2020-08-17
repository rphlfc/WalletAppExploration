//
//  InfoView.swift
//  WalletAppExploration
//
//  Created by Raphael Cerqueira on 17/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 90, height: 8)
                .foregroundColor(Color("drag"))
                .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(infoData) { info in
                        RowView(info: info)
                    }
                }
            }
        }
        .padding()
        .background(Color("infoBackground"))
        .cornerRadius(40)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

struct RowView: View {
    var info: Info
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Circle()
                        .frame(width: 70, height: 70)
                        .foregroundColor(info.color.opacity(0.3))
                    
                    Text(info.initials)
                        .foregroundColor(info.color)
                }
                
                VStack(alignment: .leading) {
                    Text(info.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("text"))
                    
                    Text(info.subtitle)
                        .foregroundColor(.gray)
                        .padding(.top, 8)
                }
                .padding(.leading)
                
                Spacer()
                
                HStack(spacing: 4) {
                    Text(info.signal)
                        .foregroundColor(info.signal.elementsEqual("-") ? Color(#colorLiteral(red: 0.8930629492, green: 0.4423119426, blue: 0.4597078562, alpha: 1)) : Color(#colorLiteral(red: 0.3912505507, green: 0.7258948088, blue: 0.3816880286, alpha: 1)))
                    
                    Text(info.amount)
                        .fontWeight(.bold)
                        .foregroundColor(Color("text"))
                }
            }
            
            Divider().background(Color.gray)
                .padding(.vertical, 8)
        }
    }
}
