//
//  TeslaView.swift
//  TaslaApp
//
//  Created by Shahriar Nasim Nafi on 20/11/21.
//  Copyright © 2021 Shahriar Nasim Nafi. All rights reserved.
//

import SwiftUI

struct TeslaView: View {
    @State var selectedStatus: Tesla = .lock
    @State var unlockStatus: [Bool] = [false, false, false, false]
    @State var tempType: TempType = .cool
    var width = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack {
            VStack {
                StatusHeader(selectedStatus: $selectedStatus)
                ZStack {
                    
                    Image("Car")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .frame(width: width)
                        .transition(.slide)
                        .overlay(selectedStatus == .temperature ? Image(tempType == .cool ? "Cool_glow_2": "Hot_glow_4").resizable().scaledToFit().frame(width: width / 2.6).offset(x: -(width / 4.8)) : nil)
                        .offset(x: selectedStatus == .temperature ? width / 2 : 0)
                    
                    
                    
                    if selectedStatus == .lock {
                        HStack {
                            Button {
                                unlockStatus[0].toggle()
                            } label: {
                                Image(unlockStatus[0] ? "unlock" : "Lock")
                                    .resizable()
                                    .renderingMode(.template)
                                    .scaledToFit()
                                    .foregroundColor(unlockStatus[0] ? .tesla : .red)
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .padding(.all, 8)
                                    .overlay(Circle().stroke(unlockStatus[0] ? Color.tesla : .red, lineWidth: 2))
                            }
                            
                            Spacer()
                            Button {
                                unlockStatus[1].toggle()
                            } label: {
                                Image(unlockStatus[1] ? "unlock" : "Lock")
                                    .resizable()
                                    .renderingMode(.template)
                                    .scaledToFit()
                                    .foregroundColor(unlockStatus[1] ? Color.tesla : Color.red)
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .padding(.all, 8)
                                    .overlay(Circle().stroke(unlockStatus[1] ? Color.tesla : .red, lineWidth: 2))
                            }
                            
                        }
                        
                        .padding(.all, 20)
                        .transition(.scale)
                        VStack {
                            Button {
                                unlockStatus[2].toggle()
                            } label: {
                                Image(unlockStatus[2] ? "unlock" : "Lock")
                                    .resizable()
                                    .renderingMode(.template)
                                    .scaledToFit()
                                    .foregroundColor(unlockStatus[2] ? .tesla : .red)
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .padding(.all, 8)
                                    .overlay(Circle().stroke(unlockStatus[2] ? Color.tesla : .red, lineWidth: 2))
                            }
                            
                            Spacer()
                            Button {
                                unlockStatus[3].toggle()
                            } label: {
                                Image(unlockStatus[3] ? "unlock" : "Lock")
                                    .resizable()
                                    .renderingMode(.template)
                                    .scaledToFit()
                                    .foregroundColor(unlockStatus[3] ? .tesla : .red)
                                    .frame(width: 25, height: 25, alignment: .center)
                                    .padding(.all, 8)
                                    .overlay(Circle().stroke(unlockStatus[3] ? Color.tesla : .red, lineWidth: 2))
                            }
                            .offset(y: -30)
                            
                        }
                        
                        .padding(.all, 40)
                        .transition(.scale)
                    } else if selectedStatus == .battery {
                        
                        VStack {
                            Text("220mi")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.bottom, 1)
                            
                            Text("62%")
                                .font(.title)
                                .foregroundColor(.white)
                            Spacer()
                            
                        }
                        .transition(.offset(y: 45))
                        .padding(.all, 20)
                        
                        VStack {
                            Image("Battery")
                                .resizable()
                                .scaledToFit()
                                .padding()
                                .frame(width: width / 2.0)
                            
                        }
                        .offset(y: -25)
                        .transition(.scale)
                        
                        VStack {
                            Spacer()
                            Text("CHARGING")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding(.bottom, 1)
                            Text("58 min remaining")
                                .font(.title2)
                                .foregroundColor(.white)
                            HStack {
                                Text("22 mi/hr")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Spacer()
                                Text("232 V")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            }
                            .padding()
                        }
                        .transition(.offset(y: -45))
                        .padding(.all, 20)
                        
                    } else if selectedStatus == .temperature {
                        TemperatureView(tempType: $tempType)
                        
                    } else if selectedStatus == .tyrepressure {
                        TyreInfo()
                            .transition(.slide)
                    }
                }
                
                
            }
            .background(Color.black)
            
            
        }
    }
}

struct TeslaView_Previews: PreviewProvider {
    static var previews: some View {
        TeslaView()
    }
}
