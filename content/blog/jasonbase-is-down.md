---
title: "Jasonbase Is Down"
subtitle: ""
author: "@clsource"
date: 2019-02-20T09:30:26-03:00
draft: false
---

As some of you may have noticed if you visit <a href="https://jasonbase.com" rel="nofollow">jasonbase.com</a>, 
you will encounter a *500* error.

This was expected since we didn't have any access to the
server or the domain configuration. 

This means that other pages may dissapear as well like
*jasonette.com*, *celljs.org*. Since we cannot pay
for the servers to continue running.

## Alternatives

*Jasonbase*'s focus was to make easier to share *JSON* files, 
mainly used for *Jasonette* projects. We were able to rescue
important code from there, but maybe some code was lost.

We hope someday *Ethan* could restore the service. In the meantime
you could use the following alternatives.

### Neocities

This is a simple hosting were you can store all your js, json and multimedia.
It even supports [IPFS DNS](https://blog.neocities.org/blog/2017/08/07/ipfs-dns-support.html)!.

This is the most user friendly and free option.

[https://neocities.org/](https://neocities.org/)

### Netlify

This is an option for those more tech savvy.

[https://www.netlify.com/](https://www.netlify.com/)

### Firebase

Firebase offers a free hosting server. But you should learn 
how to use their cli tools.

[https://firebase.google.com/](https://firebase.google.com/)

### Localhost

For testing up projects you can use scripts like
`$ python3 -m http.server .` and mix it with tools like [https://ngrok.com/](https://ngrok.com/)

An other option is using a proper server like [https://caddyserver.com/](https://caddyserver.com/)

### Own Server

Well this option can be paying a shared hosting, a VPS from *Digital Ocean* or *Linode*. Maybe a custom *AWS Lambda* to serve your json.