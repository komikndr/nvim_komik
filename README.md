# Llama

## Keymaps

| Command | Action |
| --- | --- |
| `Ctrl+l` | Accept full FIM suggestion in Insert mode |
| `Space l l e` | Edit current line |
| `Space l l r` | Rerun instruction |
| `Space l l c` | Continue instruction |
| `Space l l a` | Accept instruction result |
| `Space l l x` | Cancel instruction |
| `Space l l d` | Toggle debug |

## Commands

```vim
:LlamaStatus
:LlamaEnable
:LlamaDisable
:LlamaToggle
:LlamaToggleAutoFim
:.LlamaInstruct
:%LlamaInstruct
:call llama#fim_accept('full')
```
