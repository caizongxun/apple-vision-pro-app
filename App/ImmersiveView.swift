import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {

    var body: some View {
        RealityView { content in
            // Add a basic 3D sphere as a placeholder
            let sphere = ModelEntity(
                mesh: .generateSphere(radius: 0.1),
                materials: [SimpleMaterial(color: .systemBlue, isMetallic: true)]
            )
            sphere.position = SIMD3(x: 0, y: 1.5, z: -1.5)
            content.add(sphere)
        }
    }
}

#Preview(immersionStyle: .mixed) {
    ImmersiveView()
}
