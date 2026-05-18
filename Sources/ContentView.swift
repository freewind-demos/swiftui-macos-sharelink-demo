import SwiftUI

struct ContentView: View {
    private let shareText = "SwiftUI ShareLink demo"
    private let shareURL = URL(string: "https://developer.apple.com/xcode/swiftui/")!

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ShareLink(item: shareText) {
                Label("分享文本", systemImage: "square.and.arrow.up")
            }

            ShareLink(item: shareURL) {
                Label("分享 URL", systemImage: "link")
            }

            Text("点按钮会调起系统分享面板。")
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
