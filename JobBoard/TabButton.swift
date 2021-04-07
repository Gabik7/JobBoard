import SwiftUI

struct TabButton: View {
    var title: String
    @Binding var selected: String
    
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()) {
                selected = title
            }
        }, label: {
            Text(title)
                .font(.system(size: 14))
                .fontWeight(.medium)
                .foregroundColor(.black)
                .padding(.vertical, 10)
                .padding(.horizontal, 20)
                .background(
                    ZStack{
                        if selected == title {
                            Color(#colorLiteral(red: 0.2449693084, green: 0.9585306048, blue: 0.6498360038, alpha: 1))
                                .clipShape(Capsule())
                                .matchedGeometryEffect(id: "Tab", in: animation)
                        } else {
                            Color(#colorLiteral(red: 0.9999466538, green: 0.9309838414, blue: 0.2268452346, alpha: 1))
                                .clipShape(Capsule())
                        }
                    }
                )
        })
    }
}
