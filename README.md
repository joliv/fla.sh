### fla.sh

#### Paper-light flashcards in 50 lines of bash.

Flashcards are [simply files](http://en.wikipedia.org/wiki/Everything_is_a_file) with their filename as the prompt and their contents as the answer. When cards are learned, they are hidden and a `.` is prepended to the filename.

Files can be "learned" or "forgotten" (hidden and unhidden) outside of interactive mode with the `learn` and `forget` commands.

```
Usage:
  fla.sh
  fla.sh learn  <file...>
  fla.sh forget <file...>
```
