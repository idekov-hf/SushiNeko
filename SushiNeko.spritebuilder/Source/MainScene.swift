import Foundation

class MainScene: CCNode {
    
    // code connections
    weak var piecesNode: CCNode!
    weak var character: Character!
    
    var pieces: [Piece] = []
    
    func didLoadFromCCB() {
        
        // load 10 instances of Piece.ccb
        for i in 0..<10 {
            var piece = CCBReader.load("Piece") as! Piece
            
            var yPos = piece.contentSizeInPoints.height * CGFloat(i)
            piece.position = CGPoint(x: 0, y: yPos)
            piecesNode.addChild(piece)
            pieces.append(piece)
        }
        
        userInteractionEnabled = true
    }
    
    override func touchBegan(touch: CCTouch!, withEvent event: CCTouchEvent!) {
        var xTouch = touch.locationInWorld().x
        var screenHalf = CCDirector.sharedDirector().viewSize().width / 2
        
        if xTouch < screenHalf {
            character.left()
        }
        else {
            character.right()
        }
        
    }
    
}
