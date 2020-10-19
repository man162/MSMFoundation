//
//  AppInfo.swift
//  MSMFoundation
//
//  Created by Manpreet Singh on 2020-10-19.
//

import UIKit
import DeviceKit

public enum AppEnvironment {
    case debug
    case production
}

public protocol AppInfo: class {
    var appVersion: String { get }
    var appBuild: String { get }
    var brandName: String { get }
    var bundleId: String { get }
    var deviceModelName: String { get }
    var deviceModelDescription: String { get }
    var environment: AppEnvironment { get }
    var platformId: String { get }
    var systemName: String { get }
    var systemVersion: String { get }
    var uuid: String? { get }
}

class AppInfoImpl: AppInfo {

    let platformId: String
    private let device = Device.current

    init(environment: AppEnvironment, platformId: String) {
        self.environment = environment
        self.platformId = platformId
    }

    var appVersion: String {
        return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
    }

    var appBuild: String = {
       return Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? ""
    }()

    var brandName: String {
        return "alInOne"
    }

    var bundleId: String {
        return Bundle.main.bundleIdentifier!
    }

    var deviceModelName: String {
        return device.model ?? ""
    }

    var deviceModelDescription: String {
        return device.description
    }

    var environment: AppEnvironment

    var systemName: String = {
        return UIDevice.current.systemName
    }()

    var systemVersion: String = {
        return UIDevice.current.systemVersion
    }()

    var uuid: String? = {
        return UIDevice.current.identifierForVendor?.uuidString
    }()
}
