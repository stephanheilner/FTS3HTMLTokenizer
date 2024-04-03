// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import Foundation
import PackageDescription

let package = Package(
    name: "FTS3HTMLTokenizer",
    products: [
        .library(
            name: "FTS3HTMLTokenizer",
            targets: ["FTS3HTMLTokenizer"]
        ),
        .library(
            name: "libstemmer_c",
            targets: ["libstemmer_c"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "FTS3HTMLTokenizer",
            dependencies: ["libstemmer_c"],
            path: "Sources/FTS3HTMLTokenizer",
            resources: [.copy("PrivacyInfo.xcprivacy")],
            publicHeadersPath: "",
            linkerSettings: [
                .linkedLibrary("sqlite3"),
                .linkedLibrary("c++")
            ]
        ),
        .target(
            name: "libstemmer_c",
            dependencies: [],
            exclude: [
                "examples",
                "libstemmer_c.in",
                "libstemmer/modules_utf8.txt",
                "libstemmer/modules.txt",
                "libstemmer/libstemmer_c.in",
                "libstemmer/libstemmer.c",
                "libstemmer/modules.h",
                "Makefile",
                "MANIFEST",
                "mkinc.mak",
                "mkinc_utf8.mak",
                "modules.txt",
                "README"
            ],
            sources: [
                "include",
                "libstemmer",
                "runtime",
                "src_c"
            ],
            publicHeadersPath: "include",
            linkerSettings: [
                .linkedLibrary("c++"),
            ]
        )
    ]
)
