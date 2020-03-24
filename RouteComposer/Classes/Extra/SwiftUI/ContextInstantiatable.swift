//
// RouteComposer
// ContextInstantiatable.swift
// https://github.com/ekazaev/route-composer
//
// Created by Eugene Kazaev in 2018-2020.
// Distributed under the MIT license.
//

#if os(iOS) && canImport(SwiftUI)

import Foundation
import SwiftUI
import UIKit

/// `View` instance should conform to this protocol to be used with `UIHostingControllerWithContextFactory`
@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public protocol ContextInstantiatable where Self: View {

    /// Type of `Context` object that `UIViewController` can deal with
    associatedtype Context

    /// Constructor
    init(with context: Context)

}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ContextInstantiatable where Context == Void {

    /// Constructor
    init() {
        self.init(with: ())
    }

}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ContextInstantiatable where Context == Any? {

    /// Constructor
    init() {
        self.init(with: nil)
    }

}

#endif
