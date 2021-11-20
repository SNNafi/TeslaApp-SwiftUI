//
//  TemperatureView.swift
//  TaslaApp
//
//  Created by Shahriar Nasim Nafi on 20/11/21.
//  Copyright © 2021 Shahriar Nasim Nafi. All rights reserved.
//

import SwiftUI

enum TempType: Int {
    case hot = 1
    case cool
}

struct TemperatureView: View {
    @Binding var tempType: TempType
    @State var temperature: Int = 22
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Button {
                    withAnimation(.linear(duration: 0.7)) {
                        tempType = tempType == .hot ? .cool : .hot
                    }
                } label: {
                    VStack {
                        Image("coolShape")
                            .resizable()
                            .renderingMode(.template)
                            .scaledToFit()
                            .frame(width: tempType == .cool ? 85 : 62, height: tempType == .cool ? 85 : 62, alignment: .center)
                        .transition(.scale)
                        Text("COOL")
                            .font(tempType == .cool ? .headline : .subheadline)
                           
                    }
                    .foregroundColor(tempType == .cool ? .tesla : .gray)
                }

                Button {
                    withAnimation(.linear(duration: 0.7)) {
                        tempType = tempType == .hot ? .cool : .hot
                    }
                } label: {
                    VStack {
                        Image("heatShape")
                            .resizable()
                            .renderingMode(.template)
                            .scaledToFit()
                            .frame(width: tempType == .hot ? 85 : 62, height: tempType == .hot ? 85 : 62, alignment: .center)
                        .transition(.scale)
                        Text("HEAT")
                            .font(tempType == .hot ? .headline : .subheadline)
                           
                    }
                    .foregroundColor(tempType == .hot ? .red : .gray)
                }
                
                Spacer()

            }
            .padding(.leading, 30)
            Spacer()
            VStack {
                Button {
                    temperature+=1
                } label: {
                    Image(systemName: "chevron.left.square.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .rotationEffect(.degrees(90))
                       
                }
                .offset(y: 40)
                
                Text("\(temperature)°C")
                    .font(.system(size: 110))
                Button {
                    temperature-=1
                } label: {
                    Image(systemName: "chevron.left.square.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .rotationEffect(.degrees(-90))
                        
                }
                .offset(y: -47)
                   
            }
            .foregroundColor(.white)
            .padding()
            Spacer()
            VStack {
                Text("CURRENT TEMPERATURE")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(.bottom, 5)
                
                HStack {
                    VStack {
                        Text("INSIDE")
                            .font(.headline)
                        Text("\(temperature)°C")
                            .font(.title)
                    }
                    .foregroundColor(.white)
                    .padding(.trailing, 25)
                    
                    VStack {
                        Text("OUTSIDE")
                            .font(.headline)
                        Text(tempType == .cool ? "15°C" : "35°C")
                            .font(.title)
                    }
                    .foregroundColor(.gray)
                }
            }
            .padding()
           
        }
    }
}

struct TemperatureView_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureView(tempType: .constant(.cool))
    }
}
