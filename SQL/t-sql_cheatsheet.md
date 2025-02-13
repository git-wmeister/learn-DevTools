# T-SQL Cheat Sheet

## List with links for [T-SQL on learn.microsoft.com][microsoft-learn]

  1. [get-started-querying-with-transact-sql][T-SQL4beginner]
  2. [write-advanced-transact-sql-queries][T-SQL4advanced]
  3. [program-transact-sql][T-SQL4program]

[microsoft-learn]: https://learn.microsoft.com
[T-SQL4beginner]: https://learn.microsoft.com/en-gb/training/paths/get-started-querying-with-transact-sql/
[T-SQL4advanced]: https://learn.microsoft.com/en-gb/training/paths/write-advanced-transact-sql-queries/
[T-SQL4program]: https://learn.microsoft.com/en-gb/training/paths/program-transact-sql/

## End of Python section below you will find old version of md-cheatsheet.md

<!-- below is a copy of ../md/md-cheatsheet.md file from 03.12.2024 -->

This Markdown cheat sheet provides a quick overview of all the Markdown syntax elements. It can’t cover every edge case, so if you need more information about any of these elements, refer to the reference guides for [basic syntax](https://www.markdownguide.org/basic-syntax) and [extended syntax](https://www.markdownguide.org/extended-syntax).

## VS Code Extention: learn-markdown

### How to use the extension

To access the Learn Markdown menu, type `ALT+M`. You can click or use up/down arrows to select the function you want, or type to start filtering, then hit `ENTER` when the function you want is highlighted in the menu.

![Laern-Markdown Alt+M!](./images/Learn-Markdown_Alt+M.png "Alt+M")

## Basic Syntax

These are the elements outlined in John Gruber’s original design document. All Markdown applications support these elements.

### Heading

Above "Heading 3" with `### Heading` was used.

<!-- This section provides an overview of 
# H1 - "Heading 1"

For "Heading 1" you can use `# H1`

Markdown syntax -->

## H2

For "Heading 2" you can use `# H2`

### H3

For "Heading 3" you can use `# H3`

### Bold

For **bold text** please write `**bold text**`

### Italic

For *italicized text* please write `*italicized text*`

### Underline

++this text should be underlined++ but sometimes you have to use HTML instead of `++underline++`  

Here HTML syntax for unerlinded text  
`<u> this text should be unerlinded </u>`  
Normaly you would not use HTML syntax in MarkDown file.  

### Blockquote

> blockquote

### Ordered List

1. First item
2. Second item
3. Third item

### Unordered List

- First item
- Second item
- Third item

### Code

`code`

### Horizontal Rule

---

### Link

### Image

![alt text e.g. Linux Pinguin][LinuxPinguinImage]

## Extended Syntax

These elements extend the basic syntax by adding additional features. Not all Markdown applications support these elements.

### Table

| Syntax | Description |
| ----------- | ----------- |
| Header | Title |
| Paragraph | Text |

### Fenced Code Block

```json
{
  "firstName": "John",
  "lastName": "Smith",
  "age": 25
}
```

### Footnote

Here's a sentence with a footnote. [^1]

[^1]: This is the footnote.

### Heading ID

### My Great Heading {#custom-id}

### Definition List

term
: definition  
term2
: definition2

### New Line

For new line please add two "spaces" at the end of the line."  "  
Otherwise you will not see this sentence in starting in a new line.

Alternatively you can add just an empty line above.

### Nummeric List

1. First Item
2. Zweites Element
3. Drei

### Strikethrough

~~The world is flat.~~

For ~~Strikethrough~~ please write `~~Strikethrough~~`

### Task List

- [x] Write the press release
- [ ] Update the website
- [ ] Contact the media

### Emoji

That is so funny! :joy:  
Gone camping! :tent: Be back soon.

```txt
That is so funny! :joy:  
Gone camping! :tent: Be back soon.
```

(See also [Copying and Pasting Emoji](https://www.markdownguide.org/extended-syntax/#copying-and-pasting-emoji))  
(See also [list of emoji shortcodes](https://gist.github.com/rxaviers/7360908))

### Highlight

I need to highlight these ==very important words==.

### Subscript

H~2~O

### Superscript

[LinuxPinguinImage]: https://www.markdownguide.org/assets/images/tux.png
