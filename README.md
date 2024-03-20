# No Storyboard UIKit Project

## 1 - Creating Project in Xcode
- Create a new single view app project in Xcode.
- Select Swift as the language and deselect the option to use Storyboard as the interface.

## 2 - Deleting the Main.storyboard
- Delete the Main.storyboard file.
- Remove the Main value config entries in Build Settings.
- Remove the Main entry in the Info.plist.

## 3 - Creating a HelloWorldViewController file
- Create a new file called `HelloWorldViewController.swift`

## 4 - Updating SceneDelegate.swift
Replace the content of the function `scene(_:willConnectTo:options:)` with:

```swift
guard let windowScene = (scene as? UIWindowScene) else { return }
window = UIWindow(frame: windowScene.coordinateSpace.bounds)
window?.windowScene = windowScene
window?.rootViewController = HelloWorldViewController()
window?.makeKeyAndVisible()
