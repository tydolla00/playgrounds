//
//  CardView.swift
//  Hike
//
//  Created by Tyheir Brooks on 1/2/24.
//

import SwiftUI

struct CardView: View {
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false

    func randomImage() {
        repeat{
            randomNumber = Int.random(in: 1 ... 5)
        } while randomNumber == imageNumber
        imageNumber = randomNumber
    }

    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom
                                )
                            )
                        Spacer()
                        Button {
                            print("The button was pressed")
                            isShowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet){
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    Text("Fun and Enjoyable outdoor activity for friends and family.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                    Button {
                        print("The button was pressed.")
                        randomImage()
                    } label: {
                        Text("Explore More")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom))
                            .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                    }
                    .buttonStyle(GradientButton())
                }
            }
            .frame(width: 320, height: 570)
        }
    }
}

#Preview {
    CardView().padding(50)
}
