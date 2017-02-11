### fla.sh

##### Paper-light flashcards in under 40 lines of bash.

Flashcards are [simply files](http://en.wikipedia.org/wiki/Everything_is_a_file) with their filename as the prompt and their contents as the answer. When cards are learned, they are hidden and a `.` is prepended to the filename.

Files can be "learned" or "forgotten" (hidden and unhidden) in bulk outside of interactive mode with the `learn` and `forget` commands.

*How come you have the user check their answers? Wouldn't it just be a simple equality check?*

Ah, glad you asked! I've tried many flashcard systems, and automatic answer checking just adds too many hassles. Some answers are cumbersome to type out, silly typos will get reported as wrong answers, and some questions can't simply be answered in a short string of text.

![](http://s8.postimg.org/59hgo6cvp/demo.gif)

```
Usage:
  fla.sh
  fla.sh write
  fla.sh learn  <file...>
  fla.sh forget <file...>
```

This script depends on GNU `shuf`, which comes bundled on any sane Linux distro, but not on OSX. You can install it through [Homebrew](http://brew.sh) with `brew install coreutils`, but then `shuf` will be installed as `gshuf`, so you'll need to either alias it (`alias shuf='gshuf'`) or edit the script locally to change the `shuf` call to `gshuf`.
