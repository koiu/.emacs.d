.. OMake-mode documentation master file, created by
   sphinx-quickstart on Wed Feb  2 16:52:15 2011.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

OMake-mode
======================================

OMake-mode is an emacs mode for compilation using `OMake build system <http://omake.metaprl.org/>`_.

It is a quick reimplementation of ``compilation-mode`` but with some neat features for OCaml programming with ``omake -P``, OMake's persistent mode:

* Auto jumps to OCaml errors.
* Sounds at build errors and successes using ``aplay``.
* Easy to restart the build.

Download
-----------------------------------
Available at http://bitbucket.org/camlspotter/omake-mode/ .

Configuration
-----------------------------------------
It is from my .emacs::

   (require 'omake-mode)
   (setq omake-program-path "/usr/bin/omake") ; The path of omake
   (setq omake-program-arguments "-P -w -j 1 --verbose") ; Options
   (setq omake-error-highlight-background "#555500")
   (global-unset-key "\M-P")
   (global-unset-key "\M-N")
   (global-unset-key "\M-o")
   (global-unset-key "\C-co")
   (global-unset-key "\C-cO")
   (global-set-key "\M-P" 'omake-previous-error)
   (global-set-key "\M-N" 'omake-next-error)
   (global-set-key "\M-o" 'omake-round-visit-buffer)
   (global-set-key "\C-co" 'omake-run)
   (global-set-key "\C-cO" 'omake-rerun)

Some of the key combinations such as "\\M-P" might not working in Gnome compliant terminals. In such a case, help yourself.

Usage
----------------------------------------------

Start building

    * Open or move to a buffer of the build dir.
    * Then \\C-co (omake-run)

    It starts an OMake build and show the build log in a new OMake buffer. 
    The new build becomes `current` session.

    You can run more than one OMake build sessions.

Visiting OMake buffers

    \\M-o (omake-round-visit-buffer) round-visits existing OMake buffers and changes the current OMake session.

Visit OCaml errors of the current OMake session

    \\M-P (omake-previous-error) or \\M-N (omake-next-error)

Stop the build

    Kill the omake buffer showing the build log

Restart the current build

    \\C-cO (omake-rerun) kills the current OMake session and restarts it.

Todos
-----------------------------------------------

* Support of errors of other languages (C, C++, LaTeX, ...)
* Configuration
