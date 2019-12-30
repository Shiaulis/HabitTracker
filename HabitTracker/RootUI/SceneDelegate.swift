//
//  SceneDelegate.swift
//  HabitTracker
//
//  Created by Andrius Shiaulis on 30.12.2019.
//  Copyright © 2019 Andrius Shiaulis. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    private let window: UIWindow = .init(frame: UIScreen.main.bounds)

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let rootViewController = RootViewController()
        self.window.rootViewController = rootViewController
        self.window.makeKeyAndVisible()
        self.window.windowScene = windowScene
    }

}
