# Elixir Hangman

## Notable modifications and experiments

-   Solved assignments for extra practice
-   Built the `auto_hangman` module to let the computer play the text game using two strategies:
    -   `get_random_letter()`
    -   `get_best_letter()`

---

## Elixir: My initial thoughts

### Pros

-   Really smoooth DX with clear syntax and logical structure within both the language and the standard library
-   Interactive docs with `iex` is really nice for API exploration
-   Integrated testing framework + parallel test runner makes testing fun.
-   Clear error messages helps debugging
-   Compilation warnings make it easy to get a higher code quality
-   Composability with separate files is really easy. Simple namespaces that won't get in your way.
-   Automatic code formatting increase code quality and developmer productivity. Combined with `Prettier` in VS Code and development
-   Project generation makes it really easy to start new modules. This encourages developers to create small modules with clear responsibilities and API:s, which is great for code readability. It will create more separate files and modules - but it will make every module shorter and easier to understand by itself.

### Cons

-   IDE support in VS Code is not optimal with the standard extension. For example, go to definition, intellisense and similar. Perhaps this could be fixed by spending some more time on setup.
-   Pattern matching with multiple function definitions seems to be a powerful feature once you know it, but it takes some time to get used to. Replacing branching logic within functions with multiple function variations seems like a more declarative way of thinking about `input -> output`. Might be useful once I've given it some more time.

---

This project is based on projects + assignments from the course [Elixir for programmers, by ](https://codestool.coding-gnome.com/courses/elixir-for-programmers). Check it out!
