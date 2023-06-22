//
//  ContentView.swift
//  Animations
//
//  Created by Fauzan Dwi Prasetyo on 05/06/23.
//

import SwiftUI

struct NamedView {
    var name: String
    var view: AnyView
    
    init<V>(name: String, view: V) where V: View {
        self.name = name
        self.view = AnyView(view)
    }
}

struct ContentView: View {
    private let animations: [NamedView] = [
        NamedView(name: "Implicit Animation", view: ImplicitAnimationView()),
        NamedView(name: "Custom Animation", view: CustomAnimationView()),
        NamedView(name: "Bindings Animation", view: BindingsAnimationView()),
        NamedView(name: "Explicit Animation", view: ExplicitAnimationView()),
        NamedView(name: "Animation Stack", view: AnimationStackView()),
        NamedView(name: "Animated Gesture 1", view: AnimatedGesture1View()),
        NamedView(name: "Animated Gesture 2", view: AnimatedGesture2View()),
        NamedView(name: "Show/Hide view Transition", view: ShowHideTransitionView()),
        NamedView(name: "Custom Transition", view: CustomTransitionView()),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<animations.count) { i in
                    NavigationLink {
                        animations[i].view
                    } label: {
                        Text(animations[i].name)
                    }
                }
            }
            .navigationTitle("Animations")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
