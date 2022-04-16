import SwiftUI
import Firebase

@main

struct quizlet_ishApp: App {

    init() {

        FirebaseApp.configure()
    }

    var body: some Scene {
            WindowGroup{
                    ContentView()
            }
    }

}
