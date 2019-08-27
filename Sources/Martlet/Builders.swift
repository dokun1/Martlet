//
//  Builders.swift
//  
//
//  Created by David Okun on 6/19/19.
//

import Foundation


public func link(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "a", child: child())
}


public func abbreviation(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "abbr", child: child())
}


public func acronym(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "acronym", child: child())
}


public func address(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "address", child: child())
}


public func applet(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "applet", child: child())
}


public func area(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "area", child: child())
}


public func article(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "article", child: child())
}


public func aside(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "aside", child: child())
}


public func audio(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "audio", child: child())
}


public func bold(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "b", child: child())
}


public func base(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "base", child: child())
}


public func basefont(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "basefont", child: child())
}


public func bdi(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "bdi", child: child())
}


public func directional(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "bdo", child: child())
}


public func big(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "big", child: child())
}


public func blockquote(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "blockquote", child: child())
}


public func body(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "body", child: child())
}


public func lineBreak(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "br", child: child())
}


public func button(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "button", child: child())
}


public func canvas(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "canvas", child: child())
}


public func caption(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "caption", child: child())
}


public func center(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "center", child: child())
}


public func cite(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "cite", child: child())
}


public func code(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "code", child: child())
}


public func col(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "col", child: child())
}


public func columnGroup(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "colgroup", child: child())
}


public func data(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "data", child: child())
}


public func datalist(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "datalist", child: child())
}


public func define(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "dt", child: child())
}


public func defining(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "dfn", child: child())
}


public func delete(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "del", child: child())
}


public func details(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "details", child: child())
}


public func describe(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "dd", child: child())
}


public func descriptionList(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "dl", child: child())
}


public func dialog(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "dialog", child: child())
}


public func dir(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "dir", child: child())
}


public func div(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "div", child: child())
}


public func emphasis(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "em", child: child())
}


public func embed(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "embed", child: child())
}


public func fieldset(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "fieldset", child: child())
}


public func figcaption(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "figcaption", child: child())
}


public func figure(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "figure", child: child())
}


public func font(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "font", child: child())
}


public func footer(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "footer", child: child())
}


public func form(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "form", child: child())
}


public func frame(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "frame", child: child())
}


public func frameset(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "frameset", child: child())
}


public func heading(_ weight: HeadingWeight, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: weight.rawValue, child: child())
}


public func header(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "header", child: child())
}


public func `break`(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "hr", child: child())
}


public func html(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "html", child: child())
}


public func italic(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "i", child: child())
}


public func iframe(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "iframe", child: child())
}


public func image(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "img", child: child())
}


public func input(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "input", child: child())
}


public func insert(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "ins", child: child())
}


public func keyboard(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "kbd", child: child())
}


public func label(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "label", child: child())
}


public func legend(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "legend", child: child())
}


public func listItem(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "li", child: child())
}


public func linkStylesheet(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "link", child: child())
}


public func main(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "main", child: child())
}


public func map(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "map", child: child())
}


public func mark(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "mark", child: child())
}


public func meta(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "meta", child: child())
}


public func meter(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "meter", child: child())
}


public func navigation(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "nav", child: child())
}


public func noFrames(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "noframes", child: child())
}


public func noScript(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "noscript", child: child())
}


public func object(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "object", child: child())
}


public func orderedList(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "ol", child: child())
}


public func optionGroup(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "optgroup", child: child())
}


public func option(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "option", child: child())
}


public func output(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "output", child: child())
}


public func paragraph(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "p", child: child())
}


public func parameter(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "param", child: child())
}


public func picture(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "picture", child: child())
}


public func preformatted(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "pre", child: child())
}


public func progress(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "progress", child: child())
}


public func q(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "q", child: child())
}


public func ruby(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "ruby", child: child())
}


public func rubyParenthesis(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "rp", child: child())
}


public func rubyPronunciation(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "rt", child: child())
}


public func s(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "s", child: child())
}


public func sample(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "samp", child: child())
}


public func script(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "script", child: child())
}


public func section(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "section", child: child())
}


public func select(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "select", child: child())
}


public func small(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "small", child: child())
}


public func source(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "source", child: child())
}


public func span(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "span", child: child())
}


public func strike(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "strike", child: child())
}


public func strong(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "strong", child: child())
}


public func style(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "style", child: child())
}


public func `subscript`(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "sub", child: child())
}


public func summary(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "summary", child: child())
}


public func superscript(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "sup", child: child())
}


public func svg(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "svg", child: child())
}


public func table(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "table", child: child())
}


public func tableBody(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "tbody", child: child())
}


public func tableData(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "td", child: child())
}


public func template(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "template", child: child())
}


public func textArea(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "textarea", child: child())
}


public func tableFoot(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "tfoot", child: child())
}


public func tableHead(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "thead", child: child())
}


public func tableHeadData(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "th", child: child())
}


public func tableRow(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "tr", child: child())
}


public func time(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "time", child: child())
}


public func title(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "title", child: child())
}


public func track(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "track", child: child())
}


public func tt(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "tt", child: child())
}


public func u(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "u", child: child())
}


public func list(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "ul", child: child())
}


public func `var`(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "var", child: child())
}


public func video(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "video", child: child())
}


public func wordBreak(@CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "wbr", child: child())
}


public func custom<R: Renderable>(element: R, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: element.render(), child: child())
}

public func custom<R: Renderable>(elements: [R], @CSSBuilder child: () -> CSS) -> CSS {
  var rendered = [String]()
  for element in elements {
    rendered.append(element.render())
  }
  return CSSElementNode(element: rendered.joined(separator: ", "), child: child())
}

public func selector<R: Renderable>(`class`: R, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: ".\(`class`.render())", child: child())
}

public func selector<R: Renderable>(id: R, @CSSBuilder child: () -> CSS) -> CSS {
  return CSSElementNode(element: "#\(id.render())", child: child())
}

public func fontSize(_ size: Int) -> CSS {
  return CSSDeclarationNode(declaration: Declaration(property: "font-size", value: String(size)))
}

public func color(_ color: String) -> CSS {
  return CSSDeclarationNode(declaration: Declaration(property: "color", value: color))
}

public func textAlign(_ alignment: Alignment) -> CSS {
  return CSSDeclarationNode(declaration: Declaration(property: "text-align", value: alignment.rawValue))
}
