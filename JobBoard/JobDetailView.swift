import SwiftUI

struct JobDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        Image(systemName: "bookmark")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }
                }
                .padding(.top, 30)
                .padding(.vertical, 10)
                .padding(.horizontal)
                
                Spacer(minLength: 30)
            }
            .zIndex(1)
            
            ZStack() {
                Button(action: {}, label: {
                    Text("Apply for a job")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .padding(20)
                        .padding(.leading, 60)
                        .padding(.trailing, 60)
                })
                .background(Color(#colorLiteral(red: 0.2256167531, green: 0.2356364429, blue: 0.2440036237, alpha: 1)))
                .cornerRadius(10.0)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
//            .offset(y: 350)
            .padding()
            .zIndex(1)

            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack {
                        Image("google")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 60)
                            .padding(10)
                            .overlay(
                               RoundedRectangle(cornerRadius: 18)
                                   .stroke(Color.gray.opacity(0.20), lineWidth: 1)
                            )

                    }
                    .background(Color.white)
                    .cornerRadius(18)

                    VStack {
                        Text("Product Designer")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.2256167531, green: 0.2356364429, blue: 0.2440036237, alpha: 1)))
                            .padding(.bottom, 2)

                        Text("Google, Palo Alto, CA")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                            .padding(.bottom)

                        HStack {
                            Text("Design")
                                .font(.system(size: 13))
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                                .background(
                                    ZStack {
                                        Color(#colorLiteral(red: 0.2256167531, green: 0.2356364429, blue: 0.2440036237, alpha: 1))
                                            .clipShape(Capsule())
                                    }
                                )

                            Text("Full time")
                                .font(.system(size: 13))
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                                .background(
                                    ZStack {
                                        Color(#colorLiteral(red: 0.2256167531, green: 0.2356364429, blue: 0.2440036237, alpha: 1))
                                            .clipShape(Capsule())
                                    }
                                )

                            Text("3 years exp.")
                                .font(.system(size: 13))
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                                .background(
                                    ZStack {
                                        Color(#colorLiteral(red: 0.2256167531, green: 0.2356364429, blue: 0.2440036237, alpha: 1))
                                            .clipShape(Capsule())
                                    }
                                )
                        }
                    }

                    VStack {
                        Text("Qualifications")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.2256167531, green: 0.2356364429, blue: 0.2440036237, alpha: 1)))
                            .padding(.bottom, 2)
                    }
                    .padding(.top, 20)
                    .offset(x: -110)

                    HStack {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 5))
                            .padding(.trailing, 10)

                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis scelerisque hendrerit justo, convallis ullamcorper elit dignissim at. ")
                            .font(.system(size: 18))
                            .foregroundColor(.gray)
                            .padding(.bottom, 2)
                    }
                    .padding()

                    HStack {
                        Image(systemName: "circle.fill")
                            .font(.system(size: 5))
                            .padding(.trailing, 10)

                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis scelerisque hendrerit justo, convallis ullamcorper elit dignissim at. ")
                            .font(.system(size: 18))
                            .foregroundColor(.gray)
                            .padding(.bottom, 2)
                    }
                    .padding()

                    VStack {
                        Text("About the job")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.2256167531, green: 0.2356364429, blue: 0.2440036237, alpha: 1)))
                            .padding(.bottom, 2)
                    }
                    .padding(.top, 20)
                    .offset(x: -110)

                    VStack {
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                            .font(.system(size: 18))
                            .foregroundColor(.gray)
                            .padding(.bottom, 30)
                    }
                    .offset(x: -4)
                }
                .padding(.top, 90)
            }
        }
    }
}

struct JobDetailView_Previews: PreviewProvider {
    static var previews: some View {
        JobDetailView()
    }
}
