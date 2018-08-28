---
permalink: "/grid-system/"
layout: page
title: Grid System
---

<!-- Hero -->
<style>
.grid-cell {
    background: #ddd;
    text-align: center;
    font-weight: bold;
    padding: 10px;
    color: #fff;
}
</style>


<h2 class="section-title" id="voice">Using the Grid System</h2>

<div class="row">
    <div class="col s12 l12">
        <p>This framework includes a built in 12 column responsive grid system. You can utilize this by using the <code>row</code> and <code>col</code> css classes and supplying your intended column sizes. Column widths can have different breakpoints for small (mobile), medium (tablet), and large (desktop) devices. For example for a column that is full-width on mobile and half-width on desktop you would give the div a class of <code>col s12 l6</code>.</p>
    </div>
</div>

<h4>Example</h4>
{% highlight html %}
<div class="row">
    <div class="col s12 l6">
        <p>Your content here.</p>
    </div>
    <div class="col s12 l6">
        <p>Your content here.</p>
    </div>
</div>{% endhighlight %}

<h4>Sample Grid</h4>
<div class="row">
    <div class="col s12 l12">
        <div class="grid-cell">s12 - l12</div>
    </div>
</div>
<div class="row">
    <div class="col s12 l6">
        <div class="grid-cell">s12 - l6</div>
    </div>
    <div class="col s12 l6">
        <div class="grid-cell">s12 - l6</div>
    </div>
</div>
<div class="row">
    <div class="col s12 l4">
        <div class="grid-cell">s12 - l4</div>
    </div>
    <div class="col s12 l4">
        <div class="grid-cell">s12 - l4</div>
    </div>
    <div class="col s12 l4">
        <div class="grid-cell">s12 - l4</div>
    </div>
</div>
<div class="row">
    <div class="col s12 l3">
        <div class="grid-cell">s12 - l3</div>
    </div>
    <div class="col s12 l3">
        <div class="grid-cell">s12 - l3</div>
    </div>
    <div class="col s12 l3">
        <div class="grid-cell">s12 - l3</div>
    </div>
    <div class="col s12 l3">
        <div class="grid-cell">s12 - l3</div>
    </div>
</div>

<div class="row">
    <div class="col s12 m6 l6">
        <div class="grid-cell">s12 - m6 - l6</div>
    </div>
    <div class="col s12 m6 l6">
        <div class="grid-cell">s12 - m6 - l6</div>
    </div>
</div>

<div class="row">
    <div class="col s12 l8">
        <div class="grid-cell">s12 - l8</div>
    </div>
    <div class="col s12 l4">
        <div class="grid-cell">s12 - l4</div>
    </div>
</div>
