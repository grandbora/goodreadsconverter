XML. Why XML?
=============
![WHY??](https://dl.dropbox.com/u/1953503/gifs/JXLzX.gif)

TL;DR
=====
Send your goodreads endpoint in the "url" parameter of a get request, server will parse the xml and send you the json response.  

[Lead by example](http://goodreadsconverter.herokuapp.com/?url=http://www.goodreads.com/review/list/12507039.xml?key=TcRDtxyxVNePvcdew3FA&v=2)  

goodreads API as JSON
==========================

Inspired by [jayniz/jsonclips](https://github.com/jayniz/jsonclips).  

I needed to access goodreads api from client side, but xml and same origin policy said no, no no.  
Luckily I knew a [guy](https://github.com/jayniz)  who solved a very similar problem for me back at [2012 Movie Hack Day](http://moviehackday.com)  

So I took it and [threw it on the ground](http://www.youtube.com/watch?v=gAYL5H46QnQ).  

More on my [blog post](http://boratunca.com/blog/2012/11/08/bookssection/).