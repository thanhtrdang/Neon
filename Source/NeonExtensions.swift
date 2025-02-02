//
//  NeonExtensions.swift
//  Neon
//
//  Created by Mike on 03/08/2016.
//  Copyright © 2015 Mike Amaral. All rights reserved.
//

#if os(iOS)
    import UIKit
    typealias View = UIView
#else
    import Cocoa
    typealias View = NSView
#endif

// MARK: UIView implementation of the Neon protocols.
//
extension View : Frameable, Anchorable, Alignable, Groupable {
    public var superFrame: CGRect {
        guard let superview = superview else {
            return CGRect.zero
        }

        return superview.frame
    }

    public func setDimensionAutomatically() -> Self {
        #if os(iOS)
            sizeToFit()
        #else
            autoresizesSubviews = true
            autoresizingMask = [.viewWidthSizable, .viewHeightSizable]
        #endif
        
        return self
    }
}


// MARK: CALayer implementation of the Neon protocols.
//
extension CALayer : Frameable, Anchorable, Alignable, Groupable {
    public var superFrame: CGRect {
        guard let superlayer = superlayer else {
            return CGRect.zero
        }

        return superlayer.frame
    }

    public func setDimensionAutomatically() -> Self {
        /* no-op here as this shouldn't apply to CALayers */
        return self
    }
}
