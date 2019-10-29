---
title: "Jasonette 2 Release Date!"
subtitle: "When?. Soon."
author: "@clsource"
date: "2019-10-28T22:55:09-03:00"
draft: false
---

On November 6th it will be a whole year since the beginning
of this humble project. We made a lot of changes, bug fixes
and some new features to the *Jasonette* code base since 
*Ethan* left. 

Expect a new release near the second week of November 2019. This will
be stored in the https://github.com/jasonelle/jasonelle repository, 
in the releases tab.

## Future plans?

After learning the inner workings of the *Jasonette* code base and a
lot of feedback made in the community we discovered that many issues
could be solved by simplifyng the code base.

The current code base was made mainly by *Ethan* and a few contributors.
The first version was iOS and made using trial, error and
experiments between 2014-2016. So it's functional but super messy and is difficult to know
where to look to fix a certain problem or extend it. Also was programmed
using `Objective-C`, a programming language that fewer people are learning
today since `Swift` is the new preferred language for iOS. This was a wise
choice by *Ethan* because at the time `Swift` wasn't [ABI Stable](https://swift.org/blog/abi-stability-and-more/). That means it was tied to a specific
`Xcode` version, so using `Objective-C` enable using any compatible `Xcode`.

Now, after five years since it's debut `Swift` is stable enough to justify
create a framework like `Jasonelle` with it.

The Android version was born a month after *Jasonette* debut. It was heavily
coded by *Ethan* and friends. But as it was rushed, the codebase feels
messy and a lot of code could be improved to be more robust, friendly and
easier to maintain.

So after much deliveration we decided that *Jasonelle 3.0* will be a total
new core both in Android and iOS. This is surely a task that could raise
some eyebrows. But in the long run it would ease the development flow 
bringing new opportunities for growth. Today we have a clearer picture 
of the goals set originally by *Ethan* and can implement a better arquitecture
that supports such vision.

The important thing is that it will be backwards compatible with the current
jason specs as much as possible. The main difference it would be the 
separation between the core and the extensions. The core would consist
of a few javascript files and native code that implements the bare minimum
to generate the data needed for the app to function. The extensions or plugins
will offer the components, actions and services available today in version 2, but they will be slowly and incrementally added once the core is made.

Additionally we want to simplify the framework so it will become a `micro framework` for mobile apps. Today we have juggernauts like `React Native`, 
`Native Script`, `Flutter` and several other html-js based alternatives.
We believe our niche is targeted to small and hobbist type apps. Emulating the philosophy
of web frameworks like [Flask](https://palletsprojects.com/p/flask/) we 
want to provide the minimal needed to create a small app, but be flexible enough to create a complex one too.

Many of the current code will be refurbished, refactored
and finally implemented in new languages like `Swift` for iOS and `Kotlin`
for Android.

## Conclusion

We have high expectations for `Jasonelle` in the future. The current
2.0 version will be the last one to be directly based on the original
codebase made by *Ethan* and then the focus will be creating a new
core mixing all the good ideas that were born in the mobile ecosystem since the framework debut in `2016`.