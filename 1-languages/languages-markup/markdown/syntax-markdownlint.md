# Syntax - `markdownlint`

## MD033: _no-inline-html_ - Inline HTML

Allow usage of specific HTML tags in markdown files.

**JSON Configuration File (`.json` / `.jsonc`)**

<u>Example</u>: Syntax

```json
# File name: `.markdownlint.json` / `.markdownlint.jsonc`.
{
    "MD033": {"allowed_elements": ["u"]}
}
```

<u>Example</u>: Output

Allow usage of `<u></u>` in markdown files.
