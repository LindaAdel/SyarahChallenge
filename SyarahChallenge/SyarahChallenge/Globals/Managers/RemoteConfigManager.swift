//
//  RemoteConfigManager.swift
//  SyarahChallenge
//
//  Created by Linda adel on 22/03/2024.
//

import Foundation
import FirebaseRemoteConfig

class RemoteConfigManager {
    
  static let sharedInstance = RemoteConfigManager()
  var loadingDoneCallback: (() -> Void)?
  var fetchComplete = false

  private init() {
    loadDefaultValues()
    fetchCloudValues()
  }

  func loadDefaultValues() {
    let appDefaults: [String: Any?] = [
        ValueKey.enable_firebase_analytics.rawValue : true,
        ValueKey.enable_mixpanel_analytics.rawValue : true,
        ValueKey.enable_amplitude_analytics.rawValue : true
    ]
    RemoteConfig.remoteConfig().setDefaults(appDefaults as? [String: NSObject])
  }

  func fetchCloudValues() {
    activateDebugMode()

    RemoteConfig.remoteConfig().fetch { [weak self] _, error in
      if let error = error {
        print("Got an error fetching remote values \(error)")
        return
      }

      RemoteConfig.remoteConfig().activate { [weak self] _, _ in
        print("Retrieved values from the cloud!")
        self?.fetchComplete = true
        DispatchQueue.main.async {
          self?.loadingDoneCallback?()
        }
      }
    }
  }

  func activateDebugMode() {
    let settings = RemoteConfigSettings()
    // WARNING: Don't actually do this in production!
    settings.minimumFetchInterval = 0
    RemoteConfig.remoteConfig().configSettings = settings
  }

  func bool(forKey key: ValueKey) -> Bool {
    RemoteConfig.remoteConfig()[key.rawValue].boolValue
  }

}
