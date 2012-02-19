# brog #

This is a simple little Markdown blog/CMS consisting of a REST API and a console
application for interacting with the API and piping content into your editor of
of choice, then pushing it back up to the API. I wrote it because I hate editing
text in a web browser; I want to use a real editor.

## Getting started ##

Ready to try it out? In one console, run the following:

    git clone git://github.com/seansawyer/brog.git
    cd brog
    ./start.sh

At this point, brog is running at http://localhost:8000/ but doesn't have any
content. If you point your browser there, you should see a very boring looking
page. To add a post, try this:

    ./brogc -e vim

Vim should start up, and you should see an empty buffer. Now enter some text,
in Markdown format:

    # Hello world! #
    What a nice blog you have here.

Now save and exit Vim using `:wq`, and you will get a prompt:

    What now? s[ave], q[uit], or h[elp] for more options
    > 

If you choose 's' (or 'save'), brog will make some assumptions - some of which
you might not like - and will post your content immediately. If you point your
browser back to http://localhost:8000/ you should see an untitled post with
the default metadata. To see how to override the default metadata with your
own, to save an unpublished draft and many more options, try running
`./brogc -h`.

## Next steps ##

You will probably want to secure your brog by requiring authentication for the
API.
