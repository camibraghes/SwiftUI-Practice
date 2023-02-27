
import SwiftUI

struct ViewComposition: View {
    var body: some View {
        VStack(spacing: 10) {
                    CapsuleText(text: "First")
                    CapsuleText(text: "Second")
                }
    }
}

struct ViewComposition_Previews: PreviewProvider {
    static var previews: some View {
        ViewComposition()
    }
}

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}
