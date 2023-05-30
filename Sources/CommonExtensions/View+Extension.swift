//
//  View+Extension.swift
//  
//
//  Created by Lucas de Castro Souza on 30/05/23.
//

import SwiftUI
import CommonObjects

public extension View {
    
    /// Calls the completion handler whenever an animation on the given value completes.
    /// - Parameters:
    ///   - value: The value to observe for animations.
    ///   - completion: The completion callback to call once the animation completes.
    /// - Returns: A modified `View` instance with the observer attached.
    /// - Reference Link: https://www.avanderlee.com/swiftui/withanimation-completion-callback/
    func onAnimationCompleted<Value: VectorArithmetic>(for value: Value, completion: @escaping () -> Void) -> ModifiedContent<Self, AnimationCompletionObserverModifier<Value>> {
        return modifier(AnimationCompletionObserverModifier(observedValue: value, completion: completion))
    }
}
