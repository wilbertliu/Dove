//
//  Dove.swift
//  Dove
//
//  Created by Wilbert Liu on 4/24/17.
//  Copyright © 2017 Wilbert Liu. All rights reserved.
//

import UIKit

@IBDesignable public class Dove: UIView {
    // MARK: - Properties

    public enum FocusState {
        case focused
        case notFocused
    }

    public enum ErrorState {
        case error
        case notError
    }

    private(set) public var focusState: FocusState = .notFocused {
        didSet {
            updateTitle()
            updatePlaceholder()
            updateUnderline()
        }
    }

    private(set) public var errorState: ErrorState = .notError {
        didSet {
            updateTitle()
            updatePlaceholder()
            updateUnderline()
        }
    }

    var validateText: ((String) -> Bool)?

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var underlineView: UIView!

    @IBInspectable public var titleText: String = "Hello from Dove!" {
        didSet {
            updateTitle()
        }
    }

    @IBInspectable public var titleErrorText: String = "Error from Dove!" {
        didSet {
            updateTitle()
        }
    }

    @IBInspectable public var titleColor: UIColor = .black {
        didSet {
            updateTitle()
        }
    }

    @IBInspectable public var titleErrorColor: UIColor = .red {
        didSet {
            updateTitle()
        }
    }

    @IBInspectable public var placeholderText: String = "Hello from Dove!" {
        didSet {
            updatePlaceholder()
        }
    }

    @IBInspectable public var placeholderFont: String = ".SFUIText-Regular" {
        didSet {
            updatePlaceholder()
        }
    }

    @IBInspectable public var placeholderSize: CGFloat = 14 {
        didSet {
            updatePlaceholder()
        }
    }

    @IBInspectable public var placeholderColor: UIColor = .lightGray {
        didSet {
            updatePlaceholder()
        }
    }

    @IBInspectable public var underlineActiveColor: UIColor = .black {
        didSet {
            updateUnderline()
        }
    }

    @IBInspectable public var underlineInactiveColor: UIColor = .black {
        didSet {
            updateUnderline()
        }
    }

    @IBInspectable public var underlineErrorColor: UIColor = .red {
        didSet {
            updateUnderline()
        }
    }

    // MARK: - Initializers

    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    public init() {
        super.init(frame: CGRect.zero)
        setupView()
    }

    // MARK: - Helpers

    private func setupView() {
        textField.addTarget(self, action: #selector(textFieldDidBeginEditing(_:)), for: .editingDidBegin)
        textField.addTarget(self, action: #selector(textFieldEditingChanged(_:)), for: .editingChanged)
        textField.addTarget(self, action: #selector(textFieldDidEndEditing(_:)), for: .editingDidEnd)
    }

    private func updateTitle() {

    }

    private func updatePlaceholder() {

    }

    private func updateUnderline() {

    }

    // MARK: - Actions

    func textFieldDidBeginEditing(_ sender: UITextField) {

    }

    func textFieldEditingChanged(_ sender: UITextField) {

    }

    func textFieldDidEndEditing(_ sender: UITextField) {

    }
}
