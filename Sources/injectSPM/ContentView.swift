import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#if DEBUG
import AppKit
class Refresher {
    @objc class func injected() {
        NSApplication.shared.windows.first?.contentView =
            NSHostingView(rootView: ContentView())
    }
}
#endif
