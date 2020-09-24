# Old DMs

`Old DMs` is a LaTeX class which simplifies the workflow for quick assignments while providing a vintage look.

It is based on the `article` class, so it keeps all the features while giving shortcuts for commands that are repeatedly used in an assignment-type work.

## Installation

For Overleaf users, see the Overleaf section.

### Requirements

For these who run a LaTeX distribution on their system, it requires these custom fonts installed on your system:

- Old Standard TT;
- GFS Baskerville;
- GFS Solomos;
- TEX Gyre Pagella.

It also requires Python and the `pygments` package, which can be installed using the following line.

```
pip install pygments
```

For Windows users, make sure Python is on the PATH.

### Linux with TeX Live

To avoid putting the `old-dms.cls` file in each LaTeX project, it is possible to properly install this class on your TeX Live distribution. If you already have a local TeXMF directory, put the `old-dms.cls` in it. If not, use the following commands to create one:

```
mkdir -p $HOME/.texmf/tex/latex/old-dms
sudo /usr/local/texlive/2012/bin/x86_64-linux/tlmgr conf texmf TEXMFHOME $HOME/.texmf
mv old-dms.cls $HOME/.texmf/tex/latex/old-dms
mktexlsr $HOME/.texmf
```

The class should be properly installed on your distribution.

### Windows with MiKTeX

To avoid putting the `old-dms.cls` file in each LaTeX project, it is possible to properly install this class on your MiKTeX distribution. 

- Create a local TeXMF directory, for example:

  ```
  C:\Users\<you>\localtexmf\
  ```

  Then, create a `tex\latex` directory inside `localtexmf`, and again, create a directory named `old-dms` and put your `old-dms.cls` file in it. *In fine* it should look like this: 

  ```
  C:\Users\<you>\localtexmf\tex\latex\old-dms\old-dms.cls
  ```

- Open MiKTeX console, go to `Settings`, `Directories` tab, click on the `add` button, and add your TeXMF path:

  ```
  C:\Users\<you>\localtexmf\
  ```

- Then, go to the `tasks` tab, and run `Refresh file name database`.

The class should be now installed on your computer, `.tex` files compile with it, without the `.cls` having to be in the same folder.

## Usage

### Document preamble

The class introduction is done as follows:

```tex
\documentclass[<options>]{old-dms}

```

`Old DMs`  is inherited from the `article` class, so it takes the same options. For more information see https://www.ctan.org/pkg/article.

Then, rock the good old \inlinecode{tex}_\begin{document}_,. The features provided by this class are explained further in the documentation.

### For Overleaf users

If you are on Overleaf, you just have to paste the `old-dms.cls` file into yourproject, start your `.tex` file with

```tex
\documentclass[<options>]{old-dms}
```

and it should work properly.

### Compilation

`Old DMs` use Unicode type fonts, so it compiles with XeLaTeX. PdfLaTeX will not work.

This uses the `minted` package, which is based on `pygments`, which needs to be installed. It must therefore be compiled with the `--shell-escape` flag. On an IDE like TeXmaker, it can be changed in 

`Options > Configure TeXmaker`

by adding the following line in the XeLaTeX field:

```
xelatex -synctex=1 -interaction=nonstopmode --shell-escape %.tex
```

For command-line compilation, just add `--shell-escape` to the command.



## Documentation

The documentation - a full PDF compiled with this very class - can be found in the documentation folder, with the `.tex` source code.

The documentation explains how to use the class, and lists the macros provided while giving examples of use.
