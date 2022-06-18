import Foundation
import PackagePlugin

@main struct GitHistory: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        let output = context.pluginWorkDirectory.appending([".history"])
        return [
            .prebuildCommand(displayName: "Last Git commit",
                             executable: .init("/usr/bin/git"),
                             arguments: [
                                "log", "--oneline", "--format=\"%s\"", "-n 5"],
                             outputFilesDirectory: output)
        ]
    }
}
