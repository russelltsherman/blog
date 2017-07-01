---
title: "Code Components"
tags: ["bootstrap"]
---

## HTML

```html
<!DOCTYPE html>
<html>
  {{- partial "head.html" . -}}
  <body>
    {{- partial "header.html" . -}}
    <div id="content">
      {{- partial "body-beforecontent.html" . -}}
      {{- block "main" . -}}{{- end -}}
      {{- partial "body-aftercontent.html" . -}}
    </div>
    {{- partial "footer.html" . -}}
    {{- partial "debug.html" . -}}
  </body>
</html>
```

## Go

```go
package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}
```

## JS

```js
(function($, window, undefined){

    function ToolTip (){

        var targets = $( '.glossarizer_replaced' ),
            target  = false,
            tooltip = false,
            title   = false;
     
        targets.bind( 'mouseenter', function()
        {
            target  = $( this );
            tip     = target.attr( 'title' );
            tooltip = $( '<div id="tooltip"></div>' );
        }

    return window.tooltip = ToolTip;

})(jQuery, window)
```

## JSON

```json
{
    "attribute": "value",
}
```
