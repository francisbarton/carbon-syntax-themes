This project is an attempt to make the beautiful themes used by
[carbon.now.sh](carbon.now)
available as RStudio syntax themes.

There are several themes already available that have the same names as the carbon themes but they do not always look the same.

The carbon.now site source code shows that their themes are imported as CSS files from the CodeMirror (CM) CDN.
The
[CodeMirror GitHub repository](https://github.com/codemirror/CodeMirror/tree/master/theme) contains a good selection of theme CSS files - the ones used by carbon and more

One can obtain the CSS files from the CDN (via the links in the carbon HTML <head>) or get them from the CM GitHub repo - I intend to do this using the
[GitHub API](https://docs.github.com/en/rest/overview).

According to
[J Svensson's `css2tm` Ruby project](https://github.com/jsvensson/css2tm)
it should not be too hard to convert CSS to tmTheme!
I'll find out soon enough...


### Aims

The aims of this project are to:

* obtain the CSS files that are used by carbon.now
* use R to convert the CSS files into a repository of tmTheme files that can be used by RStudio



