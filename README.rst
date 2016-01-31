vim-google
===========

Initiate a `Google <https://google.com>`_ search from within Vim.

Commands
--------

:Google
    Use in normal mode to Google the word under the cursor.

:VGoogle
    Use in visual mode to Google the selected text.

:GooglePrompt
    Prompt for text to Google.

Mappings
--------

This plugin doesn't install any mappings. Here is an example from my own vimrc::

.. code:: vim

    map <leader>g <Plug>Google
    vmap <leader>g <Plug>VGoogle
    map <leader>G <Plug>GooglePrompt
