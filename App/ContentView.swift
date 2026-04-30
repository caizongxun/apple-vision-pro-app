import SwiftUI
import RealityKit

struct ContentView: View {

    @State private var showImmersiveSpace = false
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace

    var body: some View {
        VStack(spacing: 20) {
            Text("Apple Vision Pro App")
                .font(.extraLargeTitle)
                .padding()

            Text("Welcome to visionOS")
                .font(.title)
                .foregroundStyle(.secondary)

            Toggle("Immersive Space", isOn: $showImmersiveSpace)
                .toggleStyle(.button)
                .padding()
        }
        .padding(40)
        .glassBackgroundEffect()
        .onChange(of: showImmersiveSpace) { _, newValue in
            Task {
                if newValue {
                    await openImmersiveSpace(id: "ImmersiveSpace")
                } else {
                    await dismissImmersiveSpace()
                }
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
