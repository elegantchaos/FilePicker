// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 21/02/20.
//  All code (c) 2020 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import SwiftUI

public struct FilePickerView {
    private let picker: UIViewController
    
    public init(picker: UIViewController) {
        self.picker = picker
    }
}

extension FilePickerView: UIViewControllerRepresentable {
    public typealias UIViewControllerType = UIViewController

    public func makeUIViewController(context: Context) -> UIViewControllerType {
        return picker
    }

    public func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }

    public func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    public class Coordinator: NSObject, ObservableObject {
        var parent: FilePickerView

        init(_ documentPickerController: FilePickerView) {
            parent = documentPickerController
        }
    }
}
