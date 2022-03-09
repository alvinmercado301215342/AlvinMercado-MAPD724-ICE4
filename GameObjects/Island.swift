//  MAPD724-W2022-MidTerm-301215342
//  Student ID: 301215342
//  Created by: Alvin Mercado on 2022-03-06.
//  App description: Mail pilot in landscape mode.

import GameplayKit
import SpriteKit

class Island : GameObject
{
    
    // constructor / initializer
    init()
    {
        super.init(imageString: "island", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    override func CheckBounds()
    {
        if(position.x <= -730)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 730
        // get a pseudo random number -313 to 313
        let randomX:Int = (randomSource?.nextInt(upperBound: 616))! - 313
        position.y = CGFloat(randomX)
        isCollding = false
    }
    
    // initialization
    override func Start()
    {
        Reset()
        zPosition = 1
        verticalSpeed = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    func Move()
    {
        position.x -= verticalSpeed!
    }
}
