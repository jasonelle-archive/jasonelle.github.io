---
title: "Will Apple forbid Cordova, React Native, Native Script and similar technologies?"
subtitle: "Those technologies may be forbidden in the future, or not?"
author: "clsource"
date: "2020-04-10T14:27:54-04:00"
draft: false
---

If you want your app to be inside the _iOS_ ecosystem it must pass the [Appstore Review Guidelines](https://developer.apple.com/app-store/review/guidelines/). Apple is known to be strict when approving apps. Since _Cordova_, _React Native_, _Native Script_ and similars use _Javascript_, the sections _4.7_ and _2.5.2_ of the _Appstore Review Guidelines_ and section _3.3.2_ of the [Apple Developer Program License Agreement](https://developer.apple.com/services-account/download?path=/Documentation/License_Agreements__Apple_Developer_Program03232K20/Apple_Developer_Program_License_Agreement_20200323.pdf) are the most relevant to this use case.

### Appstore Review Guidelines - '2.5.2 Software Requirements'

> Apps should be self-contained in their bundles, and may not read or write data outside the designated container area, nor may they download, install, or execute code which introduces or changes features or functionality of the app, including other apps. Educational apps designed to teach, develop, or allow students to test executable code may, in limited circumstances, download code provided that such code is not used for other purposes. Such apps must make the source code provided by the Application completely viewable and editable by the user.

### Appstore Review Guidelines - '4.7 HTML5 Games, Bots, etc.'

> Apps may contain or run code that is not embedded in the binary (e.g. HTML5-based games, bots, etc.), as long as code distribution isn’t the main purpose of the app, the code is not offered in a store or store-like interface, and provided that the software (1) is free or purchased using in-app purchase; (2) only uses capabilities available in a standard WebKit view (e.g. it must open and run natively in Safari without modifications or additional software); your app must use WebKit and JavaScript Core to run third-party software and should not attempt to extend or expose native platform APIs to third-party software; (3) is offered by developers that have joined the Apple Developer Program and signed the Apple Developer Program License Agreement; (4) does not provide access to real money gaming, lotteries, or charitable donations; (5) adheres to the terms of these App Review Guidelines (e.g. does not include objectionable content); and (6) does not offer digital goods or services for sale. Upon request, you must provide an index of software and metadata available in your app. It must include Apple Developer Program Team IDs for the providers of the software along with a URL which App Review can use to confirm that the software complies with the requirements above.

### Apple Developer Program License Agreement (2020-03-23) - 3.3.2 Program Requirements

> Except as set forth in the next paragraph, an Application may not download or install executable code. Interpreted code may be downloaded to an Application but only so long as such code: (a) does not change the primary purpose of the Application by providing features or functionality that are inconsistent with the intended and advertised purpose of the Application as submitted to the App Store, (b) does not create a store or storefront for other code or applications, and (c) does not bypass signing, sandbox, or other security features of the OS. (...)

### Analysis

By reading those agreements and guidelines, we can understand that using _Javascript_ files that specify _UIs_ and _logic_ are allowed. Those files can be inside the App bundle or remote fetched and interpreted, as long as they do not change the app dramatically from the one reviewed by Apple and uses the [Javascript Core](https://developer.apple.com/documentation/javascriptcore?language=objc) framework to execute the code.

If the App uses a _Web View_ it should only allow behaviours within the [Web Kit](https://developer.apple.com/documentation/webkit?language=objc)'s [limitations](https://webkit.org/status/). Exposing _Native APIs_ to _Web Views_ or _Javascript Core_ to third parties can be considered risky and the app may be deleted from _AppStore_. A clear definition of "third party" was not found, so maybe this can be interpreted as only applied to malicious code and libraries outside the app environment (google ads?). We have to see if Apps made with solutions like _Cordova_, _React Native_, _Native Script_ (that heavily exposes _Native APIs_ to _Web Views_) keep existing in _Apple_ ecosystem after [June 2020](https://developer.apple.com/news/?id=03262020b).

#### Progressive Web Apps

It's probable that the new guidelines would force many apps to be converted to [_PWA_](https://en.wikipedia.org/wiki/Progressive_web_application). Howewer there are some limitations compared with native _iOS_ apps ([based on this post on medium](https://medium.com/@firt/progressive-web-apps-on-ios-are-here-d00430dee3a7)).

- The app can store offline data and files only up to 50 Mb.
- If the user doesn’t use the app for a few weeks, iOS will free up the app’s files. The icon will still be there on the home screen, and when accessed the app will be downloaded again.
- No access to some features, such as Bluetooth, serial, Beacons, Touch ID, Face ID, ARKit, altimeter sensor, battery information.
- No access to execute code while in the background.
- No access to private information (contacts, background location) and also no access to native social apps
- No access to In App Payments and many other Apple-based services.
- On iPad, no access to work with Side or Split Views sharing the screen with other apps, PWAs will always take the whole screen.
- No Push Notifications, no icon badge or Siri integration.

How can a _PWA_ overcome those limitations?. Maybe for push notifications you could use _SMS_ using [Twilio](https://www.twilio.com/sms) or similar, or using a notification system that is web only. For features like _Bluetooth_ then you only hope could be creating a native app or wait until _Web Kit_ implements it.

### Alternatives?

There are some alternatives like [Felgo](https://felgo.com/) and [Flutter](https://flutter.dev) that uses native code with a custom rendering engine. Those may be possible to keep using because they do not expose _Native APIS_ to _Web Kit_ or _JavasScript Core_.

### Will Apple kill Cordova, React Native and similars?

Hopefully not. Those technologies are used by a huge amount of people and businesses. It would not be
wise for _Apple_ to only allow programming applications with native code. They would loose a huge amount
of developers that does not like _Swift_ or does not have the resources to build again their app with native
technologies. Less developers means less number of apps in the Appstore, which means less hardware sold.

_Apple_'s main revenue comes from selling hardware like _iPhone_, so a huge loss in developers is no good. But we can not be sure what is in _Apple_'s plans. As they already killed off _Flash_ and other technologies massively used.

### What it means for Jasonelle?

_Jasonelle_ have a similar approach to app development as _React Native_. It exposes native APIs to Javascript using _JavaScript Core_ framework. If Apple kills _React Native_ and _Cordova_ it will kill _Jasonelle_ too.
We can only hope that technologies that relies on exposing native APIS to _Javascript Core_ can still be used, otherwise we will have to sadly put _Jasonelle_ to sleep and move to other adventures.

We hope for the best outcome and keep working on _Jasonelle_ until that day.
