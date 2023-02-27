
import SwiftUI

struct CustomContainer: View {
    @State var number: Int = 0
    
    var body: some View {
        Matrix(rows: 6, columns: 6) { row, column in
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Text("Ro:")
                    Image(systemName: "\(row).circle")
                }
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(4)
                
                HStack(spacing: 0) {
                    Text("Col:")
                    Image(systemName: "\(column).square")
                    
                }
                
                Text("\(row+column)")
                    .padding(2)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(4)
                
            }.padding(4)
        }
    }
}

struct CustomContainer_Previews: PreviewProvider {
    static var previews: some View {
        CustomContainer()
    }
}

struct Matrix<Content: View>: View {
    let rows: Int
    let columns: Int
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    
                    }
                }
            }
        }
    }
}


