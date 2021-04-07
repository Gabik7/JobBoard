import SwiftUI

struct ContentView: View {
    @State var search = ""
    @State var selected = tabs[0]
    
    @Namespace var animation
    
    @State private var showingDetailView: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    })
                    
                    Spacer(minLength: 0)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "bell")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    })
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                
                Spacer(minLength: 30)
                
                ScrollView {
                    VStack {
                        HStack {
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Find your")
                                    .font(.system(size: 30, weight: .light))
                                    .foregroundColor(Color(#colorLiteral(red: 0.1510984004, green: 0.1611196995, blue: 0.1737722456, alpha: 1)))
                                
                                Text("perfect job")
                                    .font(.system(size: 30, weight: .bold))
                                    .foregroundColor(Color(#colorLiteral(red: 0.1510984004, green: 0.1611196995, blue: 0.1737722456, alpha: 1)))
                            }
                            .padding(.horizontal)
                            
                            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                        }
                        
                        Spacer(minLength: 30)
                        
                        HStack {
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .font(.system(size: 23))
                                    .foregroundColor(Color.black.opacity(0.15))
                                
                                TextField("Search by positions", text: $search)
                                    .foregroundColor(Color.black.opacity(0.15))
                            }
                            .padding()
                            .background(Color.black.opacity(0.06))
                            .cornerRadius(18)
                            
                            Button(action: {}) {
                                Image(systemName: "slider.horizontal.3")
                                    .font(.system(size: 23))
                                    .foregroundColor(Color(#colorLiteral(red: 0.1510984004, green: 0.1611196995, blue: 0.1737722456, alpha: 1)))
                                    .padding()
                                    .background(Color.black.opacity(0.06))
                                    .cornerRadius(18)
                            }
                        }
                        .padding()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 5) {
                                ForEach(tabs, id: \.self){tab in
                                    TabButton(title: tab, selected: $selected, animation: animation)
                                    
                                    if tabs.last != tab{
                                        Spacer(minLength: 0)
                                    }
                                }
                            }
                            .padding()
                            .padding(.top, 5)
                        }
                        
                        HStack {
                            Text("Popular vacancies")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.1510984004, green: 0.1611196995, blue: 0.1737722456, alpha: 1)))
                            
                            Spacer()
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("See more")
                                    .font(.system(size: 12, weight: .bold))
                                    .foregroundColor(.gray)
                            })
                        }
                        .padding(.leading)
                        .padding(.trailing)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< 2) { number in
                                    Button(action: {
                                        self.showingDetailView.toggle()
                                    }) {
                                        PopularItem()
                                            .frame(width: UIApplication.shared.windows.first?.bounds.width)
                                    }
                                    .sheet(isPresented: $showingDetailView) {
                                        JobDetailView()
                                    }
                                }
                            }
                            .padding(.horizontal, 1)
                        }
                        
                        HStack {
                            Text("Recently viewed")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.1510984004, green: 0.1611196995, blue: 0.1737722456, alpha: 1)))
                            
                            Spacer()
                        }
                        .padding(.leading)
                        .padding(.trailing)
                        
                        ScrollView(.vertical, showsIndicators: true) {
                            VStack(spacing: 1) {
                                ForEach(0 ..< 2) { number in
                                    Button(action: {
                                        self.showingDetailView.toggle()
                                    }) {
                                        NextItem()
                                    }
                                    .sheet(isPresented: $showingDetailView) {
                                        JobDetailView()
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

var tabs = ["Design", "Software Engineering", "Data Resource"]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
