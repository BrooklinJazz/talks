# Brainstorming

Points
* What I'm going to tell you:
  * My experience exploring LiveView native and the Who What Where When Why Which How of Live View Native.
* Who is LiveView Native (Thank you)
  * Me and who I am (I am NOT a core member or contribute)
  * May Matyi
  * Carson Katri
  * 35+ DY Members supporting the project
* What is LiveView Native
  * LiveView Native is prerelease software and not recommended for production use. (This is gradually shifting)
  * LiveViewNative is a platform for building native applications using Elixir and Phoenix LiveView
  * LiveViewNativeSwiftUI lets you use Phoenix LiveView to build native IOS apps
  * 1-1 element parity
  * modifiers
* Where is LiveView Native
  * LiveViewNative is working on both android and ios, but are focused on an IOS implementation.
  * SwiftUI Elements
* When is LiveView Native
  * Now*
  * It's ready for folks to explore and dive into, folks who can dive into projects, examples, and who are comfortable reaching out directly to the team when they have questions. 
  * Work to be done on cohesive documentation (Implore people to reach out to me)
  * Leaving anchors behind as I climb the mountain
  * Experimental
    * I ran into some issues with conditional rendering and navigation
    * The LVN team resolved the issues quickly
  * As an educator, it's definitely ready to start learning. 
* Why is LiveViewNative
  * Mention Brian's 2022 Talk https://www.youtube.com/watch?v=dnDGh_Jmw-s
  * Develop on mobile while maintaining the benefits of OTP. (Fault Tolerance!)
    * If Elixir makes sense on the web, then it makes sense on mobile. All the benefits of using LV on the web apply even if you change the platform. 
  * Expand your existing Phoenix app into mobile or if you're a consultancy like DockYard, expand your client offerings.
  * Phoenix SSR = TINY app bundles and pushing updates w/o going through the App Store Review Process.
* Which in LiveView Native (WHICH Apps people should make)
  * LiveViewNative and Livebook?
  * MixFour (Multiplayer application using PubSub + Presence pending IOS App Store Review)
  * Tooling
  * Documentation, Blogs, Tutorials, Educational Material
  * Hobby Projects
  * NOT Production Level Projects (yet)
* How is LiveView Native
  * SWIFTUI Project + LVN Package
  * ContentView (new easier syntax)
  * LiveView w/ a platform_id in the render
  * Normal Events
  * Normal Navigation
  * Conditional Rendering
    * Talk about bug with this that LVN fixed promptly
  * It's just LiveView + SwiftUI Elements
  * Modifiers (1-1 parity with Apple docs)
    * This is one of the areas I found confusing, mostly because I find Apple docs confusing and had to learn a bit about SwiftUI elements and how rendering works. I'd like to improve some of the documentation.
    * Things like the order of modifiers mattering caught me
  * How can you get started
    * We need help sanding out the rough edges
    * Tutorial Project and more tutorials coming
    * Go build fun things
