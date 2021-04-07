import SwiftUI

struct PopularItem: View {
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Image("google")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .padding(10)
                }
                .background(Color.white)
                .cornerRadius(18)
                
                VStack(alignment: .leading) {
                    Text("Product Designer")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.bottom, 2)
                    
                    Text("Google")
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                }
                .padding(.leading)
                
                Spacer()
                
                Image(systemName: "bookmark")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
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
                    .foregroundColor(.white)
                
                Text("/year")
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
            }
            .padding()
        }
        .background(Color(#colorLiteral(red: 0.1510984004, green: 0.1611196995, blue: 0.1737722456, alpha: 1)))
        .cornerRadius(18)
        .padding()
    }
}

struct PopularItem_Previews: PreviewProvider {
    static var previews: some View {
        PopularItem()
    }
}
