# Roo documentation site

## Overview

This site serves as the central repository for technical documentation of the Roo platform, built by IDEO.org in 2018. It is hosted using Github pages.

[Here is a video](https://youtu.be/8pU9TgC0ZP8) that shows how to work with this repo locally and deploy to the live site.

## How to build project

This documentation website uses the static site builder [Jekyll](https://jekyllrb.com) to generate the various pages. It merges the markdown files found in the `_pages` directory with the html templates and partials found in the `_layouts` and `_includes` folders.

#### Ruby
To install the development environment, a bundle file has been included. Make sure you have **ruby 2.2+** installed. Using 2.6.3 is known to work as of this writing. The easiest method to install ruby is to use [homebrew](https://brew.sh/) and then issue `brew install ruby`. Alternatively, you can use [RVM](https://rvm.io/) to maintain your ruby installations.

Then issue these commands to get up and running:

- `gem install bundler` - Install bundler
- `cd [project directory]`
- `bundle install` - Install project dependencies
- `bundle exec jekyll liveserve` - Start dev server with livereload 

The development server should then be running at `http://localhost:4000`

To build the site for production run `jekyll build`. The production static site will be built to the `_site` folder. You can deploy / serve the `_site` folder on any static host or webserver (Github Pages / Bitbucket Aerobatic / Amazon S3 / Apache / nginx etc.)


## Content
### Navigation generator

Navigation is automatically generated based on a simple naming convention and folder structure: `[order]-[foo-title]`. The order number dictates where in the list the navigation link will reside. For instance, `01-example-page.md` would be the first item in the navigation. Folders are also defined in the same way and the system will transform the folder name into the link title. For instance, `04-foo-section` will become "Foo Section" and will be the 4th item in the navigation.


### Adding new pages

Each markdown file in the `_pages` folder has a yaml frontmatter that describes the page's title, layout, and permalink. The permalink is used to help automatically build the site's navigation. For example, if you wanted to link a page under the `/foo/` navigation section you would set the permalink to start with `/foo/`.

**Example:**

*_pages/foo/new-page.md*

```yaml
---
permalink: "/foo/new-page/"
layout: page
title:  "A New Page"
---
```

### Adding media

In order to build documentation that can be run locally, without a webserver, you have use relative links to images, video, or other assets. The framework simplifies this process by generating the relative path for you - all you have to do is prefix your links with `{{page.root}}`.

**Example:**

```html
<img src="{{page.root}}assets/example-image.jpg">
```

This should help in not having to resolve these paths yourself, and will make changing the order/hierarchy of your pages a breeze.

### Grid System

This framework includes a built in 12 column responsive grid system. You can utilize this by using the `row` and `col` css classes and supplying your intended column sizes. Column widths can have different breakpoints for small (mobile), medium (tablet), and large (desktop) devices. For example for a column that is full-width on mobile and half-width on desktop you would give the surrounding div a class of `col s12 l6`.

**Example:**

```html
<div class="row">
	<div class="col s12 l6">
        <p>Your content here.</p>
    </div>
    <div class="col s12 l6">
        <p>Your content here.</p>
    </div>
</div>
```

### Style and Layout

You can modify much of the theme and layout of the framework by changing css variables located in the `css/main.scss` sass file. Top-level font style, headers, colors, content width, spacing, and navigation can all be modified here. To do more granular modifications you can edit the theme sass files located in the `_sass` folder.

### Components

The framework comes with a library of components, courtesy of [materialize](http://materializecss.com). Out of the box the framework makes use of a responsive side-nav, and a lightbox like component for maximizing images and video.

To use the lightbox apply the `materialbox` css class to img and video tags.

```html
<img class="responsive-img materialboxed" src="{{page.root}}assets/example-ui.jpg">
```

