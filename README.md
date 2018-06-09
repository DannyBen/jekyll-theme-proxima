# The Proxima theme

Proxima is a Jekyll theme for GitHub Pages, with customizable colors and
GitHub-like styling ([preview][1]).

## Usage

To use the Proxima theme:

1. Add the following to your site's `_config.yml`:

    ```yml
    theme: jekyll-theme-proxima
    ```

2. Optionally, if you'd like to preview your site on your computer, add the 
   following to your site's `Gemfile`:

    ```ruby
    gem "github-pages", group: :jekyll_plugins
    ```

## Customizing

### Configuration variables

Proxima will respect the following variables, if set in your site's 
`_config.yml`:

```yml
title: [The title of your site]
description: [A short description of your site's purpose]
google_analytics: [Your Google Analytics tracking ID]

header:
  background: '#789'
  color: white

footer:
  background: '#eee'
```

### Stylesheet

If you'd like to add your own custom styles:

1. Create a file called `/assets/css/style.scss` in your site
2. Add the following content to the top of the file, exactly as shown:
    ```scss
    ---
    ---

    @import "{{ site.theme }}";
    ```
3. Add any custom CSS (or Sass, including imports) you'd like immediately 
   after the `@import` line

### Layouts

If you'd like to change the theme's HTML layout:

1. [Copy the original template][2] from the theme's repository
2. Create a file called `/_layouts/default.html` in your site
3. Paste the default layout content copied in the first step
4. Customize the layout as you'd like

### Overriding GitHub-generated URLs

Templates often rely on URLs supplied by GitHub such as links to your 
repository or links to download your project. 
If you'd like to override one or more default URLs:

1. Look at [the template source][2] to determine the name of the variable. 
   It will be in the form of `{{ site.github.zip_url }}`.
2. Specify the URL that you'd like the template to use in your site's 
   `_config.yml`. For example, if the variable was `site.github.url`, you'd 
   add the following:
    ```yml
    github:
      zip_url: http://example.com/download.zip
      another_url: another value
    ```
3. When your site is built, Jekyll will use the URL you specified, rather than 
   the default one provided by GitHub.

*Note: You must remove the `site.` prefix, and each variable name (after the 
`github.`) should be indent with two space below `github:`.*

For more information, see [the Jekyll variables documentation][3].

### Previewing the theme locally

If you'd like to preview the theme locally (for example, in the process of 
proposing a change):

1. Clone down the theme's repository and `cd` into it
2. Run `bundle` to install the necessary dependencies
3. Run `run server` to start the preview server
4. Visit [`localhost:3000`](http://localhost:3000) in your browser to 
   preview the theme



[1]: http://dannyben.github.io/proxima
[2]: https://github.com/dannyben/proxima/blob/master/_layouts/default.html
[3]: https://jekyllrb.com/docs/variables/
