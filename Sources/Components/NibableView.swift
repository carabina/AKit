//
//  NibableView.swift
//  AKit
//
//  Created by Adam Leitgeb on 18/01/2019.
//

import UIKit

open class NibableView: UIView {

    // MARK: Properties

    private var view: UIView!

    private var nibName: String {
        let `self` = type(of: self)
        return String(describing: self)
    }

    // MARK: Init

    override public init(frame: CGRect) {
        super.init(frame: frame)

        setup()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        setup()
    }

    // MARK: Setup

    open func setup() {
        guard let bundle = Bundle.main.loadNibNamed(nibName, owner: self, options: nil) else {
            fatalError("NibableView.xibSetup() - unable to load view from bundle")
        }

        view = bundle.first as? UIView
        view?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view?.frame = bounds

        addSubview(view)
    }
}
