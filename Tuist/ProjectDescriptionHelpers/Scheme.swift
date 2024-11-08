//
//  Scheme.swift
//  ProjectDescriptionHelpers
//
//  Created by 강현준 on 11/4/24.
//

import ProjectDescription

// MARK: - Scheme Extension
public extension Scheme {
    static func makeScheme(configs: ConfigurationName, name: String) -> Scheme {
        return scheme(
            name: name,
            shared: true,
            buildAction: .buildAction(targets: ["\(name)"]),
            testAction: .targets(
                ["\(name)Tests"],
                configuration: configs,
                options: .options(coverage: true, codeCoverageTargets: ["\(name)"])
            ),
            runAction: .runAction(configuration: configs),
            archiveAction: .archiveAction(configuration: configs),
            profileAction: .profileAction(configuration: configs),
            analyzeAction: .analyzeAction(configuration: configs)
        )
    }
    
    static func makeDebugScheme(configs: ConfigurationName, name: String) -> Scheme {
        return scheme(
            name: name,
            shared: true,
            buildAction: .buildAction(targets: ["\(name)"]),
            testAction: .targets(
                ["\(name)Tests"],
                configuration: configs,
                options: .options(coverage: true, codeCoverageTargets: ["\(name)"])
            ),
            runAction: .runAction(configuration: configs),
            archiveAction: .archiveAction(configuration: configs),
            profileAction: .profileAction(configuration: configs),
            analyzeAction: .analyzeAction(configuration: configs)
        )
    }
    
    static func makeDemoScheme(configs: ConfigurationName, name: String) -> Scheme {
        return scheme(
            name: "\(name)Demo" ,
            shared: true,
            buildAction: .buildAction(targets: ["\(name)Demo"]),
            testAction: .targets(
                ["\(name)Tests"],
                configuration: configs,
                options: .options(coverage: true, codeCoverageTargets: ["\(name)Demo"])
            ),
            runAction: .runAction(configuration: configs),
            archiveAction: .archiveAction(configuration: configs),
            profileAction: .profileAction(configuration: configs),
            analyzeAction: .analyzeAction(configuration: configs)
        )
    }
}
