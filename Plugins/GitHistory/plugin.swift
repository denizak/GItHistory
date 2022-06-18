import Foundation
import PackagePlugin

@main struct GitHistory: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        return [
            .prebuildCommand(displayName: "Last Git commit",
                             executable: .init("/usr/bin/git"),
                             arguments: [
                                "log", "--oneline", "--format=\"%s\"", "-n 5"],
                             outputFilesDirectory: .init("~/.history"))
        ]
    }
}
