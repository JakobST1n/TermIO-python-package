# TermIO
Simple library that makes it easier to manipulate the terminal using escape
sequences.

It does not work in all terminal and terminal-emulators. But i have generally
had good with bash.

```
import TermIO
```

## var `TermIO.rows`
Rows in the terminal. Not updating as of now...

## var `TermIO.columns`
Number of columns in the terminal. Not updating either...

## func `TermIO.Cursor.SetPos(col, row, flush=True)`
Set cursor to a spesific column and row in the terminal.
```
col   : The column number to put the cursor.
row   : The row number to put the cursor.
flush : Wether or not to flush the codes printed (Default is true).
```

## func `TermIO.Cursor.Left(n, flush=True)`
Move the cursor `n` characters to the left.
```
n     : number
flush : Wether or not to flush the codes printed (Default is true).
```

## func `TermIO.Cursor.Right(n, flush=True)`
Move the cursor `n` characters to the right.
```
n     : number
flush : Wether or not to flush the codes printed (Default is true).
```

## func `TermIO.Cursor.Up(n, flush=True)`
Move the cursor `n` characters up.
```
n     : number
flush : Wether or not to flush the codes printed (Default is true).
```

## func `TermIO.Cursor.Down(n, flush=True)`
Move the cursor `n` characters to the down.
```
n     : number
flush : Wether or not to flush the codes printed (Default is true).
```

## func `TermIO.Screen.Clear(flush=True)`
Clear the screen.
```
flush : Wether or not to flush the codes printed (Default is true).
```

## func `TermIO.Screen.Flush()`
Flushes printed content to screen.

## func `TermIO.Screen.Decorate(fg=None, bg=None, dec=None, flush=True)`
Clear the screen
```
fg    : Number between 0 and 255. No logical color math... [None]
bg    : Number between 0 and 255. No logical color math... [None]
dec   : Either a string or a list of strings. [None]
            The three possible decorations is
            reversed, underline, bold
            eg:
                TermIO.Screen.Decorate(dec="reversed")
            or
                TermIO.Screen.Decorate(dec=["bold", "reversed"])
flush : Wether or not to flush the codes printed. [True]
```

If you want to print `ESC[0M`, to remove all decorations. Just call this function with `fg=bg=dec=None`.

## func `TermIO.Screen.Write(outStr, flush=True)`
Writes a string to stdout.
```
outStr : string to be printed
flush  : Wether or not to flush the codes printed (Default is true).
```
