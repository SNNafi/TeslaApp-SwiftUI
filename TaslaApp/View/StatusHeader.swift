//
//  StatusHeader.swift
//  TaslaApp
//
//  Created by Shahriar Nasim Nafi on 20/11/21.
//  Copyright © 2021 Shahriar Nasim Nafi. All rights reserved.
//

import SwiftUI

struct StatusHeader: View {
    @Binding var selectedStatus: Tesla
    var body: some View {
        VStack {
            Text(selectedStatus.title)
                .foregroundColor(.white)
            HStack {
                ForEach(Tesla.allCases) { tesla in
                    Button {
                        withAnimation(.linear(duration: 0.6)) {
                            selectedStatus = tesla
                        }
                    } label: {
                        Image(tesla.image)
                            .resizable()
                            .renderingMode(.template)
                            .scaledToFit()
                            .foregroundColor(selectedStatus == tesla ? .tesla : .gray)
                            .frame(width: 35, height: 35, alignment: .center)
                           
                           
                    }
                   
                    .padding()
                }
            }
            .background(Color.black)
        }
    }
}

struct StatusHeader_Previews: PreviewProvider {
    static var previews: some View {
        StatusHeader(selectedStatus: .constant(.lock))
    }
}
