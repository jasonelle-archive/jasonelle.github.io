---
title: "Jasonette 3 Ideas and Thoughts"
subtitle: "The plans for the new version"
author: "clsource"
date: "2020-03-29T12:12:55-03:00"
draft: false
---

## Jasonette Beginnings

_Jasonette_ was born in early 2016 and made it's public debut in [October 2016](https://github.com/Jasonette/JASONETTE-iOS/tree/ac6ba988f93695f5851fd2c8457f56f2cf8b27ae).

These are the technical hightlights that [Ethan](https://github.com/gliechtenstein) defined for _Jasonette_.

### Features

- App loads over HTTP: Your app exists 100% as JSON, and loads from the cloud. No more hard-coding.
- An app in 30 minutes: No kidding, build an app in 30 minutes.
- Lowest possible learning curve: No programming experience required. There's only one thing you need to know: JSON. Which means you can build an app without "becoming a programmer".

### One JSON to rule them all

_Jasonette_ simplifies the entire app building process down to nothing more than:

1. Write a JSON markup
2. Add the JSON url to _Jasonette_
3. Press play

This is possible because _Jasonette_ came up with a way to fit an entire app worth of logic into a single declarative JSON that just works™. This JSON grammar is used to express every aspect of your app, such as:

- Draw sophisticated views
- Call device API methods
- Chain method calls to perform complex logic
- Respond to system events and user interaction
- Even change the JSON itself dynamically using templates.

### App-over-HTTP Until now, the only thing JSON could send over the Internet was raw data.

Normally apps would fetch remote data from the server for a connected experience, but the actual app logic would be hard-coded on the client side. This makes it hard to update and extend apps.

But what happens when you can express an entire app logic as JSON?

Then apps can be stored, processed, shared, and sent over the Internet just like any other JSON.

## Aftertoughts

_Jasonette_ bringed a whole new idea to mobile app development. We believe that
new technologies such as [Swift UI](https://developer.apple.com/xcode/swiftui/) were influenced
by it, at least by some extend.

_Ethan_ worked hard fulltime on _Jasonette_ for nearly two years straight, until he [misteriously
dissapeared](http://jasonelle.com/docs/#/history).

Now we are nearly four years after _Jasonette_ was born. And the ecosystem changed dramatically
since _Jasonette_'s conception.

- _Javascript_ is more standarized, robust and easier to use. Besides it´s one of the [most used programming languages today](https://redmonk.com/sogrady/2020/02/28/language-rankings-1-20/).

- _Apple_ created [Swift UI](https://developer.apple.com/xcode/swiftui/) to ease _iOS_ mobile app development. Also added new restrictions in _App Store_. Now is prohibited updating apps bypassing the review process. Also calling native functions without files bundled in the _[IPA](https://en.wikipedia.org/wiki/.ipa)_ may be seen as risky.

- _Google_ released [Flutter](https://flutter.dev/) to ease development of _Android_ Apps, and implemented [Declarative UI](https://flutter.dev/docs/get-started/flutter-for/declarative) to compete with Apple's _Swift UI_.

- _[React Native](https://reactnative.dev/)_ and _[NativeScript](https://www.nativescript.org/)_ became popular frameworks to create mobile apps using _Javascript_.

And many other changes that requires a new perspective on which elements _Jasonette_ brings
to the table.

## The Road to Jasonette 3

With the current state of the art, the road map for _Jasonette 3_ would have more or less the following considerations.

### Embrace Javascript

Using _JSON_ as a programming language have advantages (easy to learn) and drawbacks (super strict, no comments). With the current state of _Javascript_ is now imperative we embrace it
as the language of _Jasonette_ instead of _JSON_.

_Jasonette_ already used _Javascript_ to transform _JSON_ and evaluate inline code, so it's a natural choice to make.

### Kernel and Modules

The arquitecture will transform to be more modular, using a [Kernel](<https://en.wikipedia.org/wiki/Kernel_(operating*system)>) that handles operating
system tasks and all the other features would be implemented as easy to change modules.
Providing easier _maintanability_, _extendability_ and overal _slimness_ of the code base.

### Learn from Swift UI and Flutter Declarative UI

Those are great technologies and _Jasonelle_ can benefit if similar concepts are applied.

### Keep Ethan's Vision Alive

- Each app screen would be a single declarative style _Javascript_ file that contains the data, logic and ui. So you can send them over and see a fully working app.

- Be easy to use so you can make an app in 30 minutes or less.

- Low learning curve. Aimed at people who are new in mobile app making. But powerful enough so you can create _[App Store worthy](https://developer.apple.com/app-store/review/guidelines/)_ apps.

### The Jasonette Promise

The build process will be the same. But instead of _JSON_ will be _Javascript_.

1. Write a _Javascript_ file.
2. Add the file to _Jasonette_.
3. Press play.

### Great Docs

We want to have great documentation and plenty of example code.

## Jasonette 2

_Jasonette 2_ it´s officially in **maintainance** mode. No new features will be added
and only critical security and bug fixes will be implemented. The final sunsetting of _Jasonette 2_ will be when _Jasonette 3_ stable is released, but that could take some time,
so you could keep creating apps with _Jasonette 2_ until version 3 cames out.

## When Jasonette 3?

That would depend. We aim to have something minimal working at the end of the year _2020_, but
a fixed date is not defined yet since _sadly_, we are not full time developers at _Jasonelle_.
