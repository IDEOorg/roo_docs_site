---
permalink: "/typography/"
layout: page
title: Typography
---
<style>
    .test-img {
        width: 100%;
        height: 200px;
        background: #eee;
    }
</style>
<p class="page-intro">This block of text uses the <code>page-intro</code> class and is used for the introduction section of a page. Good for overviews / descriptions of underlying content.</p>

<h2 class="section-title">Copy</h2>

<div class="row">
    <div class="col s12 l12">
        <h4>Body Copy</h4>
        <p>This is the basic styling for all <code>&lt;p&gt;</code> tags. It should be used for most of the content in your documentation. You can adjust the base size and style in <code>css/main.scss</code></p>

        <h4>Lists</h4>
        <ul>
            <li>An un-ordered list item</li>
            <li>Another list item</li>
            <li>I love lists!</li>
            <li>Don't you?</li>
        </ul>
        <ol>
            <li>How about an ordered list item?</li>
            <li>And another</li>
            <li>???</li>
            <li>Profit!</li>
        </ol>

        <h4>Blockquotes</h4>
        <blockquote>
            <em>"You can use the &lt;blockquote&gt; tag to pull quotes or other important information."</em>
            <br/>-Bob User
        </blockquote>
    </div>
</div>

<h2 class="section-title">Captions</h2>
<div class="row">
    <div class="col s12 l6">
        <div class="test-img"></div>
        <p class="caption">You can caption an image or video with the <code>caption</code> class.</p>
    </div>
    <div class="col s12 l6">
        <div class="test-img"></div>
        <p class="caption">You can caption an image or video with the <code>caption</code> class.</p>
    </div>
</div>

<h2 class="section-title">Code</h2>
<div class="row">
    <div class="col s12 l12">
        <p>You can use <code>&lt;code&gt;</code> for inline code styling. Use <code>&#123;&#37; highlight [language] &#37;&#125;</code> and <code>&#123;&#37; endhighlight &#37;&#125;</code> around code blocks to enable syntax highlighting:</p>
{% highlight js %}
// Syntax highlighting rocks!
function(bar) {
    var foo = bar;
    return foo;
}{% endhighlight %}
    </div>
</div>



<h2 class="section-title">Headers</h2>
<div class="row">
    <div class="col s12 l12">
        <p>The above header uses the <code>section-header</code> class and will use your style's <code>$primary-color</code> as well as place a faint line to separate content sections.</p>

        <p>The framework also defines some basic headers for use in your content. Sizes can be modified in <code>css/main.scss</code></p>
        <h1>Header &lt;h1&gt;</h1>
        <h2>Header &lt;h2&gt;</h2>
        <h3>Header &lt;h3&gt;</h3>
        <h4>Header &lt;h4&gt;</h4>
    </div>
</div>
