import UIKit
/*:
 ## Swift Design Patterns: Delegate Pattern
 
 #### Table of Contents
 - [Overview](Overview)
 - [Deep Dive](Deep Dive)
 - [Where do we use it?](Where)
 */

/*:
 
 ### Overview
 
 Imagine that you have a "blueprint" for a pen that we need to use to write our next big idea. (Why would anyone have a blueprint for a pen, anyway?) This blueprint outlines the essential incredients for a pen: a casing, ink, top and cap.
 
 We may further design and modify the pen by perhaps adding a clip, making the tip retractable with a spring, attaching fancy colors to it and so on.
 
 The above simple example already illustrates what the Delegate Protocol is:
 */
/*:
 * Callout(Delegate Protocols):
 Delegate Protocols help us create the *necessary* blueprint for a requested object. A set of rules that the requesting object **must** conform to.
  */
/*:
 
 The process of attaching additional functionality for the requested object is called the **Delegation**.
 
 The Delegate Pattern allows for greater code readability and reuse, which are both desirable.
 
 The Delegate Pattern is constantly being used in Apple's own frameworks (libraries) such as ```UITextFieldDelegate```, ```UICollectionViewDelegate```, ```UICollectionViewDataSource``` and many more.

   */





//: [Next Topic](@next)

