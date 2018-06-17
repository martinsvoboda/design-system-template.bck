# Design System Template

Design System Template is Jekyll theme and a boilerplate for creating and documenting your principles, style guides and patterns for your organization's design system. It provides just enough IA and hooks to get you going. As a bonus, I've provided links to helpful resources and inspiration to help you as you create your own custom design system. It is based on Brad Frost [Style Guide Guide](https://github.com/bradfrost/style-guide-guide/). The original code was cleaned and reworked, which leads to more straightforward maintenance of patterns and pages. Also, we speed up site generation.

[See the demo here](https://martinsvoboda.github.io/design-system-template/)

![Screenshot of Design System](screenshot.png)


## How it works

Design System Template is built using [Jekyll](https://jekyllrb.com/), a static site generator which works quite well for managing the content of a style guide.


## Usage

You have two variants how to use the template. You can directly copy this repository or use it as Jekyll theme.

### Direct use

1. [Install Jekyll](https://jekyllrb.com/docs/installation/)
2. Download or clone the files from the [repository on Github](https://github.com/martinsvoboda/mpsv-design-system). If you starting with GIT see [this simple guide](http://rogerdudler.github.io/git-guide/), you can use [GitHub desktop client](https://desktop.github.com/)
3. In the command line, navigate to the root of the project and run the `jekyll serve` command. This will build the static site and watch for changes.
3. Visit `http://127.0.0.1:4000/` in your browser to see the style guide.

### Use as Jekyll theme

You can use Design System Template as Jekyll theme. Future propagation of changes and bugfixes from theme to your site will be easier. You can override any of the theme defaults with your own site content. To replace any part of theme just make a copy of the specific file you wish to modify, or create the file from scratch giving it the same name as the file you wish to override.

1. Create new Jekyll site `https://jekyllrb.com/docs/quickstart/`

2. Add the following to your Gemfile

  ```ruby
  gem "jekyll-remote-theme"
  ```

  and run `bundle install` to install the plugin

3. Add the following to your site's `_config.yml` to activate the plugin

  ```yml
  plugins:
    - jekyll-remote-theme
  ```
  Note: If you are using a Jekyll version less than 3.5.0, use the `gems` key instead of `plugins`.

4. Add the following to your site's `_config.yml` to choose your theme

  ```yml
  remote_theme: martinsvoboda/design-system-template
  ```

  Note: You may also optionally specify a branch, tag, or commit to use by appending an `@` and the Git ref (e.g., `martinsvoboda/design-system-template@v1.0.0`). If you don't specify a Git ref, the `master` branch will be used.


## Build your design system

From here, the point is to customize the style guide for your needs and populate it with your content and components. Content is formatted in Markdown syntax. See [how to use it](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet). Markdown pages (.md files) are sorted to following structure, which we usually use for our projects:

```
design-system-template/
├── _data/
│   └── navigation.yml
├── _patterns/
│   ├── button/
│   │   ├── button-default.html
│   │   └── button-primary.html
│   └── pagination/
│       └── pagination.html
├── posts/
│   └── [publish changes in design system, RSS feed is generated by feed.xml file]
├── assets/
│   └── [css, fonts, icons and js files necessary for patterns preview]
├── guidelines/
│   └── [description of principles, guidelines and rules]
├── styles/
│   └── [description of basic styles as colors, typography, grid etc.]
├── components/
│   └── [description of components]
├── page-templates/
│   └── [description of page templates]
├── index.md
├── feed.xml
├── getting-started.md
└── [other files]
```

To understand other files and folders see [Jekyll directory structure](https://jekyllrb.com/docs/structure/)

### Add page

If you want to create a new page:

1. Create a new file `my-first-page.md` in the project root folder with this content:

    ```
    ---
    layout: page
    title: My First Page
    description: The description of page.
    ---

    ## Heading

    Lorem ipsum
    ```

2. Go to `http://127.0.0.1:4000/my-first-page.html` and see your first page.


### Add pattern

1. Patterns (usually styles, components, page templates etc.) consist of the description of usage and pattern preview. The description is stored as Markdown page with the following syntax:

    ```
    ---
    layout: component-detail
    group: components
    permalink: /components/button.html

    title: Button
    description: Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam ante. Nulla pulvinar eleifend sem. Sed vel lectus. Donec odio tempus molestie, porttitor ut, iaculis quis, sem. Nullam lectus justo, vulputate eget mollis sed, tempor sed magna. Aenean fermentum risus id tortor. Vivamus porttitor turpis ac leo.

    variations:
    - title: Primary buttons
    description: Description of standard pagination...
    pattern: button/button-primary.html
    ---

    ## Documentation

    Lorem ipsum
    ```

2. For each variation, you should set `pattern` parameter, which refers to file with code. These files have to be stored inside `_patterns/` folder.
According to the definition above you have to create file `button/button-primary.html` with this content:

    ```
    ---
    layout: pattern
    ---

    <button type="button" class="btn btn-default btn-xs">Extra small</button>
    <button type="button" class="btn btn-default btn-sm">Small</button>
    <button type="button" class="btn btn-default">Normal</button>
    <button type="button" class="btn btn-default btn-lg">Large</button>
    ```

3. You can see your first component with live preview and code in `http://127.0.0.1:4000/components/pagination.html`.

### Update pattern preview layout

Certainly, your patterns previews will need external CSS and JS files to render correctly. You can edit HTML template used for live preview in `_layouts/pattern.html`. Necessary assets (CSS, JS, fonts etc.) place into `assets/` folder.

If you want to have several layouts to render components, just create new layout file in `_layouts` folder and change layout property in file with pattern`s code.


### How to change the navigation

If you want to change the navigation structure, change it inside `_data/navigation.yml`. There are two types of navigation items:

* For simple link use this syntax:

    ```
    - title: Getting started
    url: /getting-started.html
    ```

* Or if you want to create a submenu, set `group` parameter. Pages with the same group will be added automatically as sublink:

    ```
    - title: Guidelines
    group: guidelines
    ```





## Branding

You can customize style basics directly from `_config.yml` file:

```
branding:
  logo_path: '/assets/logo.svg'
  navigation_background_color: '#eee'
  navigation_link_color: '#444'
  navigation_link_color_hover: 'gray'
  main_background_color: '#fff'
```

### Customize design

If you want to make more sophisticated changes, you can customize design directly with styles located in `_sass/` or with main CSS file located in `/assets/css/main.scss`.

## Feedback and Questions
If you have questions or issues with Style Guide Guide, please feel free to [open an issue](https://martinsvoboda.github.io/design-system-template/issues).

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

