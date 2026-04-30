import ARKit
import RealityKit
import SwiftUI

/// Handles hand gesture input for visionOS interactions
@MainActor
class HandGestureHandler: ObservableObject {

    private let session = ARKitSession()
    private let handTracking = HandTrackingProvider()

    @Published var leftHandAnchor: HandAnchor?
    @Published var rightHandAnchor: HandAnchor?

    func startTracking() async {
        guard HandTrackingProvider.isSupported else {
            print("Hand tracking is not supported on this device.")
            return
        }
        do {
            try await session.run([handTracking])
            for await update in handTracking.anchorUpdates {
                switch update.anchor.chirality {
                case .left:
                    leftHandAnchor = update.anchor
                case .right:
                    rightHandAnchor = update.anchor
                }
            }
        } catch {
            print("ARKit session error: \(error)")
        }
    }

    func stopTracking() {
        session.stop()
    }
}
