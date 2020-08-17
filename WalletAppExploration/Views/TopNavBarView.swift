//
//  TopNavBarView.swift
//  WalletAppExploration
//
//  Created by Raphael Cerqueira on 17/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TopNavBarView: View {
    let items = ["Today", "Week", "Month"]
    @Binding var selectedIndex: Int
    
    var body: some View {
        HStack(spacing: 40) {
            ForEach(0 ..< self.items.count) { i in
                Button(action: {
                    self.selectedIndex = i
                }) {
                    Text(self.items[i])
                        .font(.system(size: self.selectedIndex == i ? 22 : 18))
                        .fontWeight(self.selectedIndex == i ? .semibold : .regular)
                        .foregroundColor(self.selectedIndex == i ? Color("text") : .gray)
                }
            }
        }
    }
}

struct TopNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopNavBarView(selectedIndex: .constant(0))
    }
}
