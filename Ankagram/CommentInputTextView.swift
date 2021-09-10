

import UIKit

class CommentInputTextView: UITextView {

    fileprivate let placeholderLabel: UILabel = {
        let label = UILabel()
     
        label.textColor = UIColor.lightGray
        return label
    }()

    func showPlaceHolderLabel() {
        placeholderLabel.isHidden = false
    }

    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }

    private func sharedInit() {
        backgroundColor = .tertiarySystemBackground
       
        addSubview(placeholderLabel)
        placeholderLabel.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 8, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
   }

    @objc func handleTextChange() {
        placeholderLabel.isHidden = !self.text.isEmpty
    }

}
