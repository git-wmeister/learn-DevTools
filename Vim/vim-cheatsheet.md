This is included in PROD branch
# Moving Blazingly Fast with Vim Motions

To do things in Vim you use **commands**. Commands are actions that have an effect in your editor. There's lots of different commands that do different things. **Motions** are commands that you use to move around in **Normal mode** (you'll soon learn that they are capable of a lot more).

> ```
>            ↑
>      ← h j k l →
>          ↓
> ```

## Moving Horizontally Word By Word
- `w` to move word by word
- `W` to move word by WORD

- `b` to move backwards word by word
- `B` to move backwards WORD by WORD

- `e` to jump to the end of a word
- `E` is like `e` but operates on WORDS

- `ge` to jup to the end of the previous word
- `gE` is like `ge` but operates on WORDS

## Move to a Specific Character
- Use `f{character}` (find) to move to the next occurrence of a character in a line.
- Use `F{character}` to find the previous occurrence of a character

After using `f{character}` you can type 
- `;` to go to the next occurrence of the character or 
- `,` to go to the previous one. 
You can see the `;` and `,` as commands for repeating the last character search.

## Moving Horizontally Extremely
- `0`: Moves to the first character of a line
- `^`: Moves to the first non-blank character of a line
      ^ try in this line
- `$`: Moves to the end of a line
- `g_`: Moves to the non-blank character at the end of a line _   
- `+`: Moves to the first non-blank character of a NEXT line
- `-`: Moves to the first non-blank character of a PREVIOUS line
      +
         +
            +
         -
      -
   -
-
## Moving Vertically
Starting from `k` and `j`, we move on to a faster way of maneuvering vertically with:
- `}` jumps entire paragraphs downwards
- `{` similarly but upwards
- `(` beginning of next sentence
- `)` beginning of next sentence
- `CTRL-D` lets you move down half a page by scrolling the page
- `CTRL-U` lets you move up half a page also by scrolling
- `CTRL-O` move to last position


## High Precision Vertical Motions With Search Pattern
- `/{pattern}`    to search forward
- `?{pattern}`    to search backwards

- `n` to go to the next match
- `N` to go to the previous match

Try using the following search command to find second level headings in this document. Notice how when you get to the end it will start back at the top. Go through the whole document until you find the next title.

- Type `/## .*`

## Moving Faster With Counts
- `2w` to move two words ahead
- `5j` to jump file lines below 
- `2/cuc` jumping to the second **cuc**umber 

## And Some More Nifty Core Motions
These are yet more motions that can come in handy from time to time:
- Type `gg` to go to the top of the file.
- Use `{line}gg` to go to a specific line.
- Use `G` to go to the end of the file.
- Type `%` jump to matching `({[]})`.

Try going back to the top of this file with `gg`, then come back with `G`.
And now jump between these two matching brackets until you want to go to sleep:
```typescript
             start here f[%
                 \
                  \
                   v
const bagOfFoods = [["cucumber"], ["tomato", "potato"]];
```

# Editing Like Magic With Vim Operators

To do things in Vim you use **commands**. Commands are actions that have an effect in your editor. There's lots of different commands that do different things. Earlier we saw how **motions** let you move around in **Normal mode**.

**Operators** are commands that let you perform actions to change the content of your editor.

You use **operators** in combination with **counts** and **motions** to define the range of text to which an action applies:

```
   what to do (delete, change...)
      /
     /      how many times
    /         /
   v         v
{operator}{count}{motion}
                    ^
                   /
                  /
           where to perform
             the action
```

For example, take `d2w`. It tells Vim to **d**elete **2** **w**ords. Try it!


> Do you have a problem remembering all the motions? A great way to remember the different commands is to take advantage of mnemonics, as oftentimes the commands will be the first letter of a word which describes what they do:
>
> - d for **d**elete
> - f for **f**ind
> - c for **c**hange
> - t for un**T**il

Mini-refresher: The **`d`** command
> - d{motion} - delete text covered by motion
>   - d2w => deletes two words
>   - dt; => delete until ;
>   - d/hello => delete until hello

## Practice dd and D (Operator shorthand syntax)
`dd` lets you delete a complete line of text.
`D` is also really useful, it removes everything from the cursor until the end of the line (it is equivalent to `d$` but easier to type). 

## The Dot Operator
One of the most amazing operators in Vim is the dot operator or `.`. The dot operator allows you to **repeat your last change**. With one single keystroke `.` you can repeat a complete change that can be composed of as many keystrokes as you can imagine.




### Last Entry Point to Edit ####
### HERE to finish ###

u               to Undo
[Ctrl] + R      to Redo

# Inserting Text

So far we've been focusing a lot in _Normal mode_ and we haven't paid much attention to _Insert mode_. Let's remedy that because there's a lot more to _Insert mode_ in Vim that you can imagine.

- `i` lets you *i*nsert text before the cursor
- `a` lets you *a*ppend text after the cursor

- `I` lets you *i*nsert text at the beginning of a line
- `A` lets you *a*ppend text at the end of a line

- `o` lets you *o*pen a new line below the current line
- `O` lets you *o*pen a new line above the current line


- <CTRL-O> to come back here type 

The next handy mapping to jump into _Insert mode_ is `gi`. `gi` let's you go back to the last place where you made a change.

> `gi` in VSCodeVim behaves differently than in Vim. Where in Vim you go back to the last place you left Insert mode, in VSCodeVim you get into insert mode where you did you last change.

> Notice how often `g` is used as a modifier of other commands. When you see `g` before a common command you can expect that the command will do something similar to the original command: For example, `gi` lets you go to the last place you left Insert mode (`i`), `ge` does the reverse of `e`, etc...

# Removing stuff from Insert mode

By far the most common way of removing stuff when using Vim is using the `d` or `c` commands from _Normal mode_, however, sometimes it's useful to remove some text right from _Insert mode_ and continue typing. Most common example? When you make a typo! :D Whenever that happens any of these bindings may help:

- `CTRL-H` lets you remove the last character you typed (mnemonic _h_ which in _hjkl_ brings the cursor one space to the left)
- `CTRL-W` lets you remove the last word you typed (mnemonic *w*ord)
- `CTRL-U` lets you remove the last line you typed (mnemonic *u*ndo this line)

or the last act try to exit _Insert mode_ using these three commands and see which one feels best for you:

- `<ESC>`
- `CTRL-C`
- `CTRL-[`