# Moving Blazingly Fast with Vim Motions

To do things in Vim you use **commands**. Commands are actions that have an effect in your editor. There's lots of different commands that do different things. **Motions** are commands that you use to move around in **Normal mode** (you'll soon learn that they are capable of a lot more).

> ```txt
>            ↑
>      ← h j k l →
>          ↓
> ```

## Moving Horizontally Word By Word

Forwards  

- `w` to move word by word
- `W` to move word by WORD

Backwards

- `b` to move backwards word by word
- `B` to move backwards WORD by WORD

To the end

- `e` to jump to the end of a word
- `E` is like `e` but operates on WORDS

To the end of previous

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

```text
      ^ try in this line
```

- `$`: Moves to the end of a line
- `g_`: Moves to the non-blank character at the end of a line _  
- `+`: Moves to the first non-blank character of a NEXT line
- `-`: Moves to the first non-blank character of a PREVIOUS line

```txt
+
   +
      +
         +
            +
         -
      -
   -
-
```

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

```txt
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

 Do you have a problem remembering all the motions? A great way to remember the different commands is to take advantage of mnemonics, as oftentimes the commands will be the first letter of a word which describes what they do:

> - d for **d**elete
> - f for **f**ind
> - c for **c**hange
> - t for un**T**il

Mini-refresher: The **`d`** command

> - d{motion} - delete text covered by motion
> - d{motion} - delete text covered by motion
> - d2w => deletes two words
> - dt; => delete until ;
> - d/hello => delete until hello

## Practice dd and D (Operator shorthand syntax)

`dd` lets you delete a complete line of text.
`D` is also really useful, it removes everything from the cursor until the end of the line (it is equivalent to `d$` but easier to type). 

## The Dot Operator

One of the most amazing operators in Vim is the dot operator or `.`. The dot operator allows you to **repeat your last change**. With one single keystroke `.` you can repeat a complete change that can be composed of as many keystrokes as you can imagine.

### **Last Entry Point to Edit**

*See Chapter "Editing Magic: operations"

### **HERE to finish**

u               to Undo
[Ctrl] + R      to Redo

# Inserting Text

So far we've been focusing a lot in _Normal mode_ and we haven't paid much attention to _Insert mode_. Let's remedy that because there's a lot more to _Insert mode_ in Vim that you can imagine.

- `i` lets you **i**nsert text before the cursor
- `a` lets you **a**ppend text after the cursor

- `I` lets you **i**nsert text at the beginning of a line
- `A` lets you **a**ppend text at the end of a line

- `o` lets you **o**pen a new line below the current line
- `O` lets you **o**pen a new line above the current line

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

## Editing Magic: operators

### EDITING LIKE MAGIC WITH VIM OPERATORS

Motions aren’t just for moving. They can be used in combination with a series of commands called operators to edit your code at the speed of lightning.

You can use operators and motions together by following any of these patterns:

{operator}{count}{motion}
{count}{operator}{motion}
Vim operators
The operator determines which action you want to perform: deleting, changing, yanking, formatting, etc.
The count allows you to multiply the effect of an operator by performing an action a count number of times.
The motion represents the piece of text to which to apply the action defined by the operator.
For instance, the d2w combination allows you to delete two words almost.

An example operator d2w delete two words
d corresponds to the delete operator. Since d is an operator, you can follow the {operator}{count}{motion} formula and combine it with all the motions you’ve learned thus far:

Use d5j to delete 5 lines downwards
Type df' to delete everything in the current line from the cursor until the first occurrence of the ' character (including the character itself)
Or type dt' to do like the above example but excluding the character (so up until or just before the ' character)
Use d/hello to delete everything until the first occurrence of hello
Type ggdG to delete a complete document
USEFUL OPERATORS
Some useful Vim operators
In addition to d, there’s a handful more of handy operators:

`c` (change): Change deletes a piece of text and then sends you into Insert mode so that you can continue typing, changing the original text into something else. The change operator is like the d and i commands combined into onetwo. This duality makes it the most useful operator  
`y` (yank): Copy in Vim jargon  
p (put): Paste in Vim jargon
g~ (switch case): Changes letters from lowercase to uppercase and back. Alternatively, use gu to make something lowercase and gU to make something uppercase
> (shift right): Adds indentation
< (shift left): Removes indentation
= (format code): Formats code
You can use these operators much like you used delete so that:

c/hello changes everything until the first occurrence of hello.
ggyG copies a whole document
gUw capitalizes a word
OPERATOR SHORTHAND SYNTAX
All these operators provide additional shorthand syntax aimed at saving you typing and increasing your speed with common editing tasks:

Double an operator to make it operate on a whole line: dd deletes a whole line, cc changes a whole line, etc.
Capitalize an operator to have it perform a stronger (or alternate) version of its default behavior: D deletes from the cursor to the end of the line, C changes to the end of a line, Y like yy copies a complete line, P pastes something before the cursor, etc.
NOTICED HOW COMMAND KEYS MAKE A LOT OF SENSE?
Operators, motions and other commands in Vim are generally easy to learn because they make sense and are easy to guess. Want to change something? You probably want to use the c (change) operator. Want to move word by word? Try w (word). Want to delete something? Try the d (delete) operator and so on.

Operators really shine when we combine them with a special class of motions called text-objects.

## TAKING EDITING UP A NOTCH WITH TEXT OBJECTS

Text objects are structured pieces of text or, if you will, the entities of a document domain model. What is a document composed of? Words, sentences, quoted text, paragraphs, blocks, (HTML) tags, etc. These are text objects.

The way that you specify a text object within a command is by combining the letter a (a text object plus whitespace) or i (inner object without whitespace) with a character that represents a text object itself:

Vim Text Objects
{operator}{a|i}{text-object}
The built-in text-objects are:  
Vim Text Objects Commands

- `w` for word
- `s` for sentence
- `', ", ` for quotes
- `p` for paragraph
- `b (or (, ))` for block surrounded by (),
- `B (or {, })` for block surrounded by {}
- `<, >` for a block surrounded by <>
- `[, ]` for a block surrounded by []
- `t` for tag.

So in order to delete different bits of text you could any of the following commands:

- `daw` to delete a word (plus trailing whitespace)
- `ciw` to change inner word
- `das` to delete a sentence (dis to delete inner sentence)
- `da"` to delete something in double quotes including the quotes themselves (`di"` deletes only the content inside the quotes and spares the quotes)
- `ci"` to change something inside double quotes
- `dap` to delete a paragraph
- `dab` or `da(` or `da)` to delete a block surrounded by ()
- `daB` or `da{` or `da}` to delete a block surrounded by {}
- `dat` to delete an HTML tag
- `cit` to change the contents of an HTML tag

Combining text objects with operators is extremely powerful and you’ll find yourself relying on them very frequently. Stuff like cit, ci" and cib is just brilliant.

Let’s say that we want to change the contents of this string below for something else:

const salute = 'I salute you oh Mighty Warrior'
You type ci'Hi!<ESC> and it becomes:

const salute = 'Hi!'
Just like that. You don’t need to go grab the mouse, select the text and then write something else. You type three letters and Boom! You’re done.

NOTICED HOW MOST VIM KEYS ARE PLACED NEAR YOUR FINGERS?
The fact that Vim has modes allows keys near the home row to be reused in each separate mode. This design decision minimizes the need for slow and contorted key combinations, and heightens your speed and the longevity of your fingers and wrists. This is awesome!

REPEATING THE LAST CHANGE WITH THE DOT OPERATOR
Vim has yet another trick in store for you aimed at saving more keystrokes: The magic . (dot) command.

Vim dot command repeats the last change
The . command allows you to repeat the last change you made. Imagine that you run dd to delete a line of code. And now let’s say that you’ve warmed up to removing code. Removing code is good, the less code you have the less code you need to maintain. So let’s remove another line of code. How would you go about that? You could type dd again but, even better, you could use the . command which is just a single keystroke.

OK. You save one keystroke. So What. (Tough crowd here I see). Well, you can use the . command to repeat any type of change, not just a single shorthand command like dd. For instance, you could change a word for Awesome like so cawAwesome<Enter>, and then repeat that whole command with all those keystrokes by just typing a single dot. Think of the possibilities!

The . command becomes even more useful if you get in the habit of using Text-objects. Text-objects are more reliable than other motions because you don’t need to care as much where the cursor is positioned. Thus, commands with text objects are far more repeatable and therefore work beautifully in tandem with the . command.

The . command works great in combination with the repeat search commands (;, ,, n or N). Imagine that you want to delete all occurrences of cucumber. A possible approach would be to search for cucumber /cucumber, delete it with daw and, from then on, use n to go to the next match and . to delete it! Two keystrokes!?! Again think of the possibilities!!

MORE SHORTHAND TEXT EDITING COMMANDS
In addition to the operators you’ve learned in this chapter, Vim offers a series of shortcuts to operate on single characters that can be useful on occasion. They are:

x is equivalent to dl and deletes the character under the cursor
X is equivalent to dh and deletes the character before the cursor
s is equivalent to ch, deletes the character under the cursor and puts you into Insert mode
~ to switch case for a single character
As usual, all of the above support counts to operate on multiple characters at once.

UNDOING AND REDOING
Sooner or later it will come a time when you will make a mistake. Admit it! You ain’t perfect. Nobody is. And that is alright. You needn’t worry though, because Vim has your back:

Type u and you’ll undo your last change,
Type CTRL-R and you’ll redo it,
Pheeewww…

SUMMARY
Motions aren’t just for moving. Used in combination with operators they let you perform operations on text with ease and amazing speed. You apply an operator on a motion by using the key melody {operator}{motion}.

Some of the most useful and common operators are: d for delete, c for change, y for yank (copy) and p for put (paste). As you can appreciate from these operators and the motions you’ve learned thus far, Vim commands are generally easy to learn because they make sense and are easy to guess.

When you double an operator you make it operate on a line. For instance, you can use dd to delete a complete line. In a similar fashion, when you capitalize a command it performs a stronger (or alternate) version of the original command. For example, D deletes from the cursor to the end of a line. These are really helpful and can save you a lot of time. Learn to use them instead of their more wordy alternatives.

Counts also work with operators. You can multiply the effect of an operator motion combo by using a count like this: {operator}{count}{motion}.

Text objects are special motions that describe the parts of a document: words, sentences, paragraphs, and such. They are incredibly useful in combination with Vim operators. Using operators with text-objects you can be very precise and command Vim to delete a word, or change the insides of a string or code block.

Text objects offers two variants: the a (think a or all) and i (think inner) that allow you to operate on a text object plus surrounding whitespace or only on the inner parts of a text object respectively. For example, using da" deletes a complete quote including trailing whitespace, using di" only deletes whatever is surrounded by quotes.

The dot command . lets you repeat the last change and, as such, it is one of the most useful repeater commands. Operations on text-objects are great candidates for the dot operator because they are more repeatable.

A great way to take advantage of the dot command is by using it in combination with searches. When you do that you can apply changes of successive searches with just two keystrokes: n or ; to find the next match and . to repeat the last change.

Sometimes you’ll make a mistake. When that happens, you can undo the last change with the u command. If you change your mind or undo too far, type CTRL-R to redo.

To be more accurate, d2w allows you to delete all the text from the cursor until the beginning of the second word. For the time being, let’s just say that it deletes two words and we’ll get around to correctness soon enough.↩
Two commands in one? Sounds great to me!↩
← PREVIOUS CHAPTER: MOVING BLAZINGLY FAST WITH THE CORE VIM MOTIONS