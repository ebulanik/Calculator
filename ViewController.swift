
import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var display: UILabel! //drag&drop outlet for a property
	
	var userIsInTheMiddleofTypingANumber: Bool = false
	
	@IBAction func appendDigit(sender: UIButton) { //drag&drop action for method
		
		let digit = sender.currentTitle!
		if userIsInTheMiddleofTypingANumber {
			display.text = display.text! + digit
		}
		else {
			display.text = digit
		}
		
		println("digit = \(digit)")
	}
}