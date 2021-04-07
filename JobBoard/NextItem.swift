import SwiftUI

struct NextItem: View {
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Image("google")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .padding(10)
                        .overlay(
                           RoundedRectangle(cornerRadius: 18)
                               .stroke(Color.gray.opacity(0.20), lineWidth: 1)
                        )
                    
                }
                .background(Color.white)
                .cornerRadius(18)
                
                VStack(alignment: .leading) {
                    Text("Product Designer")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.2256167531, green: 0.2356364429, blue: 0.2440036237, alpha: 1)))
                        .padding(.bottom, 2)
                    
                    Text("Google")
                        .font(.system(size: 14))
                        .foregroundColor(Color(#colorLiteral(red: 0.2256167531, green: 0.2356364429, blue: 0.2440036237, alpha: 1)))
                }
                .padding(.leading)
                
                Spacer()
            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Text("Design")
                        .font(.system(size: 10))
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
                        .font(.system(size: 10))
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
                        .font(.system(size: 10))
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
            .padding(.leading)
            .padding(.bottom)
            
            HStack {
                Text("Palo Alto, CA")
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
                    .padding(.bottom, 2)
                
                Spacer()
                
                Text("$150,000")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 0.2256167531, green: 0.2356364429, blue: 0.2440036237, alpha: 1)))
                
                Text("/year")
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
            }
            .padding()
        }
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .overlay(
           RoundedRectangle(cornerRadius: 18)
            .stroke(Color.gray.opacity(0.20), lineWidth: 1)
        )
        .overlay(
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "bookmark.fill")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 0.2449693084, green: 0.9585306048, blue: 0.6498360038, alpha: 1)))
                    .offset(x: 140, y: -95)
            })
        )
        .padding()
    }
}

struct NextItem_Previews: PreviewProvider {
    static var previews: some View {
        NextItem()
    }
}
