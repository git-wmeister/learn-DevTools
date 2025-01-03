# Markdown Cheat Sheet

Thanks for visiting [The Markdown Guide][markdownguide]!

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

You can just use HTML markups in mark down.  
If you want to underline, italic or strong, use follows,

<u>
  this is underlined
</u>

<i>
  this is italic
</i>

<strong>
  this is strong/Bold
</strong>  

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

[Markdown Guide][markdownguide]

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

X^2^

[LinuxPinguinImage]: https://www.markdownguide.org/assets/images/tux.png
[markdownguide]: https://www.markdownguide.org/

Thanks for visiting [The Markdown Guide][markdownguide]

``` json
{}