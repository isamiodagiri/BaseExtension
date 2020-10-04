
import UIKit

public struct TargetedExtension<Base> {
    let base: Base
    init (_ base: Base) {
        self.base = base
    }
}

public protocol TargetedExtensionCompatible {
    associatedtype Compatible
    static var ex: TargetedExtension<Compatible>.Type { get }
    var ex: TargetedExtension<Compatible> { get }
}

public extension TargetedExtensionCompatible {
    static var ex: TargetedExtension<Self>.Type {
        return TargetedExtension<Self>.self
    }

    var ex: TargetedExtension<Self> {
        return TargetedExtension(self)
    }
}
