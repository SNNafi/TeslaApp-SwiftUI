//
//  TireInfoItem.swift
//  TaslaApp
//
//  Created by Shahriar Nasim Nafi on 20/11/21.
//  Copyright © 2021 Shahriar Nasim Nafi. All rights reserved.
//

import SwiftUI

struct TyreInfo: View {
    var tyrePsi = TyrePsi.psiList[0]
    var width = UIScreen.main.bounds.width
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(TyrePsi.psiList[0].psiLabel)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    Text(TyrePsi.psiList[0].temperatureLabel)
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    Spacer()
                    if TyrePsi.psiList[0].isLowPressure {
                        
                        Text("LOW")
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                        Text("PRESSURE")
                            .font(.title2)
                            .foregroundColor(.white)
                        
                    }
                }
                .padding()
                .border(.red, width: 2)
                
                VStack(alignment: .trailing) {
                    Text(TyrePsi.psiList[1].psiLabel)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    Text(TyrePsi.psiList[1].temperatureLabel)
                        .font(.title2)
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding()
                .border(Color.tesla, width: 2)
                
            }
            
            
            HStack {
                VStack(alignment: .trailing) {
                    Text(TyrePsi.psiList[2].psiLabel)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    Text(TyrePsi.psiList[2].temperatureLabel)
                        .font(.title2)
                        .foregroundColor(.white)
                    Spacer()
                    
                }
                .padding()
                .border(Color.tesla, width: 2)
                
                VStack(alignment: .trailing) {
                    Text(TyrePsi.psiList[3].psiLabel)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    Text(TyrePsi.psiList[3].temperatureLabel)
                        .font(.title2)
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding()
                .border(Color.tesla, width: 2)
                
            }
            
            
        }
        
    }
}

struct TyreInfo_Previews: PreviewProvider {
    static var previews: some View {
        TyreInfo()
    }
}
