import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack(spacing: 16) {
            Text("Hello World")
                .font(.extraLargeTitle)

            Text("Welcome to Apple Vision Pro")
                .font(.title3)
                .foregroundStyle(.secondary)
        }
        .padding(40)
        .glassBackgroundEffect()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
