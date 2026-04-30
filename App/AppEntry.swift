import SwiftUI

@main
struct VisionProApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(.plain)

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
        .immersionStyle(selection: .constant(.mixed), in: .mixed)
    }
}
