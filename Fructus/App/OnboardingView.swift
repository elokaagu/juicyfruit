import SwiftUI

struct OnboardingView: View {
    var body: some View {
        //MARK: - PROPERTIES
        let fruits: [Fruit] = fruitsData
        
        //MARK: - BODY
        TabView{
            ForEach(fruits[0...5]) {
                item in
                FruitCardView(fruit: item)
            } // : LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    //MARK: - PREVIEW
    static var previews: some View {
        OnboardingView()
            .previewDevice("iPhone 11 Pro")
    }
}
