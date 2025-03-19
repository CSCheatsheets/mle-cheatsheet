# HuggingFace - Syntax Bug

## `requests.exceptions.HTTPError`

```text
requests.exceptions.HTTPError: 416 Client Error: Range Not Satisfiable for url
```

**Traceback**: The error occurs when downing model checkpoints using built-in
`from_pretrained` syntax.

```python
Module.from_pretrained()
```

**Solution 1**: Delete the cache files in the `~/.cache/huggingface/hub`.

[`reference`](https://github.com/huggingface/huggingface_hub/issues/2197#issuecomment-2047170683)

**Solution 2**: Pass `--force-download` in the command or `force_download=True`
in the syntax to force discarding cached checkpoints and downloading new checkpoints.

[`reference`](https://github.com/huggingface/huggingface_hub/issues/2197#issuecomment-2047802296)
