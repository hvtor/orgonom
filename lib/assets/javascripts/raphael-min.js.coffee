// ┌────────────────────────────────────────────────────────────────────┐ \\
// │ Raphaël 2.1.0 - JavaScript Vector Library                          │ \\
// ├────────────────────────────────────────────────────────────────────┤ \\
// │ Copyright © 2008-2012 Dmitry Baranovskiy (http://raphaeljs.com)    │ \\
// │ Copyright © 2008-2012 Sencha Labs (http://sencha.com)              │ \\
// ├────────────────────────────────────────────────────────────────────┤ \\
// │ Licensed under the MIT (http://raphaeljs.com/license.html) license.│ \\
// └────────────────────────────────────────────────────────────────────┘ \\
((n) ->
  e = undefined
  t = undefined
  r = "0.4.2"
  f = "hasOwnProperty"
  i = /[\.\/]/
  o = "*"
  u = ->

  l = (n, e) ->
    n - e

  s = n: {}
  p = (n, r) ->
    n += ""
    f = undefined
    i = t
    o = Array::slice.call(arguments_, 2)
    u = p.listeners(n)
    s = 0
    a = []
    c = {}
    h = []
    d = e
    e = n
    t = 0

    g = 0
    v = u.length

    while v > g
      "zIndex" of u[g] and (a.push(u[g].zIndex)
      0 > u[g].zIndex and (c[u[g].zIndex] = u[g])
      )
      g++
    a.sort(l)
    while 0 > a[s]
      if f = c[a[s++]]
      h.push(f.apply(r, o))
      t
        return t = i
        h
    g = 0
    while v > g
      if f = u[g]
      "zIndex" of f
        if f.zIndex is a[s]
          break  if h.push(f.apply(r, o))
          t

          loop
            break  if s++
            f = c[a[s]]
            f and h.push(f.apply(r, o))
            t
            break unless f
        else
          c[f.zIndex] = f
      else break  if h.push(f.apply(r, o))
      t
      g++
    t = i
    e = d
    (if h.length then h else null)

  p._events = s
  p.listeners = (n) ->
    e = undefined
    t = undefined
    r = undefined
    f = undefined
    u = undefined
    l = undefined
    p = undefined
    a = undefined
    c = n.split(i)
    h = s
    d = [h]
    g = []
    f = 0
    u = c.length

    while u > f
      a = []
      l = 0
      p = d.length

      while p > l
        h = d[l].n
        t = [h[c[f]], h[o]]
        r = 2

        while r--
          e = t[r]
          e and (a.push(e)
          g = g.concat(e.f or [])
          )
        l++
      d = a
      f++
    g

  p.on = (n, e) ->
    return ->  if n += ""
    "function" isnt typeof e

    t = n.split(i)
    r = s
    f = 0
    o = t.length

    while o > f
      r = r.n
      r = r.hasOwnProperty(t[f]) and r[t[f]] or (r[t[f]] = n: {})
      f++
    r.f = r.f or []
    f = 0
    o = r.f.length

    while o > f
      return u  if r.f[f] is e
      f++
    r.f.push(e)
    (n) ->
      +n is +n and (e.zIndex = +n)

  p.f = (n) ->
    e = [].slice.call(arguments_, 1)
    ->
      p.apply null, [n, null].concat(e).concat([].slice.call(arguments_, 0))

  p.stop = ->
    t = 1

  p.nt = (n) ->
    (if n then RegExp("(?:\\.|\\/|^)" + n + "(?:\\.|\\/|$)").test(e) else e)

  p.nts = ->
    e.split i

  p.off = p.unbind = (n, e) ->
    unless n
      return p._events = s = n: {}
      undefined
    t = undefined
    r = undefined
    u = undefined
    l = undefined
    a = undefined
    c = undefined
    h = undefined
    d = n.split(i)
    g = [s]
    l = 0
    a = d.length

    while a > l
      c = 0
      while g.length > c
        if u = [c, 1]
        t = g[c].n
        d[l] isnt o
          t[d[l]] and u.push(t[d[l]])
        else
          for r of t
            t[f](r) and u.push(t[r])
        g.splice.apply g, u
        c += u.length - 2
      l++
    l = 0
    a = g.length

    while a > l
      t = g[l]
      while t.n
        if e
          if t.f
            c = 0
            h = t.f.length

            while h > c
              if t.f[c] is e
                t.f.splice c, 1
                break
              c++
            not t.f.length and delete t.f
          for r of t.n
            if t.n[f](r) and t.n[r].f
              v = t.n[r].f
              c = 0
              h = v.length

              while h > c
                if v[c] is e
                  v.splice c, 1
                  break
                c++
              not v.length and delete t.n[r].f
        else
          delete t.f

          for r of t.n
            t.n[f](r) and t.n[r].f and delete t.n[r].f
        t = t.n
      l++

  p.once = (n, e) ->
    t = ->
      p.unbind(n, t)
      e.apply(this, arguments_)

    p.on n, t

  p.version = r
  p.toString = ->
    "You are running Eve " + r

  (if "undefined" isnt typeof module and module.exports then module.exports = p else (if "undefined" isnt typeof define then define("eve", [], ->
    p
  ) else n.eve = p))
) this
((t, e) ->
  (if "function" is typeof define and define.amd then define("raphael", ["eve"], e) else t.Raphael = e(t.eve))
) this, (t) ->
  e = (n) ->
    return (if y then n() else t.on("raphael.DOMload", n))  if e.is(n, "function")
    return e._engine.create[T](e, n.splice(0, 3 + e.is(n[0], G))).add(n)  if e.is(n, W)
    r = Array::slice.call(arguments_, 0)
    if e.is(r[r.length - 1], "function")
      i = r.pop()
      return (if y then i.call(e._engine.create[T](e, r)) else t.on("raphael.DOMload", ->
        i.call e._engine.create[T](e, r)
      ))
    e._engine.create[T] e, arguments_
  n = (t) ->
    return t  if Object(t) isnt t
    e = new t.constructor
    for r of t
      t[B](r) and (e[r] = n(t[r]))
    e
  r = (t, e) ->
    n = 0
    r = t.length

    while r > n
      return t.push(t.splice(n, 1)[0])  if t[n] is e
      n++
  i = (t, e, n) ->
    i = ->
      a = Array::slice.call(arguments_, 0)
      s = a.join("␀")
      o = i.cache = i.cache or {}
      u = i.count = i.count or []
      (if o[B](s) then (r(u, s)
      (if n then n(o[s]) else o[s])
      ) else (u.length >= 1e3 and delete o[u.shift()]

      u.push(s)
      o[s] = t[T](e, a)
      (if n then n(o[s]) else o[s])
      ))
    i
  a = ->
    @hex
  s = (t, e) ->
    n = []
    r = 0
    i = t.length

    while i - 2 * not e > r
      a = [
        x: +t[r - 2]
        y: +t[r - 1]
      ,
        x: +t[r]
        y: +t[r + 1]
      ,
        x: +t[r + 2]
        y: +t[r + 3]
      ,
        x: +t[r + 4]
        y: +t[r + 5]
      ]
      (if e then (if r then (if i - 4 is r then a[3] =
        x: +t[0]
        y: +t[1]
       else i - 2 is r and (a[2] =
        x: +t[0]
        y: +t[1]

      a[3] =
        x: +t[2]
        y: +t[3]

      )) else a[0] =
        x: +t[i - 2]
        y: +t[i - 1]
      ) else (if i - 4 is r then a[3] = a[2] else r or (a[0] =
        x: +t[r]
        y: +t[r + 1]
      )))
      n.push(["C", (-a[0].x + 6 * a[1].x + a[2].x) / 6, (-a[0].y + 6 * a[1].y + a[2].y) / 6, (a[1].x + 6 * a[2].x - a[3].x) / 6, (a[1].y + 6 * a[2].y - a[3].y) / 6, a[2].x, a[2].y])
      r += 2
    n
  o = (t, e, n, r, i) ->
    a = -3 * e + 9 * n - 9 * r + 3 * i
    s = t * a + 6 * e - 12 * n + 6 * r
    t * s - 3 * e + 3 * n
  u = (t, e, n, r, i, a, s, u, l) ->
    null is l and (l = 1)
    l = (if l > 1 then 1 else (if 0 > l then 0 else l))

    h = l / 2
    c = 12
    f = [-.1252, .1252, -.3678, .3678, -.5873, .5873, -.7699, .7699, -.9041, .9041, -.9816, .9816]
    p = [.2491, .2491, .2335, .2335, .2032, .2032, .1601, .1601, .1069, .1069, .0472, .0472]
    d = 0
    g = 0

    while c > g
      x = h * f[g] + h
      v = o(x, t, n, i, s)
      m = o(x, e, r, a, u)
      y = v * v + m * m
      d += p[g] * D.sqrt(y)
      g++
    h * d
  l = (t, e, n, r, i, a, s, o, l) ->
    unless 0 > l or l > u(t, e, n, r, i, a, s, o)
      h = undefined
      c = 1
      f = c / 2
      p = c - f
      d = .01
      h = u(t, e, n, r, i, a, s, o, p)
      while V(h - l) > d
        f /= 2
        p += ((if l > h then 1 else -1)) * f
        h = u(t, e, n, r, i, a, s, o, p)
      p
  h = (t, e, n, r, i, a, s, o) ->
    unless z(t, n) < O(i, s) or O(t, n) > z(i, s) or z(e, r) < O(a, o) or O(e, r) > z(a, o)
      u = (t * r - e * n) * (i - s) - (t - n) * (i * o - a * s)
      l = (t * r - e * n) * (a - o) - (e - r) * (i * o - a * s)
      h = (t - n) * (a - o) - (e - r) * (i - s)
      if h
        c = u / h
        f = l / h
        p = +c.toFixed(2)
        d = +f.toFixed(2)
        unless +O(t, n).toFixed(2) > p or p > +z(t, n).toFixed(2) or +O(i, s).toFixed(2) > p or p > +z(i, s).toFixed(2) or +O(e, r).toFixed(2) > d or d > +z(e, r).toFixed(2) or +O(a, o).toFixed(2) > d or d > +z(a, o).toFixed(2)
          x: c
          y: f
  c = (t, n, r) ->
    i = e.bezierBBox(t)
    a = e.bezierBBox(n)
    return (if r then 0 else [])  unless e.isBBoxIntersect(i, a)
    s = u.apply(0, t)
    o = u.apply(0, n)
    l = ~~(s / 5)
    c = ~~(o / 5)
    f = []
    p = []
    d = {}
    g = (if r then 0 else [])
    x = 0

    while l + 1 > x
      v = e.findDotsAtSegment.apply(e, t.concat(x / l))
      f.push
        x: v.x
        y: v.y
        t: x / l

      x++
    x = 0
    while c + 1 > x
      v = e.findDotsAtSegment.apply(e, n.concat(x / c))
      p.push(
        x: v.x
        y: v.y
        t: x / c
      )
      x++
    x = 0
    while l > x
      m = 0

      while c > m
        y = f[x]
        b = f[x + 1]
        _ = p[m]
        w = p[m + 1]
        k = (if .001 > V(b.x - y.x) then "y" else "x")
        B = (if .001 > V(w.x - _.x) then "y" else "x")
        S = h(y.x, y.y, b.x, b.y, _.x, _.y, w.x, w.y)
        if S
          continue  if d[S.x.toFixed(4)] is S.y.toFixed(4)
          d[S.x.toFixed(4)] = S.y.toFixed(4)
          C = y.t + V((S[k] - y[k]) / (b[k] - y[k])) * (b.t - y.t)
          F = _.t + V((S[B] - _[B]) / (w[B] - _[B])) * (w.t - _.t)
          C >= 0 and 1 >= C and F >= 0 and 1 >= F and ((if r then g++ else g.push(
            x: S.x
            y: S.y
            t1: C
            t2: F
          )))
        m++
      x++
    g
  f = (t, n, r) ->
    t = e._path2curve(t)
    n = e._path2curve(n)

    i = undefined
    a = undefined
    s = undefined
    o = undefined
    u = undefined
    l = undefined
    h = undefined
    f = undefined
    p = undefined
    d = undefined
    g = (if r then 0 else [])
    x = 0
    v = t.length

    while v > x
      m = t[x]
      unless "M" is m[0]
        (if "C" is m[0] then (p = [i, a].concat(m.slice(1))
        i = p[6]
        a = p[7]
        ) else (p = [i, a, i, a, u, l, u, l]
        i = u
        a = l
        ))
        y = 0
        b = n.length

        while b > y
          _ = n[y]
          unless "M" is _[0]
            (if "C" is _[0] then (d = [s, o].concat(_.slice(1))
            s = d[6]
            o = d[7]
            ) else (d = [s, o, s, o, h, f, h, f]
            s = h
            o = f
            ))
            w = c(p, d, r)
            unless r
              k = 0
              B = w.length

              while B > k
                w[k].segment1 = x
                w[k].segment2 = y
                w[k].bez1 = p
                w[k].bez2 = d
                k++
              g = g.concat(w)
          y++
      x++
    g
  p = (t, e, n, r, i, a) ->
    (if null isnt t then (@a = +t
    @b = +e
    @c = +n
    @d = +r
    @e = +i
    @f = +a
    ) else (@a = 1
    @b = 0
    @c = 0
    @d = 1
    @e = 0
    @f = 0
    ))
  d = ->
    @x + E + @y + E + @width + " × " + @height
  g = (t, e, n, r, i, a) ->
    s = (t) ->
      ((c * t + h) * t + l) * t
    o = (t, e) ->
      n = u(t, e)
      ((d * n + p) * n + f) * n
    u = (t, e) ->
      n = undefined
      r = undefined
      i = undefined
      a = undefined
      o = undefined
      u = undefined
      i = t
      u = 0

      while 8 > u
        return i  if a = s(i) - t
        e > V(a)

        break  if o = (3 * c * i + 2 * h) * i + l
        1e-6 > V(o)

        i -= a / o
        u++
      return n  if n = 0
      r = 1
      i = t
      n > i

      return r  if i > r
      while r > n
        return i  if a = s(i)
        e > V(a - t)

        (if t > a then n = i else r = i)
        i = (r - n) / 2 + n
      i
    l = 3 * e
    h = 3 * (r - e) - l
    c = 1 - l - h
    f = 3 * n
    p = 3 * (i - n) - f
    d = 1 - f - p
    o t, 1 / (200 * a)
  x = (t, e) ->
    n = []
    r = {}
    if @ms = e
    @times = 1
    t
      for i of t
        t[B](i) and (r[J(i)] = t[i]
        n.push(J(i))
        )
      n.sort he
    @anim = r
    @top = n[n.length - 1]
    @percents = n
  v = (n, r, i, a, s, o) ->
    i = J(i)
    u = undefined
    l = undefined
    h = undefined
    c = undefined
    f = undefined
    d = undefined
    x = n.ms
    v = {}
    m = {}
    y = {}
    if a
      w = 0
      k = on_.length

      while k > w
        b = on_[w]
        if b.el.id is r.id and b.anim is n
          (if b.percent isnt i then (on_.splice(w, 1)
          h = 1
          ) else l = b)
          r.attr(b.totalOrigin)

          break
        w++
    else
      a = +m
    w = 0
    k = n.percents.length

    while k > w
      if n.percents[w] is i or n.percents[w] > a * n.top
        i = n.percents[w]
        f = n.percents[w - 1] or 0
        x = x / n.top * (i - f)
        c = n.percents[w + 1]
        u = n.anim[i]

        break
      a and r.attr(n.anim[n.percents[w]])
      w++
    if u
      unless l
        for S of u
          if u[B](S) and (ne[B](S) or r.paper.customAttributes[B](S))
            switch v[S] = r.attr(S)
            null is v[S] and (v[S] = ee[S])
            m[S] = u[S]
            ne[S]

              when G
                y[S] = (m[S] - v[S]) / x
              when "colour"
                v[S] = e.getRGB(v[S])
                C = e.getRGB(m[S])
                y[S] =
                  r: (C.r - v[S].r) / x
                  g: (C.g - v[S].g) / x
                  b: (C.b - v[S].b) / x
              when "path"
                F = Re(v[S], m[S])
                T = F[1]
                v[S] = F[0]
                y[S] = []
                w = 0
                k = v[S].length

                while k > w
                  y[S][w] = [0]
                  A = 1
                  P = v[S][w].length

                  while P > A
                    y[S][w][A] = (T[w][A] - v[S][w][A]) / x
                    A++
                  w++
              when "transform"
                E = r._
                R = Oe(E[S], m[S])
                unless R
                  q = r.matrix or new p
                  j =
                    _:
                      transform: E.transform

                    getBBox: ->
                      r.getBBox 1

                  v[S] = [q.a, q.b, q.c, q.d, q.e, q.f]
                  De(j, m[S])
                  m[S] = j._.transform
                  y[S] = [(j.matrix.a - q.a) / x, (j.matrix.b - q.b) / x, (j.matrix.c - q.c) / x, (j.matrix.d - q.d) / x, (j.matrix.e - q.e) / x, (j.matrix.f - q.f) / x]
              when "csv"
                D = M(u[S])[I](_)
                z = M(v[S])[I](_)
                if "clip-rect" is S
                  v[S] = z
                  y[S] = []
                  w = z.length

                  while w--
                    y[S][w] = (D[w] - v[S][w]) / x
                m[S] = D
              else
                D = [][L](u[S])
                z = [][L](v[S])
                y[S] = []
                w = r.paper.customAttributes[S].length

                while w--
                  y[S][w] = ((D[w] or 0) - (z[w] or 0)) / x
        O = u.easing
        V = e.easing_formulas[O]
        unless V
          if V = M(O).match(Z)
          V and 5 is V.length
            X = V
            V = (t) ->
              g t, +X[1], +X[2], +X[3], +X[4], x
          else
            V = fe
        return ln()  if d = u.start or n.start or +new Date
        b =
          anim: n
          percent: i
          timestamp: d
          start: d + (n.del or 0)
          status: 0
          initstatus: a or 0
          stop: not 1
          ms: x
          easing: V
          from: v
          diff: y
          to: m
          el: r
          callback: u.callback
          prev: f
          next: c
          repeat: o or n.times
          origin: r.attr()
          totalOrigin: s

        on_.push(b)
        a and not l and not h and (b.stop = not 0
        b.start = new Date - x * a
        1 is on_.length
        )

        h and (b.start = new Date - b.ms * a)
        1 is on_.length and un(ln)
      t "raphael.anim.start." + r.id, r, n
  m = (t) ->
    e = 0

    while on_.length > e
      on_[e].el.paper is t and on_.splice(e--, 1)
      e++
  e.version = "2.1.0"
  e.eve = t

  y = undefined
  b = undefined
  _ = /[, ]+/
  w =
    circle: 1
    rect: 1
    path: 1
    ellipse: 1
    text: 1
    image: 1

  k = /\{(\d+)\}/g
  B = "hasOwnProperty"
  S =
    doc: document
    win: window

  C =
    was: Object::[B].call(S.win, "Raphael")
    is: S.win.Raphael

  F = ->
    @ca = @customAttributes = {}

  T = "apply"
  L = "concat"
  A = "createTouch" of S.doc
  P = ""
  E = " "
  M = String
  I = "split"
  R = "click dblclick mousedown mousemove mouseout mouseover mouseup touchstart touchmove touchend touchcancel"[I](E)
  q =
    mousedown: "touchstart"
    mousemove: "touchmove"
    mouseup: "touchend"

  j = M::toLowerCase
  D = Math
  z = D.max
  O = D.min
  V = D.abs
  X = D.pow
  Y = D.PI
  G = "number"
  N = "string"
  W = "array"
  $ = Object::toString
  H = (e._ISURL = /^url\(['"]?([^\)]+?)['"]?\)$/i
  /^\s*((#[a-f\d]{6})|(#[a-f\d]{3})|rgba?\(\s*([\d\.]+%?\s*,\s*[\d\.]+%?\s*,\s*[\d\.]+%?(?:\s*,\s*[\d\.]+%?)?)\s*\)|hsba?\(\s*([\d\.]+(?:deg|\xb0|%)?\s*,\s*[\d\.]+%?\s*,\s*[\d\.]+(?:%?\s*,\s*[\d\.]+)?)%?\s*\)|hsla?\(\s*([\d\.]+(?:deg|\xb0|%)?\s*,\s*[\d\.]+%?\s*,\s*[\d\.]+(?:%?\s*,\s*[\d\.]+)?)%?\s*\))\s*$/i
  )
  U =
    NaN: 1
    Infinity: 1
    "-Infinity": 1

  Z = /^(?:cubic-)?bezier\(([^,]+),([^,]+),([^,]+),([^\)]+)\)/
  Q = D.round
  J = parseFloat
  K = parseInt
  te = M::toUpperCase
  ee = e._availableAttrs =
    "arrow-end": "none"
    "arrow-start": "none"
    blur: 0
    "clip-rect": "0 0 1e9 1e9"
    cursor: "default"
    cx: 0
    cy: 0
    fill: "#fff"
    "fill-opacity": 1
    font: "10px \"Arial\""
    "font-family": "\"Arial\""
    "font-size": "10"
    "font-style": "normal"
    "font-weight": 400
    gradient: 0
    height: 0
    href: "http://raphaeljs.com/"
    "letter-spacing": 0
    opacity: 1
    path: "M0,0"
    r: 0
    rx: 0
    ry: 0
    src: ""
    stroke: "#000"
    "stroke-dasharray": ""
    "stroke-linecap": "butt"
    "stroke-linejoin": "butt"
    "stroke-miterlimit": 0
    "stroke-opacity": 1
    "stroke-width": 1
    target: "_blank"
    "text-anchor": "middle"
    title: "Raphael"
    transform: ""
    width: 0
    x: 0
    y: 0

  ne = e._availableAnimAttrs =
    blur: G
    "clip-rect": "csv"
    cx: G
    cy: G
    fill: "colour"
    "fill-opacity": G
    "font-size": G
    height: G
    opacity: G
    path: "path"
    r: G
    rx: G
    ry: G
    stroke: "colour"
    "stroke-opacity": G
    "stroke-width": G
    transform: "transform"
    width: G
    x: G
    y: G

  re = /[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*,[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*/
  ie =
    hs: 1
    rg: 1

  ae = /,?([achlmqrstvxz]),?/g
  se = /([achlmrqstvz])[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029,]*((-?\d*\.?\d*(?:e[\-+]?\d+)?[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*,?[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*)+)/g
  oe = /([rstm])[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029,]*((-?\d*\.?\d*(?:e[\-+]?\d+)?[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*,?[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*)+)/g
  ue = /(-?\d*\.?\d*(?:e[\-+]?\d+)?)[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*,?[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*/g
  le = (e._radial_gradient = /^r(?:\(([^,]+?)[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*,[\x09\x0a\x0b\x0c\x0d\x20\xa0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\u2028\u2029]*([^\)]+?)\))?/
  {}
  )
  he = (t, e) ->
    J(t) - J(e)

  ce = ->

  fe = (t) ->
    t

  pe = e._rectPath = (t, e, n, r, i) ->
    (if i then [["M", t + i, e], ["l", n - 2 * i, 0], ["a", i, i, 0, 0, 1, i, i], ["l", 0, r - 2 * i], ["a", i, i, 0, 0, 1, -i, i], ["l", 2 * i - n, 0], ["a", i, i, 0, 0, 1, -i, -i], ["l", 0, 2 * i - r], ["a", i, i, 0, 0, 1, i, -i], ["z"]] else [["M", t, e], ["l", n, 0], ["l", 0, r], ["l", -n, 0], ["z"]])

  de = (t, e, n, r) ->
    null is r and (r = n)
    [["M", t, e], ["m", 0, -r], ["a", n, r, 0, 1, 1, 0, 2 * r], ["a", n, r, 0, 1, 1, 0, -2 * r], ["z"]]

  ge = e._getPath =
    path: (t) ->
      t.attr "path"

    circle: (t) ->
      e = t.attrs
      de e.cx, e.cy, e.r

    ellipse: (t) ->
      e = t.attrs
      de e.cx, e.cy, e.rx, e.ry

    rect: (t) ->
      e = t.attrs
      pe e.x, e.y, e.width, e.height, e.r

    image: (t) ->
      e = t.attrs
      pe e.x, e.y, e.width, e.height

    text: (t) ->
      e = t._getBBox()
      pe e.x, e.y, e.width, e.height

    set: (t) ->
      e = t._getBBox()
      pe e.x, e.y, e.width, e.height

  xe = e.mapPath = (t, e) ->
    return t  unless e
    n = undefined
    r = undefined
    i = undefined
    a = undefined
    s = undefined
    o = undefined
    u = undefined
    t = Re(t)
    i = 0
    s = t.length

    while s > i
      u = t[i]
      a = 1
      o = u.length

      while o > a
        n = e.x(u[a], u[a + 1])
        r = e.y(u[a], u[a + 1])
        u[a] = n
        u[a + 1] = r
        a += 2
      i++
    t

  if e._g = S
  e.type = (if S.win.SVGAngle or S.doc.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#BasicStructure", "1.1") then "SVG" else "VML")
  "VML" is e.type
    ve = undefined
    me = S.doc.createElement("div")
    return e.type = P  if me.innerHTML = "<v:shape adj=\"1\"/>"
    ve = me.firstChild
    ve.style.behavior = "url(#default#VML)"
    not ve or "object" isnt typeof ve.adj

    me = null
  e.svg = not (e.vml = "VML" is e.type)
  e._Paper = F
  e.fn = b = F:: = e::
  e._id = 0
  e._oid = 0
  e.is = (t, e) ->
    e = j.call(e)
    (if "finite" is e then not U[B](+t) else (if "array" is e then t instanceof Array else "null" is e and null is t or e is typeof t and null isnt t or "object" is e and t is Object(t) or "array" is e and Array.isArray and Array.isArray(t) or $.call(t).slice(8, -1).toLowerCase() is e))

  e.angle = (t, n, r, i, a, s) ->
    if null is a
      o = t - r
      u = n - i
      return (if o or u then (180 + 180 * D.atan2(-u, -o) / Y + 360) % 360 else 0)
    e.angle(t, n, a, s) - e.angle(r, i, a, s)

  e.rad = (t) ->
    t % 360 * Y / 180

  e.deg = (t) ->
    180 * t / Y % 360

  e.snapTo = (t, n, r) ->
    if r = (if e.is(r, "finite") then r else 10)
    e.is(t, W)
      i = t.length

      while i--
        return t[i]  if r >= V(t[i] - n)
    else
      t = +t
      a = n % t
      return n - a  if r > a
      return n - a + t  if a > t - r
    n

  e.createUUID = (t, e) ->
    ->
      "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(t, e).toUpperCase()
  (/[xy]/g, (t) ->
    e = 0 | 16 * D.random()
    n = (if "x" is t then e else 8 | 3 & e)
    n.toString 16
  )
  e.setWindow = (n) ->
    t("raphael.setWindow", e, S.win, n)
    S.win = n
    S.doc = S.win.document
    e._engine.initWin and e._engine.initWin(S.win)


  ye = (t) ->
    if e.vml
      n = undefined
      r = /^\s+|\s+$/g
      try
        a = new ActiveXObject("htmlfile")
        a.write("<body>")
        a.close()
        n = a.body
      catch s
        n = createPopup().document.body
      o = n.createTextRange()
      ye = i((t) ->
        try
          n.style.color = M(t).replace(r, P)
          e = o.queryCommandValue("ForeColor")
          return e = (255 & e) << 16 | 65280 & e | (16711680 & e) >>> 16
          "#" + ("000000" + e.toString(16)).slice(-6)
        catch i
          return "none"
      )
    else
      u = S.doc.createElement("i")
      u.title = "Raphaël Colour Picker"
      u.style.display = "none"
      S.doc.body.appendChild(u)
      ye = i((t) ->
        u.style.color = t
        S.doc.defaultView.getComputedStyle(u, P).getPropertyValue("color")
      )
    ye t

  be = ->
    "hsb(" + [@h, @s, @b] + ")"

  _e = ->
    "hsl(" + [@h, @s, @l] + ")"

  we = ->
    @hex

  ke = (t, n, r) ->
    if null is n and e.is(t, "object") and "r" of t and "g" of t and "b" of t and (r = t.b
    n = t.g
    t = t.r
    )
    null is n and e.is(t, N)
      i = e.getRGB(t)
      t = i.r
      n = i.g
      r = i.b
    (t > 1 or n > 1 or r > 1) and (t /= 255
    n /= 255
    r /= 255
    )
    [t, n, r]

  Be = (t, n, r, i) ->
    t *= 255
    n *= 255
    r *= 255

    a =
      r: t
      g: n
      b: r
      hex: e.rgb(t, n, r)
      toString: we

    e.is(i, "finite") and (a.opacity = i)
    a

  e.color = (t) ->
    n = undefined
    (if e.is(t, "object") and "h" of t and "s" of t and "b" of t then (n = e.hsb2rgb(t)
    t.r = n.r
    t.g = n.g
    t.b = n.b
    t.hex = n.hex
    ) else (if e.is(t, "object") and "h" of t and "s" of t and "l" of t then (n = e.hsl2rgb(t)
    t.r = n.r
    t.g = n.g
    t.b = n.b
    t.hex = n.hex
    ) else (e.is(t, "string") and (t = e.getRGB(t))
    (if e.is(t, "object") and "r" of t and "g" of t and "b" of t then (n = e.rgb2hsl(t)
    t.h = n.h
    t.s = n.s
    t.l = n.l
    n = e.rgb2hsb(t)
    t.v = n.b
    ) else (t = hex: "none"
    t.r = t.g = t.b = t.h = t.s = t.v = t.l = -1
    ))
    )))
    t.toString = we
    t

  e.hsb2rgb = (t, e, n, r) ->
    @is(t, "object") and "h" of t and "s" of t and "b" of t and (n = t.b
    e = t.s
    t = t.h
    r = t.o
    )
    t *= 360

    i = undefined
    a = undefined
    s = undefined
    o = undefined
    u = undefined
    t = t % 360 / 60
    u = n * e
    o = u * (1 - V(t % 2 - 1))
    i = a = s = n - u
    t = ~~t
    i += [u, o, 0, 0, o, u][t]
    a += [o, u, u, o, 0, 0][t]
    s += [0, 0, o, u, u, o][t]
    Be(i, a, s, r)

  e.hsl2rgb = (t, e, n, r) ->
    @is(t, "object") and "h" of t and "s" of t and "l" of t and (n = t.l
    e = t.s
    t = t.h
    )
    (t > 1 or e > 1 or n > 1) and (t /= 360
    e /= 100
    n /= 100
    )
    t *= 360

    i = undefined
    a = undefined
    s = undefined
    o = undefined
    u = undefined
    t = t % 360 / 60
    u = 2 * e * ((if .5 > n then n else 1 - n))
    o = u * (1 - V(t % 2 - 1))
    i = a = s = n - u / 2
    t = ~~t
    i += [u, o, 0, 0, o, u][t]
    a += [o, u, u, o, 0, 0][t]
    s += [0, 0, o, u, u, o][t]
    Be(i, a, s, r)

  e.rgb2hsb = (t, e, n) ->
    n = ke(t, e, n)
    t = n[0]
    e = n[1]
    n = n[2]

    r = undefined
    i = undefined
    a = undefined
    s = undefined
    a = z(t, e, n)
    s = a - O(t, e, n)
    r = (if 0 is s then null else (if a is t then (e - n) / s else (if a is e then (n - t) / s + 2 else (t - e) / s + 4)))
    r = 60 * ((r + 360) % 6) / 360
    i = (if 0 is s then 0 else s / a)

      h: r
      s: i
      b: a
      toString: be

  e.rgb2hsl = (t, e, n) ->
    n = ke(t, e, n)
    t = n[0]
    e = n[1]
    n = n[2]

    r = undefined
    i = undefined
    a = undefined
    s = undefined
    o = undefined
    u = undefined
    s = z(t, e, n)
    o = O(t, e, n)
    u = s - o
    r = (if 0 is u then null else (if s is t then (e - n) / u else (if s is e then (n - t) / u + 2 else (t - e) / u + 4)))
    r = 60 * ((r + 360) % 6) / 360
    a = (s + o) / 2
    i = (if 0 is u then 0 else (if .5 > a then u / (2 * a) else u / (2 - 2 * a)))

      h: r
      s: i
      l: a
      toString: _e

  e._path2string = ->
    @join(",").replace ae, "$1"

  e._preload = (t, e) ->
    n = S.doc.createElement("img")
    n.style.cssText = "position:absolute;left:-9999em;top:-9999em"
    n.onload = ->
      e.call(this)
      @onload = null
      S.doc.body.removeChild(this)

    n.onerror = ->
      S.doc.body.removeChild this

    S.doc.body.appendChild(n)
    n.src = t

  e.getRGB = i((t) ->
    if not t or (t = M(t)).indexOf("-") + 1
      return (
        r: -1
        g: -1
        b: -1
        hex: "none"
        error: 1
        toString: a
      )
    if "none" is t
      return (
        r: -1
        g: -1
        b: -1
        hex: "none"
        toString: a
      )
    not (ie[B](t.toLowerCase().substring(0, 2)) or "#" is t.charAt()) and (t = ye(t))
    n = undefined
    r = undefined
    i = undefined
    s = undefined
    o = undefined
    u = undefined
    l = t.match(H)
    (if l then (l[2] and (i = K(l[2].substring(5), 16)
    r = K(l[2].substring(3, 5), 16)
    n = K(l[2].substring(1, 3), 16)
    )
    l[3] and (i = K((o = l[3].charAt(3)) + o, 16)
    r = K((o = l[3].charAt(2)) + o, 16)
    n = K((o = l[3].charAt(1)) + o, 16)
    )
    l[4] and (u = l[4][I](re)
    n = J(u[0])
    "%" is u[0].slice(-1) and (n *= 2.55)
    r = J(u[1])
    "%" is u[1].slice(-1) and (r *= 2.55)
    i = J(u[2])
    "%" is u[2].slice(-1) and (i *= 2.55)
    "rgba" is l[1].toLowerCase().slice(0, 4) and (s = J(u[3]))
    u[3] and "%" is u[3].slice(-1) and (s /= 100)
    )
    (if l[5] then (u = l[5][I](re)
    n = J(u[0])
    "%" is u[0].slice(-1) and (n *= 2.55)
    r = J(u[1])
    "%" is u[1].slice(-1) and (r *= 2.55)
    i = J(u[2])
    "%" is u[2].slice(-1) and (i *= 2.55)
    ("deg" is u[0].slice(-3) or "°" is u[0].slice(-1)) and (n /= 360)
    "hsba" is l[1].toLowerCase().slice(0, 4) and (s = J(u[3]))
    u[3] and "%" is u[3].slice(-1) and (s /= 100)
    e.hsb2rgb(n, r, i, s)
    ) else (if l[6] then (u = l[6][I](re)
    n = J(u[0])
    "%" is u[0].slice(-1) and (n *= 2.55)
    r = J(u[1])
    "%" is u[1].slice(-1) and (r *= 2.55)
    i = J(u[2])
    "%" is u[2].slice(-1) and (i *= 2.55)
    ("deg" is u[0].slice(-3) or "°" is u[0].slice(-1)) and (n /= 360)
    "hsla" is l[1].toLowerCase().slice(0, 4) and (s = J(u[3]))
    u[3] and "%" is u[3].slice(-1) and (s /= 100)
    e.hsl2rgb(n, r, i, s)
    ) else (l =
      r: n
      g: r
      b: i
      toString: a

    l.hex = "#" + (16777216 | i | r << 8 | n << 16).toString(16).slice(1)
    e.is(s, "finite") and (l.opacity = s)
    l
    )))
    ) else
      r: -1
      g: -1
      b: -1
      hex: "none"
      error: 1
      toString: a
    )
  , e)
  e.hsb = i((t, n, r) ->
    e.hsb2rgb(t, n, r).hex
  )
  e.hsl = i((t, n, r) ->
    e.hsl2rgb(t, n, r).hex
  )
  e.rgb = i((t, e, n) ->
    "#" + (16777216 | n | e << 8 | t << 16).toString(16).slice(1)
  )
  e.getColor = (t) ->
    e = @getColor.start = @getColor.start or
      h: 0
      s: 1
      b: t or .75

    n = @hsb2rgb(e.h, e.s, e.b)
    e.h += .075
    e.h > 1 and (e.h = 0
    e.s -= .2
    0 >= e.s and (@getColor.start =
      h: 0
      s: 1
      b: e.b
    )
    )
    n.hex

  e.getColor.reset = ->
    delete @start

  e.parsePathString = (t) ->
    return null  unless t
    n = Se(t)
    return Fe(n.arr)  if n.arr
    r =
      a: 7
      c: 6
      h: 1
      l: 2
      m: 2
      r: 4
      q: 4
      s: 4
      t: 2
      v: 1
      z: 0

    i = []
    e.is(t, W) and e.is(t[0], W) and (i = Fe(t))
    i.length or M(t).replace(se, (t, e, n) ->
      a = []
      s = e.toLowerCase()
      if n.replace(ue, (t, e) ->
        e and a.push(+e)
      )
      "m" is s and a.length > 2 and (i.push([e][L](a.splice(0, 2)))
      s = "l"
      e = (if "m" is e then "l" else "L")
      )
      "r" is s
        i.push [e][L](a)
      else
        while a.length >= r[s] and (i.push([e][L](a.splice(0, r[s])))
        r[s]
        )
    )
    i.toString = e._path2string
    n.arr = Fe(i)
    i

  e.parseTransformString = i((t) ->
    return null  unless t
    n = []
    e.is(t, W) and e.is(t[0], W) and (n = Fe(t))
    n.length or M(t).replace(oe, (t, e, r) ->
      i = []
      j.call(e)
      r.replace(ue, (t, e) ->
        e and i.push(+e)
      )
      n.push([e][L](i))
    )
    n.toString = e._path2string
    n
  )

  Se = (t) ->
    e = Se.ps = Se.ps or {}
    (if e[t] then e[t].sleep = 100 else e[t] = sleep: 100)
    setTimeout(->
      for n of e
        e[B](n) and n isnt t and (e[n].sleep--
        not e[n].sleep and delete e[n]

        )
    )
    e[t]

  e.findDotsAtSegment = (t, e, n, r, i, a, s, o, u) ->
    l = 1 - u
    h = X(l, 3)
    c = X(l, 2)
    f = u * u
    p = f * u
    d = h * t + 3 * c * u * n + 3 * l * u * u * i + p * s
    g = h * e + 3 * c * u * r + 3 * l * u * u * a + p * o
    x = t + 2 * u * (n - t) + f * (i - 2 * n + t)
    v = e + 2 * u * (r - e) + f * (a - 2 * r + e)
    m = n + 2 * u * (i - n) + f * (s - 2 * i + n)
    y = r + 2 * u * (a - r) + f * (o - 2 * a + r)
    b = l * t + u * n
    _ = l * e + u * r
    w = l * i + u * s
    k = l * a + u * o
    B = 90 - 180 * D.atan2(x - m, v - y) / Y
    (x > m or y > v) and (B += 180)

      x: d
      y: g
      m:
        x: x
        y: v

      n:
        x: m
        y: y

      start:
        x: b
        y: _

      end:
        x: w
        y: k

      alpha: B

  e.bezierBBox = (t, n, r, i, a, s, o, u) ->
    e.is(t, "array") or (t = [t, n, r, i, a, s, o, u])
    l = Ie.apply(null, t)
    x: l.min.x
    y: l.min.y
    x2: l.max.x
    y2: l.max.y
    width: l.max.x - l.min.x
    height: l.max.y - l.min.y

  e.isPointInsideBBox = (t, e, n) ->
    e >= t.x and t.x2 >= e and n >= t.y and t.y2 >= n

  e.isBBoxIntersect = (t, n) ->
    r = e.isPointInsideBBox
    r(n, t.x, t.y) or r(n, t.x2, t.y) or r(n, t.x, t.y2) or r(n, t.x2, t.y2) or r(t, n.x, n.y) or r(t, n.x2, n.y) or r(t, n.x, n.y2) or r(t, n.x2, n.y2) or (t.x < n.x2 and t.x > n.x or n.x < t.x2 and n.x > t.x) and (t.y < n.y2 and t.y > n.y or n.y < t.y2 and n.y > t.y)

  e.pathIntersection = (t, e) ->
    f t, e

  e.pathIntersectionNumber = (t, e) ->
    f t, e, 1

  e.isPointInsidePath = (t, n, r) ->
    i = e.pathBBox(t)
    e.isPointInsideBBox(i, n, r) and 1 is f(t, [["M", n, r], ["H", i.x2 + 10]], 1) % 2

  e._removedFactory = (e) ->
    ->
      t "raphael.log", null, "Raphaël: you are calling to method “" + e + "” of removed object", e


  Ce = e.pathBBox = (t) ->
    e = Se(t)
    return n(e.bbox)  if e.bbox
    unless t
      return (
        x: 0
        y: 0
        width: 0
        height: 0
        x2: 0
        y2: 0
      )
    t = Re(t)
    r = undefined
    i = 0
    a = 0
    s = []
    o = []
    u = 0
    l = t.length

    while l > u
      unless r = t[u]
      "M" is r[0]
        h = Ie(i, a, r[1], r[2], r[3], r[4], r[5], r[6])
        s = s[L](h.min.x, h.max.x)
        o = o[L](h.min.y, h.max.y)
        i = r[5]
        a = r[6]
      u++
    c = O[T](0, s)
    f = O[T](0, o)
    p = z[T](0, s)
    d = z[T](0, o)
    g = p - c
    x = d - f
    v =
      x: c
      y: f
      x2: p
      y2: d
      width: g
      height: x
      cx: c + g / 2
      cy: f + x / 2

    e.bbox = n(v)
    v

  Fe = (t) ->
    r = n(t)
    r.toString = e._path2string
    r

  Te = e._pathToRelative = (t) ->
    n = Se(t)
    return Fe(n.rel)  if n.rel
    e.is(t, W) and e.is(t and t[0], W) or (t = e.parsePathString(t))
    r = []
    i = 0
    a = 0
    s = 0
    o = 0
    u = 0
    "M" is t[0][0] and (i = t[0][1]
    a = t[0][2]
    s = i
    o = a
    u++
    r.push(["M", i, a])
    )
    l = u
    h = t.length

    while h > l
      c = r[l] = []
      f = t[l]
      if f[0] is j.call(f[0])
        c = r[l] = []
        "m" is f[0] and (s = f[1] + i
        o = f[2] + a
        )

        g = 0
        x = f.length

        while x > g
          r[l][g] = f[g]
          g++
      v = r[l].length
      switch r[l][0]
        when "z"
          i = s
          a = o
        when "h"
          i += +r[l][v - 1]
        when "v"
          a += +r[l][v - 1]
        else
          i += +r[l][v - 2]
          a += +r[l][v - 1]
      l++
    r.toString = e._path2string
    n.rel = Fe(r)
    r

  Le = e._pathToAbsolute = (t) ->
    n = Se(t)
    return Fe(n.abs)  if n.abs
    return [["M", 0, 0]]  if e.is(t, W) and e.is(t and t[0], W) or (t = e.parsePathString(t))
    not t or not t.length

    r = []
    i = 0
    a = 0
    o = 0
    u = 0
    l = 0
    "M" is t[0][0] and (i = +t[0][1]
    a = +t[0][2]
    o = i
    u = a
    l++
    r[0] = ["M", i, a]
    )
    h = undefined
    c = undefined
    f = 3 is t.length and "M" is t[0][0] and "R" is t[1][0].toUpperCase() and "Z" is t[2][0].toUpperCase()
    p = l
    d = t.length

    while d > p
      if r.push(h = [])
      c = t[p]
      c[0] isnt te.call(c[0])
        switch h[0] = te.call(c[0])
        h[0]

          when "A"
            h[1] = c[1]
            h[2] = c[2]
            h[3] = c[3]
            h[4] = c[4]
            h[5] = c[5]
            h[6] = +(c[6] + i)
            h[7] = +(c[7] + a)
          when "V"
            h[1] = +c[1] + a
          when "H"
            h[1] = +c[1] + i
          when "R"
            g = [i, a][L](c.slice(1))
            x = 2
            v = g.length

            while v > x
              g[x] = +g[x] + i
              g[++x] = +g[x] + a
              x++
            r.pop()
            r = r[L](s(g, f))
          when "M"
            o = +c[1] + i
            u = +c[2] + a
          else
            x = 1
            v = c.length

            while v > x
              h[x] = +c[x] + ((if x % 2 then i else a))
              x++
      else if "R" is c[0]
        g = [i, a][L](c.slice(1))
        r.pop()
        r = r[L](s(g, f))
        h = ["R"][L](c.slice(-2))
      else
        m = 0
        y = c.length

        while y > m
          h[m] = c[m]
          m++
      switch h[0]
        when "Z"
          i = o
          a = u
        when "H"
          i = h[1]
        when "V"
          a = h[1]
        when "M"
          o = h[h.length - 2]
          u = h[h.length - 1]
        else
          i = h[h.length - 2]
          a = h[h.length - 1]
      p++
    r.toString = e._path2string
    n.abs = Fe(r)
    r

  Ae = (t, e, n, r) ->
    [t, e, n, r, n, r]

  Pe = (t, e, n, r, i, a) ->
    s = 1 / 3
    o = 2 / 3
    [s * t + o * n, s * e + o * r, s * i + o * n, s * a + o * r, i, a]

  Ee = (t, e, n, r, a, s, o, u, l, h) ->
    c = undefined
    f = 120 * Y / 180
    p = Y / 180 * (+a or 0)
    d = []
    g = i((t, e, n) ->
      r = t * D.cos(n) - e * D.sin(n)
      i = t * D.sin(n) + e * D.cos(n)
      x: r
      y: i
    )
    unless h
      c = g(t, e, -p)
      t = c.x
      e = c.y
      c = g(u, l, -p)
      u = c.x
      l = c.y

      x = (D.cos(Y / 180 * a)
      D.sin(Y / 180 * a)
      (t - u) / 2
      )
      v = (e - l) / 2
      m = x * x / (n * n) + v * v / (r * r)
      m > 1 and (m = D.sqrt(m)
      n = m * n
      r = m * r
      )
      y = n * n
      b = r * r
      _ = ((if s is o then -1 else 1)) * D.sqrt(V((y * b - y * v * v - b * x * x) / (y * v * v + b * x * x)))
      w = _ * n * v / r + (t + u) / 2
      k = _ * -r * x / n + (e + l) / 2
      B = D.asin(((e - k) / r).toFixed(9))
      S = D.asin(((l - k) / r).toFixed(9))
      B = (if w > t then Y - B else B)
      S = (if w > u then Y - S else S)
      0 > B and (B = 2 * Y + B)
      0 > S and (S = 2 * Y + S)
      o and B > S and (B -= 2 * Y)
      not o and S > B and (S -= 2 * Y)
    C = S - B
    if V(C) > f
      F = S
      T = u
      A = l
      S = B + f * ((if o and S > B then 1 else -1))
      u = w + n * D.cos(S)
      l = k + r * D.sin(S)
      d = Ee(u, l, n, r, a, 0, o, T, A, [S, F, w, k])
    C = S - B
    P = D.cos(B)
    E = D.sin(B)
    M = D.cos(S)
    R = D.sin(S)
    q = D.tan(C / 4)
    j = 4 / 3 * n * q
    z = 4 / 3 * r * q
    O = [t, e]
    X = [t + j * E, e - z * P]
    G = [u + j * R, l - z * M]
    N = [u, l]
    return [X, G, N][L](d)  if X[0] = 2 * O[0] - X[0]
    X[1] = 2 * O[1] - X[1]
    h

    d = [X, G, N][L](d).join()[I](",")
    W = []
    $ = 0
    H = d.length

    while H > $
      W[$] = (if $ % 2 then g(d[$ - 1], d[$], p).y else g(d[$], d[$ + 1], p).x)
      $++
    W

  Me = (t, e, n, r, i, a, s, o, u) ->
    l = 1 - u
    x: X(l, 3) * t + 3 * X(l, 2) * u * n + 3 * l * u * u * i + X(u, 3) * s
    y: X(l, 3) * e + 3 * X(l, 2) * u * r + 3 * l * u * u * a + X(u, 3) * o

  Ie = i((t, e, n, r, i, a, s, o) ->
    u = undefined
    l = i - 2 * n + t - (s - 2 * i + n)
    h = 2 * (n - t) - 2 * (i - n)
    c = t - n
    f = (-h + D.sqrt(h * h - 4 * l * c)) / 2 / l
    p = (-h - D.sqrt(h * h - 4 * l * c)) / 2 / l
    d = [e, o]
    g = [t, s]
    V(f) > "1e12" and (f = .5)
    V(p) > "1e12" and (p = .5)
    f > 0 and 1 > f and (u = Me(t, e, n, r, i, a, s, o, f)
    g.push(u.x)
    d.push(u.y)
    )
    p > 0 and 1 > p and (u = Me(t, e, n, r, i, a, s, o, p)
    g.push(u.x)
    d.push(u.y)
    )
    l = a - 2 * r + e - (o - 2 * a + r)
    h = 2 * (r - e) - 2 * (a - r)
    c = e - r
    f = (-h + D.sqrt(h * h - 4 * l * c)) / 2 / l
    p = (-h - D.sqrt(h * h - 4 * l * c)) / 2 / l
    V(f) > "1e12" and (f = .5)
    V(p) > "1e12" and (p = .5)
    f > 0 and 1 > f and (u = Me(t, e, n, r, i, a, s, o, f)
    g.push(u.x)
    d.push(u.y)
    )
    p > 0 and 1 > p and (u = Me(t, e, n, r, i, a, s, o, p)
    g.push(u.x)
    d.push(u.y)
    )

      min:
        x: O[T](0, g)
        y: O[T](0, d)

      max:
        x: z[T](0, g)
        y: z[T](0, d)
  )
  Re = e._path2curve = i((t, e) ->
    n = not e and Se(t)
    return Fe(n.curve)  if not e and n.curve
    r = Le(t)
    i = e and Le(e)
    a =
      x: 0
      y: 0
      bx: 0
      by: 0
      X: 0
      Y: 0
      qx: null
      qy: null

    s =
      x: 0
      y: 0
      bx: 0
      by: 0
      X: 0
      Y: 0
      qx: null
      qy: null

    o = ((t, e) ->
      n = undefined
      r = undefined
      return ["C", e.x, e.y, e.x, e.y, e.x, e.y]  unless t
      switch (t[0] not of
        T: 1
        Q: 1
      ) and (e.qx = e.qy = null)
      t[0]

        when "M"
          e.X = t[1]
          e.Y = t[2]
        when "A"
          t = ["C"][L](Ee[T](0, [e.x, e.y][L](t.slice(1))))
        when "S"
          n = e.x + (e.x - (e.bx or e.x))
          r = e.y + (e.y - (e.by or e.y))
          t = ["C", n, r][L](t.slice(1))
        when "T"
          e.qx = e.x + (e.x - (e.qx or e.x))
          e.qy = e.y + (e.y - (e.qy or e.y))
          t = ["C"][L](Pe(e.x, e.y, e.qx, e.qy, t[1], t[2]))
        when "Q"
          e.qx = t[1]
          e.qy = t[2]
          t = ["C"][L](Pe(e.x, e.y, t[1], t[2], t[3], t[4]))
        when "L"
          t = ["C"][L](Ae(e.x, e.y, t[1], t[2]))
        when "H"
          t = ["C"][L](Ae(e.x, e.y, t[1], e.y))
        when "V"
          t = ["C"][L](Ae(e.x, e.y, e.x, t[1]))
        when "Z"
          t = ["C"][L](Ae(e.x, e.y, e.X, e.Y))
      t
    )
    u = (t, e) ->
      if t[e].length > 7
        t[e].shift()
        n = t[e]

        while n.length
          t.splice e++, 0, ["C"][L](n.splice(0, 6))
        t.splice(e, 1)
        c = z(r.length, i and i.length or 0)

    l = (t, e, n, a, s) ->
      t and e and "M" is t[s][0] and "M" isnt e[s][0] and (e.splice(s, 0, ["M", a.x, a.y])
      n.bx = 0
      n.by = 0
      n.x = t[s][1]
      n.y = t[s][2]
      c = z(r.length, i and i.length or 0)
      )

    h = 0
    c = z(r.length, i and i.length or 0)

    while c > h
      r[h] = o(r[h], a)
      u(r, h)
      i and (i[h] = o(i[h], s))
      i and u(i, h)
      l(r, i, a, s, h)
      l(i, r, s, a, h)

      f = r[h]
      p = i and i[h]
      d = f.length
      g = i and p.length
      a.x = f[d - 2]
      a.y = f[d - 1]
      a.bx = J(f[d - 4]) or a.x
      a.by = J(f[d - 3]) or a.y
      s.bx = i and (J(p[g - 4]) or s.x)
      s.by = i and (J(p[g - 3]) or s.y)
      s.x = i and p[g - 2]
      s.y = i and p[g - 1]
      h++
    i or (n.curve = Fe(r))
    (if i then [r, i] else r)
  , null, Fe)
  qe = (e._parseDots = i((t) ->
    n = []
    r = 0
    i = t.length

    while i > r
      a = {}
      s = t[r].match(/^([^:]*):?([\d\.]*)/)
      return null  if a.color = e.getRGB(s[1])
      a.color.error

      a.color = a.color.hex
      s[2] and (a.offset = s[2] + "%")
      n.push(a)
      r++
    r = 1
    i = n.length - 1

    while i > r
      unless n[r].offset
        o = J(n[r - 1].offset or 0)
        u = 0
        l = r + 1

        while i > l
          if n[l].offset
            u = n[l].offset
            break
          l++
        u or (u = 100
        l = i
        )
        u = J(u)

        h = (u - o) / (l - r + 1)

        while l > r
          o += h
          n[r].offset = o + "%"
          r++
      r++
    n
  )
  e._tear = (t, e) ->
    t is e.top and (e.top = t.prev)
    t is e.bottom and (e.bottom = t.next)
    t.next and (t.next.prev = t.prev)
    t.prev and (t.prev.next = t.next)

  )
  je = (e._tofront = (t, e) ->
    e.top isnt t and (qe(t, e)
    t.next = null
    t.prev = e.top
    e.top.next = t
    e.top = t
    )

  e._toback = (t, e) ->
    e.bottom isnt t and (qe(t, e)
    t.next = e.bottom
    t.prev = null
    e.bottom.prev = t
    e.bottom = t
    )

  e._insertafter = (t, e, n) ->
    qe(t, n)
    e is n.top and (n.top = t)
    e.next and (e.next.prev = t)
    t.next = e.next
    t.prev = e
    e.next = t

  e._insertbefore = (t, e, n) ->
    qe(t, n)
    e is n.bottom and (n.bottom = t)
    e.prev and (e.prev.next = t)
    t.prev = e.prev
    e.prev = t
    t.next = e

  e.toMatrix = (t, e) ->
    n = Ce(t)
    r =
      _:
        transform: P

      getBBox: ->
        n

    De(r, e)
    r.matrix

  )
  De = (e.transformPath = (t, e) ->
    xe t, je(t, e)

  e._extractTransform = (t, n) ->
    return t._.transform  if null is n
    n = M(n).replace(/\.{3}|\u2026/g, t._.transform or P)
    r = e.parseTransformString(n)
    i = 0
    a = 0
    s = 0
    o = 1
    u = 1
    l = t._
    h = new p
    if l.transform = r or []
    r
      c = 0
      f = r.length

      while f > c
        d = undefined
        g = undefined
        x = undefined
        v = undefined
        m = undefined
        y = r[c]
        b = y.length
        _ = M(y[0]).toLowerCase()
        w = y[0] isnt _
        k = (if w then h.invert() else 0)
        (if "t" is _ and 3 is b then (if w then (d = k.x(0, 0)
        g = k.y(0, 0)
        x = k.x(y[1], y[2])
        v = k.y(y[1], y[2])
        h.translate(x - d, v - g)
        ) else h.translate(y[1], y[2])) else (if "r" is _ then (if 2 is b then (m = m or t.getBBox(1)
        h.rotate(y[1], m.x + m.width / 2, m.y + m.height / 2)
        i += y[1]
        ) else 4 is b and ((if w then (x = k.x(y[2], y[3])
        v = k.y(y[2], y[3])
        h.rotate(y[1], x, v)
        ) else h.rotate(y[1], y[2], y[3]))
        i += y[1]
        )) else (if "s" is _ then (if 2 is b or 3 is b then (m = m or t.getBBox(1)
        h.scale(y[1], y[b - 1], m.x + m.width / 2, m.y + m.height / 2)
        o *= y[1]
        u *= y[b - 1]
        ) else 5 is b and ((if w then (x = k.x(y[3], y[4])
        v = k.y(y[3], y[4])
        h.scale(y[1], y[2], x, v)
        ) else h.scale(y[1], y[2], y[3], y[4]))
        o *= y[1]
        u *= y[2]
        )) else "m" is _ and 7 is b and h.add(y[1], y[2], y[3], y[4], y[5], y[6]))))
        l.dirtyT = 1
        t.matrix = h
        c++
    t.matrix = h
    l.sx = o
    l.sy = u
    l.deg = i
    l.dx = a = h.e
    l.dy = s = h.f
    (if 1 is o and 1 is u and not i and l.bbox then (l.bbox.x += +a
    l.bbox.y += +s
    ) else l.dirtyT = 1)

  )
  ze = (t) ->
    e = t[0]
    switch e.toLowerCase()
      when "t"
        [e, 0, 0]
      when "m"
        [e, 1, 0, 0, 1, 0, 0]
      when "r"
        (if 4 is t.length then [e, 0, t[2], t[3]] else [e, 0])
      when "s"
        (if 5 is t.length then [e, 1, 1, t[3], t[4]] else (if 3 is t.length then [e, 1, 1] else [e, 1]))

  Oe = e._equaliseTransform = (t, n) ->
    n = M(n).replace(/\.{3}|\u2026/g, t)
    t = e.parseTransformString(t) or []
    n = e.parseTransformString(n) or []

    r = undefined
    i = undefined
    a = undefined
    s = undefined
    o = z(t.length, n.length)
    u = []
    l = []
    h = 0

    while o > h
      return  if a = t[h] or ze(n[h])
      s = n[h] or ze(a)
      a[0] isnt s[0] or "r" is a[0].toLowerCase() and (a[2] isnt s[2] or a[3] isnt s[3]) or "s" is a[0].toLowerCase() and (a[3] isnt s[3] or a[4] isnt s[4])

      u[h] = []
      l[h] = []
      r = 0
      i = z(a.length, s.length)

      while i > r
        r of a and (u[h][r] = a[r])
        r of s and (l[h][r] = s[r])
        r++
      h++
    from: u
    to: l

  e._getContainer = (t, n, r, i) ->
    a = undefined
    a = (if null isnt i or e.is(t, "object") then t else S.doc.getElementById(t))
    (if null isnt a then (if a.tagName then (if null is n then
      container: a
      width: a.style.pixelWidth or a.offsetWidth
      height: a.style.pixelHeight or a.offsetHeight
     else
      container: a
      width: n
      height: r
    ) else
      container: 1
      x: t
      y: n
      width: r
      height: i
    ) else undefined)

  e.pathToRelative = Te
  e._engine = {}
  e.path2curve = Re
  e.matrix = (t, e, n, r, i, a) ->
    new p(t, e, n, r, i, a)

  (t) ->
    n = (t) ->
      t[0] * t[0] + t[1] * t[1]
    r = (t) ->
      e = D.sqrt(n(t))
      t[0] and (t[0] /= e)
      t[1] and (t[1] /= e)
    t.add = (t, e, n, r, i, a) ->
      s = undefined
      o = undefined
      u = undefined
      l = undefined
      h = [[], [], []]
      c = [[@a, @c, @e], [@b, @d, @f], [0, 0, 1]]
      f = [[t, n, i], [e, r, a], [0, 0, 1]]
      t and t instanceof p and (f = [[t.a, t.c, t.e], [t.b, t.d, t.f], [0, 0, 1]])
      s = 0

      while 3 > s
        o = 0
        while 3 > o
          l = 0
          u = 0

          while 3 > u
            l += c[s][u] * f[u][o]
            u++
          h[s][o] = l
          o++
        s++
      @a = h[0][0]
      @b = h[1][0]
      @c = h[0][1]
      @d = h[1][1]
      @e = h[0][2]
      @f = h[1][2]

    t.invert = ->
      t = this
      e = t.a * t.d - t.b * t.c
      new p(t.d / e, -t.b / e, -t.c / e, t.a / e, (t.c * t.f - t.d * t.e) / e, (t.b * t.e - t.a * t.f) / e)

    t.clone = ->
      new p(@a, @b, @c, @d, @e, @f)

    t.translate = (t, e) ->
      @add 1, 0, 0, 1, t, e

    t.scale = (t, e, n, r) ->
      null is e and (e = t)
      (n or r) and @add(1, 0, 0, 1, n, r)
      @add(t, 0, 0, e, 0, 0)
      (n or r) and @add(1, 0, 0, 1, -n, -r)

    t.rotate = (t, n, r) ->
      t = e.rad(t)
      n = n or 0
      r = r or 0

      i = +D.cos(t).toFixed(9)
      a = +D.sin(t).toFixed(9)
      @add(i, a, -a, i, n, r)
      @add(1, 0, 0, 1, -n, -r)

    t.x = (t, e) ->
      t * @a + e * @c + @e

    t.y = (t, e) ->
      t * @b + e * @d + @f

    t.get = (t) ->
      +this[M.fromCharCode(97 + t)].toFixed(4)

    t.toString = ->
      (if e.svg then "matrix(" + [@get(0), @get(1), @get(2), @get(3), @get(4), @get(5)].join() + ")" else [@get(0), @get(2), @get(1), @get(3), 0, 0].join())

    t.toFilter = ->
      "progid:DXImageTransform.Microsoft.Matrix(M11=" + @get(0) + ", M12=" + @get(2) + ", M21=" + @get(1) + ", M22=" + @get(3) + ", Dx=" + @get(4) + ", Dy=" + @get(5) + ", sizingmethod='auto expand')"

    t.offset = ->
      [@e.toFixed(4), @f.toFixed(4)]

    t.split = ->
      t = {}
      t.dx = @e
      t.dy = @f

      i = [[@a, @c], [@b, @d]]
      t.scalex = D.sqrt(n(i[0]))
      r(i[0])
      t.shear = i[0][0] * i[1][0] + i[0][1] * i[1][1]
      i[1] = [i[1][0] - i[0][0] * t.shear, i[1][1] - i[0][1] * t.shear]
      t.scaley = D.sqrt(n(i[1]))
      r(i[1])
      t.shear /= t.scaley

      a = -i[0][1]
      s = i[1][1]
      (if 0 > s then (t.rotate = e.deg(D.acos(s))
      0 > a and (t.rotate = 360 - t.rotate)
      ) else t.rotate = e.deg(D.asin(a)))
      t.isSimple = not (+t.shear.toFixed(9) or t.scalex.toFixed(9) isnt t.scaley.toFixed(9) and t.rotate)
      t.isSuperSimple = not +t.shear.toFixed(9) and t.scalex.toFixed(9) is t.scaley.toFixed(9) and not t.rotate
      t.noRotation = not +t.shear.toFixed(9) and not t.rotate
      t

    t.toTransformString = (t) ->
      e = t or this[I]()
      (if e.isSimple then (e.scalex = +e.scalex.toFixed(4)
      e.scaley = +e.scaley.toFixed(4)
      e.rotate = +e.rotate.toFixed(4)
      ((if e.dx or e.dy then "t" + [e.dx, e.dy] else P)) + ((if 1 isnt e.scalex or 1 isnt e.scaley then "s" + [e.scalex, e.scaley, 0, 0] else P)) + ((if e.rotate then "r" + [e.rotate, 0, 0] else P))
      ) else "m" + [@get(0), @get(1), @get(2), @get(3), @get(4), @get(5)])
  (p::)

  Ve = navigator.userAgent.match(/Version\/(.*?)\s/) or navigator.userAgent.match(/Chrome\/(\d+)/)
  b.safari = (if "Apple Computer, Inc." is navigator.vendor and (Ve and 4 > Ve[1] or "iP" is navigator.platform.slice(0, 2)) or "Google Inc." is navigator.vendor and Ve and 8 > Ve[1] then ->
    t = @rect(-99, -99, @width + 99, @height + 99).attr(stroke: "none")
    setTimeout ->
      t.remove()

   else ce)
  Xe = ->
    @returnValue = not 1

  Ye = ->
    @originalEvent.preventDefault()

  Ge = ->
    @cancelBubble = not 0

  Ne = ->
    @originalEvent.stopPropagation()

  We = ->
    (if S.doc.addEventListener then (t, e, n, r) ->
      i = (if A and q[e] then q[e] else e)
      a = (i) ->
        a = S.doc.documentElement.scrollTop or S.doc.body.scrollTop
        s = S.doc.documentElement.scrollLeft or S.doc.body.scrollLeft
        o = i.clientX + s
        u = i.clientY + a
        if A and q[B](e)
          l = 0
          h = i.targetTouches and i.targetTouches.length

          while h > l
            if i.targetTouches[l].target is t
              c = i
              i = i.targetTouches[l]
              i.originalEvent = c
              i.preventDefault = Ye
              i.stopPropagation = Ne

              break
            l++
        n.call r, i, o, u

      t.addEventListener(i, a, not 1)
      ->
        t.removeEventListener(i, a, not 1)
        not 0
     else (if S.doc.attachEvent then (t, e, n, r) ->
      i = (t) ->
        t = t or S.win.event
        e = S.doc.documentElement.scrollTop or S.doc.body.scrollTop
        i = S.doc.documentElement.scrollLeft or S.doc.body.scrollLeft
        a = t.clientX + i
        s = t.clientY + e
        t.preventDefault = t.preventDefault or Xe
        t.stopPropagation = t.stopPropagation or Ge
        n.call(r, t, a, s)

      t.attachEvent "on" + e, i
      a = ->
        t.detachEvent("on" + e, i)
        not 0

      a
     else undefined))
  ()
  $e = []
  He = (e) ->
    n = undefined
    r = e.clientX
    i = e.clientY
    a = S.doc.documentElement.scrollTop or S.doc.body.scrollTop
    s = S.doc.documentElement.scrollLeft or S.doc.body.scrollLeft
    o = $e.length

    while o--
      if n = $e[o]
      A
        u = undefined
        l = e.touches.length

        while l--
          if u = e.touches[l]
          u.identifier is n.el._drag.id
            r = u.clientX
            i = u.clientY
            ((if e.originalEvent then e.originalEvent else e)).preventDefault()

            break
      else
        e.preventDefault()
      h = undefined
      c = n.el.node
      f = c.nextSibling
      p = c.parentNode
      d = c.style.display
      S.win.opera and p.removeChild(c)
      c.style.display = "none"
      h = n.el.paper.getElementByPoint(r, i)
      c.style.display = d
      S.win.opera and ((if f then p.insertBefore(c, f) else p.appendChild(c)))
      h and t("raphael.drag.over." + n.el.id, n.el, h)
      r += s
      i += a
      t("raphael.drag.move." + n.el.id, n.move_scope or n.el, r - n.el._drag.x, i - n.el._drag.y, r, i, e)

  Ue = (n) ->
    e.unmousemove(He).unmouseup Ue
    r = undefined
    i = $e.length

    while i--
      r = $e[i]
      r.el._drag = {}
      t("raphael.drag.end." + r.el.id, r.end_scope or r.start_scope or r.move_scope or r.el, n)
    $e = []

  Ze = e.el = {}
  Qe = R.length

  while Qe--
    ((t) ->
      e[t] = Ze[t] = (n, r) ->
        e.is(n, "function") and (@events = @events or []
        @events.push(
          name: t
          f: n
          unbind: We(@shape or @node or S.doc, t, n, r or this)
        )
        )
        this

      e["un" + t] = Ze["un" + t] = (e) ->
        n = @events or []
        r = n.length

        while r--
          if n[r].name is t and n[r].f is e
            return n[r].unbind()
            n.splice(r, 1)
            not n.length and delete @events

            this
        this
    ) R[Qe]
  Ze.data = (n, r) ->
    i = le[@id] = le[@id] or {}
    if 1 is arguments_.length
      if e.is(n, "object")
        for a of n
          n[B](a) and @data(a, n[a])
        return this
      return t("raphael.data.get." + @id, this, i[n], n)
      i[n]
    i[n] = r
    t("raphael.data.set." + @id, this, r, n)
    this

  Ze.removeData = (t) ->
    (if null is t then le[@id] = {} else le[@id] and delete le[@id][t]
    )
    this

  Ze.getData = ->
    n le[@id] or {}

  Ze.hover = (t, e, n, r) ->
    @mouseover(t, n).mouseout e, r or n

  Ze.unhover = (t, e) ->
    @unmouseover(t).unmouseout e


  Je = []
  Ze.drag = (n, r, i, a, s, o) ->
    u = (u) ->
      (u.originalEvent or u).preventDefault()
      l = S.doc.documentElement.scrollTop or S.doc.body.scrollTop
      h = S.doc.documentElement.scrollLeft or S.doc.body.scrollLeft
      @_drag.x = u.clientX + h
      @_drag.y = u.clientY + l
      @_drag.id = u.identifier
      not $e.length and e.mousemove(He).mouseup(Ue)
      $e.push(
        el: this
        move_scope: a
        start_scope: s
        end_scope: o
      )
      r and t.on("raphael.drag.start." + @id, r)
      n and t.on("raphael.drag.move." + @id, n)
      i and t.on("raphael.drag.end." + @id, i)
      t("raphael.drag.start." + @id, s or a or this, u.clientX + h, u.clientY + l, u)
    @_drag = {}
    Je.push(
      el: this
      start: u
    )
    @mousedown(u)
    this

  Ze.onDragOver = (e) ->
    (if e then t.on("raphael.drag.over." + @id, e) else t.unbind("raphael.drag.over." + @id))

  Ze.undrag = ->
    n = Je.length

    while n--
      Je[n].el is this and (@unmousedown(Je[n].start)
      Je.splice(n, 1)
      t.unbind("raphael.drag.*." + @id)
      )
    not Je.length and e.unmousemove(He).unmouseup(Ue)
    $e = []

  b.circle = (t, n, r) ->
    i = e._engine.circle(this, t or 0, n or 0, r or 0)
    @__set__ and @__set__.push(i)
    i

  b.rect = (t, n, r, i, a) ->
    s = e._engine.rect(this, t or 0, n or 0, r or 0, i or 0, a or 0)
    @__set__ and @__set__.push(s)
    s

  b.ellipse = (t, n, r, i) ->
    a = e._engine.ellipse(this, t or 0, n or 0, r or 0, i or 0)
    @__set__ and @__set__.push(a)
    a

  b.path = (t) ->
    t and not e.is(t, N) and not e.is(t[0], W) and (t += P)
    n = e._engine.path(e.format[T](e, arguments_), this)
    @__set__ and @__set__.push(n)
    n

  b.image = (t, n, r, i, a) ->
    s = e._engine.image(this, t or "about:blank", n or 0, r or 0, i or 0, a or 0)
    @__set__ and @__set__.push(s)
    s

  b.text = (t, n, r) ->
    i = e._engine.text(this, t or 0, n or 0, M(r))
    @__set__ and @__set__.push(i)
    i

  b.set = (t) ->
    not e.is(t, "array") and (t = Array::splice.call(arguments_, 0, arguments_.length))
    n = new cn(t)
    @__set__ and @__set__.push(n)
    n.paper = this
    n.type = "set"
    n

  b.setStart = (t) ->
    @__set__ = t or @set()

  b.setFinish = ->
    t = @__set__
    delete @__set__

    t

  b.setSize = (t, n) ->
    e._engine.setSize.call this, t, n

  b.setViewBox = (t, n, r, i, a) ->
    e._engine.setViewBox.call this, t, n, r, i, a

  b.top = b.bottom = null
  b.raphael = e

  Ke = (t) ->
    e = t.getBoundingClientRect()
    n = t.ownerDocument
    r = n.body
    i = n.documentElement
    a = i.clientTop or r.clientTop or 0
    s = i.clientLeft or r.clientLeft or 0
    o = e.top + (S.win.pageYOffset or i.scrollTop or r.scrollTop) - a
    u = e.left + (S.win.pageXOffset or i.scrollLeft or r.scrollLeft) - s
    y: o
    x: u

  b.getElementByPoint = (t, e) ->
    n = this
    r = n.canvas
    i = S.doc.elementFromPoint(t, e)
    if S.win.opera and "svg" is i.tagName
      a = Ke(r)
      s = r.createSVGRect()
      s.x = t - a.x
      s.y = e - a.y
      s.width = s.height = 1

      o = r.getIntersectionList(s, null)
      o.length and (i = o[o.length - 1])
    return null  unless i
    while i.parentNode and i isnt r.parentNode and not i.raphael
      i = i.parentNode
    i is n.canvas.parentNode and (i = r)
    i = (if i and i.raphael then n.getById(i.raphaelid) else null)

  b.getElementsByBBox = (t) ->
    n = @set()
    @forEach((r) ->
      e.isBBoxIntersect(r.getBBox(), t) and n.push(r)
    )
    n

  b.getById = (t) ->
    e = @bottom

    while e
      return e  if e.id is t
      e = e.next
    null

  b.forEach = (t, e) ->
    n = @bottom

    while n
      return this  if t.call(e, n) is not 1
      n = n.next
    this

  b.getElementsByPoint = (t, e) ->
    n = @set()
    @forEach((r) ->
      r.isPointInside(t, e) and n.push(r)
    )
    n

  Ze.isPointInside = (t, n) ->
    r = @realPath = @realPath or ge[@type](this)
    e.isPointInsidePath r, t, n

  Ze.getBBox = (t) ->
    return {}  if @removed
    e = @_
    (if t then ((e.dirty or not e.bboxwt) and (@realPath = ge[@type](this)
    e.bboxwt = Ce(@realPath)
    e.bboxwt.toString = d
    e.dirty = 0
    )
    e.bboxwt
    ) else ((e.dirty or e.dirtyT or not e.bbox) and ((e.dirty or not @realPath) and (e.bboxwt = 0
    @realPath = ge[@type](this)
    )
    e.bbox = Ce(xe(@realPath, @matrix))
    e.bbox.toString = d
    e.dirty = e.dirtyT = 0
    )
    e.bbox
    ))

  Ze.clone = ->
    return null  if @removed
    t = @paper[@type]().attr(@attr())
    @__set__ and @__set__.push(t)
    t

  Ze.glow = (t) ->
    return null  if "text" is @type
    t = t or {}
    e =
      width: (t.width or 10) + (+@attr("stroke-width") or 1)
      fill: t.fill or not 1
      opacity: t.opacity or .5
      offsetx: t.offsetx or 0
      offsety: t.offsety or 0
      color: t.color or "#000"

    n = e.width / 2
    r = @paper
    i = r.set()
    a = @realPath or ge[@type](this)
    a = (if @matrix then xe(a, @matrix) else a)
    s = 1

    while n + 1 > s
      i.push r.path(a).attr(
        stroke: e.color
        fill: (if e.fill then e.color else "none")
        "stroke-linejoin": "round"
        "stroke-linecap": "round"
        "stroke-width": +(e.width / n * s).toFixed(3)
        opacity: +(e.opacity / n).toFixed(3)
      )
      s++
    i.insertBefore(this).translate e.offsetx, e.offsety


  tn = (t, n, r, i, a, s, o, h, c) ->
    (if null is c then u(t, n, r, i, a, s, o, h) else e.findDotsAtSegment(t, n, r, i, a, s, o, h, l(t, n, r, i, a, s, o, h, c)))

  en = (t, n) ->
    (r, i, a) ->
      r = Re(r)
      s = undefined
      o = undefined
      u = undefined
      l = undefined
      h = undefined
      c = ""
      f = {}
      p = 0
      d = 0
      g = r.length

      while g > d
        unless u = r[d]
        "M" is u[0]
          if l = tn(s, o, u[1], u[2], u[3], u[4], u[5], u[6])
          p + l > i
            if n and not f.start
              return c  if h = tn(s, o, u[1], u[2], u[3], u[4], u[5], u[6], i - p)
              c += ["C" + h.start.x, h.start.y, h.m.x, h.m.y, h.x, h.y]
              a

              f.start = c
              c = ["M" + h.x, h.y + "C" + h.n.x, h.n.y, h.end.x, h.end.y, u[5], u[6]].join()
              p += l
              s = +u[5]
              o = +u[6]

              continue
            if not t and not n
              return h = tn(s, o, u[1], u[2], u[3], u[4], u[5], u[6], i - p)

                x: h.x
                y: h.y
                alpha: h.alpha
          p += l
          s = +u[5]
          o = +u[6]
        c += u.shift() + u
        d++
      f.end = c
      h = (if t then p else (if n then f else e.findDotsAtSegment(s, o, u[0], u[1], u[2], u[3], u[4], u[5], 1)))
      h.alpha and (h =
        x: h.x
        y: h.y
        alpha: h.alpha
      )
      h

  nn = en(1)
  rn = en()
  an = en(0, 1)
  e.getTotalLength = nn
  e.getPointAtLength = rn
  e.getSubpath = (t, e, n) ->
    return an(t, e).end  if 1e-6 > @getTotalLength(t) - n
    r = an(t, n, 1)
    (if e then an(r, e).end else r)

  Ze.getTotalLength = ->
    (if "path" is @type then (if @node.getTotalLength then @node.getTotalLength() else nn(@attrs.path)) else undefined)

  Ze.getPointAtLength = (t) ->
    (if "path" is @type then rn(@attrs.path, t) else undefined)

  Ze.getSubpath = (t, n) ->
    (if "path" is @type then e.getSubpath(@attrs.path, t, n) else undefined)


  sn = e.easing_formulas =
    linear: (t) ->
      t

    "<": (t) ->
      X t, 1.7

    ">": (t) ->
      X t, .48

    "<>": (t) ->
      e = .48 - t / 1.04
      n = D.sqrt(.1734 + e * e)
      r = n - e
      i = X(V(r), 1 / 3) * ((if 0 > r then -1 else 1))
      a = -n - e
      s = X(V(a), 1 / 3) * ((if 0 > a then -1 else 1))
      o = i + s + .5
      3 * (1 - o) * o * o + o * o * o

    backIn: (t) ->
      e = 1.70158
      t * t * ((e + 1) * t - e)

    backOut: (t) ->
      t -= 1
      e = 1.70158
      t * t * ((e + 1) * t + e) + 1

    elastic: (t) ->
      (if t is !!t then t else X(2, -10 * t) * D.sin((t - .075) * 2 * Y / .3) + 1)

    bounce: (t) ->
      e = undefined
      n = 7.5625
      r = 2.75
      (if 1 / r > t then e = n * t * t else (if 2 / r > t then (t -= 1.5 / r
      e = n * t * t + .75
      ) else (if 2.5 / r > t then (t -= 2.25 / r
      e = n * t * t + .9375
      ) else (t -= 2.625 / r
      e = n * t * t + .984375
      ))))
      e

  sn.easeIn = sn["ease-in"] = sn["<"]
  sn.easeOut = sn["ease-out"] = sn[">"]
  sn.easeInOut = sn["ease-in-out"] = sn["<>"]
  sn["back-in"] = sn.backIn
  sn["back-out"] = sn.backOut

  on_ = []
  un = window.requestAnimationFrame or window.webkitRequestAnimationFrame or window.mozRequestAnimationFrame or window.oRequestAnimationFrame or window.msRequestAnimationFrame or (t) ->
    setTimeout t, 16

  ln = ->
    n = +new Date
    r = 0

    while on_.length > r
      i = on_[r]
      if not i.el.removed and not i.paused
        a = undefined
        s = undefined
        o = n - i.start
        u = i.ms
        l = i.easing
        h = i.from
        c = i.diff
        f = i.to
        p = (i.t
        i.el
        )
        d = {}
        g = {}
        if (if i.initstatus then (o = (i.initstatus * i.anim.top - i.prev) / (i.percent - i.prev) * u
        i.status = i.initstatus
        delete i.initstatus

        i.stop and on_.splice(r--, 1)
        ) else i.status = (i.prev + (i.percent - i.prev) * (o / u)) / i.anim.top)
        not (0 > o)
          if u > o
            x = l(o / u)
            for m of h
              if h[B](m)
                switch ne[m]
                  when G
                    a = +h[m] + x * u * c[m]
                  when "colour"
                    a = "rgb(" + [hn(Q(h[m].r + x * u * c[m].r)), hn(Q(h[m].g + x * u * c[m].g)), hn(Q(h[m].b + x * u * c[m].b))].join(",") + ")"
                  when "path"
                    a = []
                    y = 0
                    b = h[m].length

                    while b > y
                      a[y] = [h[m][y][0]]
                      _ = 1
                      w = h[m][y].length

                      while w > _
                        a[y][_] = +h[m][y][_] + x * u * c[m][y][_]
                        _++
                      a[y] = a[y].join(E)
                      y++
                    a = a.join(E)
                  when "transform"
                    unless c[m].real
                      k = (t) ->
                        +h[m][t] + x * u * c[m][t]

                      a = [["m", k(0), k(1), k(2), k(3), k(4), k(5)]]
                  when "csv"
                    if "clip-rect" is m
                      a = []
                      y = 4

                      while y--
                        a[y] = +h[m][y] + x * u * c[m][y]
                  else
                    S = [][L](h[m])
                    a = []
                    y = p.paper.customAttributes[m].length

                    while y--
                      a[y] = +S[y] + x * u * c[m][y]
                d[m] = a
            p.attr(d)
            (e, n, r) ->
              setTimeout ->
                t "raphael.anim.frame." + e, n, r

            (p.id, p, i.anim)
          else
            if (n, r, i) ->
              setTimeout ->
                t("raphael.anim.frame." + r.id, r, i)
                t("raphael.anim.finish." + r.id, r, i)
                e.is(n, "function") and n.call(r)

            (i.callback, p, i.anim)
            p.attr(f)
            on_.splice(r--, 1)
            i.repeat > 1 and not i.next
              for s of f
                f[B](s) and (g[s] = i.totalOrigin[s])
              i.el.attr(g)
              v(i.anim, i.el, i.anim.percents[0], null, i.totalOrigin, i.repeat - 1)
            i.next and not i.stop and v(i.anim, i.el, i.next, null, i.totalOrigin, i.repeat)
      r++
    e.svg and p and p.paper and p.paper.safari()
    on_.length and un(ln)

  hn = (t) ->
    (if t > 255 then 255 else (if 0 > t then 0 else t))

  Ze.animateWith = (t, n, r, i, a, s) ->
    o = this
    if o.removed
      return s and s.call(o)
      o
    u = (if r instanceof x then r else e.animation(r, i, a, s))
    v u, o, u.percents[0], null, o.attr()
    l = 0
    h = on_.length

    while h > l
      if on_[l].anim is n and on_[l].el is t
        on_[h - 1].start = on_[l].start
        break
      l++
    o

  Ze.onAnimation = (e) ->
    (if e then t.on("raphael.anim.frame." + @id, e) else t.unbind("raphael.anim.frame." + @id))
    this

  x::delay = (t) ->
    e = new x(@anim, @ms)
    e.times = @times
    e.del = +t or 0
    e

  x::repeat = (t) ->
    e = new x(@anim, @ms)
    e.del = @del
    e.times = D.floor(z(t, 0)) or 1
    e

  e.animation = (t, n, r, i) ->
    return t  if t instanceof x
    (e.is(r, "function") or not r) and (i = i or r or null
    r = null
    )
    t = Object(t)
    n = +n or 0

    a = undefined
    s = undefined
    o = {}
    for s of t
      t[B](s) and J(s) isnt s and J(s) + "%" isnt s and (a = not 0
      o[s] = t[s]
      )
    (if a then (r and (o.easing = r)
    i and (o.callback = i)
    new x(
      100: o
    , n)
    ) else new x(t, n))

  Ze.animate = (t, n, r, i) ->
    a = this
    if a.removed
      return i and i.call(a)
      a
    s = (if t instanceof x then t else e.animation(t, n, r, i))
    v(s, a, s.percents[0], null, a.attr())
    a

  Ze.setTime = (t, e) ->
    t and null isnt e and @status(t, O(e, t.ms) / t.ms)
    this

  Ze.status = (t, e) ->
    n = undefined
    r = undefined
    i = []
    a = 0
    unless null is e
      return v(t, this, -1, O(e, 1))
      this
    n = on_.length
    while n > a
      if r = on_[a]
      r.el.id is @id and (not t or r.anim is t)
        return r.status  if t
        i.push
          anim: r.anim
          status: r.status

      a++
    (if t then 0 else i)

  Ze.pause = (e) ->
    n = 0

    while on_.length > n
      on_[n].el.id isnt @id or e and on_[n].anim isnt e or t("raphael.anim.pause." + @id, this, on_[n].anim) isnt not 1 and (on_[n].paused = not 0)
      n++
    this

  Ze.resume = (e) ->
    n = 0

    while on_.length > n
      if on_[n].el.id is @id and (not e or on_[n].anim is e)
        r = on_[n]
        t("raphael.anim.resume." + @id, this, r.anim) isnt not 1 and (delete r.paused

        @status(r.anim, r.status)
        )
      n++
    this

  Ze.stop = (e) ->
    n = 0

    while on_.length > n
      on_[n].el.id isnt @id or e and on_[n].anim isnt e or t("raphael.anim.stop." + @id, this, on_[n].anim) isnt not 1 and on_.splice(n--, 1)
      n++
    this

  t.on("raphael.remove", m)
  t.on("raphael.clear", m)
  Ze.toString = ->
    "Raphaël’s object"


  cn = (t) ->
    if @items = []
    @length = 0
    @type = "set"
    t
      e = 0
      n = t.length

      while n > e
        not t[e] or t[e].constructor isnt Ze.constructor and t[e].constructor isnt cn or (this[@items.length] = @items[@items.length] = t[e]
        @length++
        )
        e++

  fn = cn::
  fn.push = ->
    t = undefined
    e = undefined
    n = 0
    r = arguments_.length

    while r > n
      t = arguments_[n]
      not t or t.constructor isnt Ze.constructor and t.constructor isnt cn or (e = @items.length
      this[e] = @items[e] = t
      @length++
      )
      n++
    this

  fn.pop = ->
    @length and delete this[@length--]

    @items.pop()

  fn.forEach = (t, e) ->
    n = 0
    r = @items.length

    while r > n
      return this  if t.call(e, @items[n], n) is not 1
      n++
    this


  for pn of Ze
    Ze[B](pn) and (fn[pn] = (t) ->
      ->
        e = arguments_
        @forEach (n) ->
          n[t][T] n, e

    (pn))
  fn.attr = (t, n) ->
    if t and e.is(t, W) and e.is(t[0], "object")
      r = 0
      i = t.length

      while i > r
        @items[r].attr t[r]
        r++
    else
      a = 0
      s = @items.length

      while s > a
        @items[a].attr t, n
        a++
    this

  fn.clear = ->
    while @length
      @pop()

  fn.splice = (t, e) ->
    t = (if 0 > t then z(@length + t, 0) else t)
    e = z(0, O(@length - t, e))

    n = undefined
    r = []
    i = []
    a = []
    n = 2
    while arguments_.length > n
      a.push arguments_[n]
      n++
    n = 0
    while e > n
      i.push this[t + n]
      n++
    while @length - t > n
      r.push this[t + n]
      n++
    s = a.length
    n = 0
    while s + r.length > n
      @items[t + n] = this[t + n] = (if s > n then a[n] else r[n - s])
      n++
    n = @items.length = @length -= e - s
    while this[n]
      delete this[n++]
    new cn(i)

  fn.exclude = (t) ->
    e = 0
    n = @length

    while n > e
      if this[e] is t
        return @splice(e, 1)
        not 0
      e++

  fn.animate = (t, n, r, i) ->
    (e.is(r, "function") or not r) and (i = r or null)
    a = undefined
    s = undefined
    o = @items.length
    u = o
    l = this
    return this  unless o
    i and (s = ->
      not --o and i.call(l)
    )
    r = (if e.is(r, N) then r else s)

    h = e.animation(t, n, r, s)
    a = @items[--u].animate(h)
    while u--
      @items[u] and not @items[u].removed and @items[u].animateWith(a, h, h)
    this

  fn.insertAfter = (t) ->
    e = @items.length

    while e--
      @items[e].insertAfter t
    this

  fn.getBBox = ->
    t = []
    e = []
    n = []
    r = []
    i = @items.length

    while i--
      unless @items[i].removed
        a = @items[i].getBBox()
        t.push(a.x)
        e.push(a.y)
        n.push(a.x + a.width)
        r.push(a.y + a.height)
    t = O[T](0, t)
    e = O[T](0, e)
    n = z[T](0, n)
    r = z[T](0, r)

      x: t
      y: e
      x2: n
      y2: r
      width: n - t
      height: r - e

  fn.clone = (t) ->
    t = @paper.set()
    e = 0
    n = @items.length

    while n > e
      t.push @items[e].clone()
      e++
    t

  fn.toString = ->
    "Raphaël‘s set"

  fn.glow = (t) ->
    e = @paper.set()
    @forEach((n) ->
      r = n.glow(t)
      null isnt r and r.forEach((t) ->
        e.push t
      )
    )
    e

  e.registerFont = (t) ->
    return t  unless t.face
    @fonts = @fonts or {}
    e =
      w: t.w
      face: {}
      glyphs: {}

    n = t.face["font-family"]
    for r of t.face
      t.face[B](r) and (e.face[r] = t.face[r])
    if (if @fonts[n] then @fonts[n].push(e) else @fonts[n] = [e])
    not t.svg
      e.face["units-per-em"] = K(t.face["units-per-em"], 10)
      for i of t.glyphs
        if t.glyphs[B](i)
          a = t.glyphs[i]
          if e.glyphs[i] =
            w: a.w
            k: {}
            d: a.d and "M" + a.d.replace(/[mlcxtrv]/g, (t) ->

                l: "L"
                c: "C"
                x: "z"
                t: "m"
                r: "l"
                v: "c"
              [{t}] or "M"
            ) + "z"

          a.k
            for s of a.k
              a[B](s) and (e.glyphs[i].k[s] = a.k[s])
    t

  b.getFont = (t, n, r, i) ->
    if i = i or "normal"
    r = r or "normal"
    n = +n or
      normal: 400
      bold: 700
      lighter: 300
      bolder: 800
    [{n}] or 400
    e.fonts
      a = e.fonts[t]
      unless a
        s = RegExp("(^|\\s)" + t.replace(/[^\w\d\s+!~.:_-]/g, P) + "(\\s|$)", "i")
        for o of e.fonts
          if e.fonts[B](o) and s.test(o)
            a = e.fonts[o]
            break
      u = undefined
      if a
        l = 0
        h = a.length

        while h > l and (u = a[l]
        u.face["font-weight"] isnt n or u.face["font-style"] isnt r and u.face["font-style"] or u.face["font-stretch"] isnt i
        )
          l++
      u

  b.print = (t, n, r, i, a, s, o) ->
    s = s or "middle"
    o = z(O(o or 0, 1), -1)

    u = undefined
    l = M(r)[I](P)
    h = 0
    c = 0
    f = P
    if e.is(i, "string") and (i = @getFont(i))
    i
      u = (a or 16) / i.face["units-per-em"]
      p = i.face.bbox[I](_)
      d = +p[0]
      g = p[3] - p[1]
      x = 0
      v = +p[1] + ((if "baseline" is s then g + +i.face.descent else g / 2))
      m = 0
      y = l.length

      while y > m
        unless "\n" is l[m]
          b = c and i.glyphs[l[m - 1]] or {}
          w = i.glyphs[l[m]]
          h += (if c then (b.w or i.w) + (b.k and b.k[l[m]] or 0) + i.w * o else 0)
          c = 1
        w and w.d and (f += e.transformPath(w.d, ["t", h * u, x * u, "s", u, u, d, v, "t", (t - d) / u, (n - v) / u]))
        m++
    @path(f).attr
      fill: "#000"
      stroke: "none"


  b.add = (t) ->
    if e.is(t, "array")
      n = undefined
      r = @set()
      i = 0
      a = t.length

      while a > i
        n = t[i] or {}
        w[B](n.type) and r.push(this[n.type]().attr(n))
        i++
    r

  e.format = (t, n) ->
    r = (if e.is(n, W) then [0][L](n) else arguments_)
    t and e.is(t, N) and r.length - 1 and (t = t.replace(k, (t, e) ->
      (if null is r[++e] then P else r[e])
    ))
    t or P

  e.fullfill = ->
    t = /\{([^\}]+)\}/g
    e = /(?:(?:^|\.)(.+?)(?=\[|\.|$|\()|\[('|")(.+?)\2\])(\(\))?/g
    n = (t, n, r) ->
      i = r
      n.replace(e, (t, e, n, r, a) ->
        e = e or r
        i and (e of i and (i = i[e])
        "function" is typeof i and a and (i = i())
        )
      )
      i = ((if null is i or i is r then t else i)) + ""

    (e, r) ->
      (e + "").replace t, (t, e) ->
        n t, e, r

  ()
  e.ninja = ->
    (if C.was then S.win.Raphael = C.is else delete Raphael
    )
    e

  e.st = fn
  (t, n, r) ->
    i = ->
      (if /in/.test(t.readyState) then setTimeout(i, 9) else e.eve("raphael.DOMload"))
    null is t.readyState and t.addEventListener and (t.addEventListener(n, r = ->
      t.removeEventListener(n, r, not 1)
      t.readyState = "complete"
    , not 1)
    t.readyState = "loading"
    )
    i()
  (document, "DOMContentLoaded")
  (if C.was then S.win.Raphael = e else Raphael = e)
  t.on("raphael.DOMload", ->
    y = not 0
  )
  e

((t, e) ->
  (if "function" is typeof define and define.amd then require(["raphael"], e) else t.Raphael and e(t.Raphael))
) this, (t) ->
  if t.svg
    e = "hasOwnProperty"
    r = String
    n = parseFloat
    i = parseInt
    a = Math
    s = a.max
    o = a.abs
    u = a.pow
    h = /[, ]+/
    l = t.eve
    c = ""
    f = " "
    p = "http://www.w3.org/1999/xlink"
    d =
      block: "M5,0 0,2.5 5,5z"
      classic: "M5,0 0,2.5 5,5 3.5,3 3.5,2z"
      diamond: "M2.5,0 5,2.5 2.5,5 0,2.5z"
      open: "M6,1 1,3.5 6,6"
      oval: "M2.5,0A2.5,2.5,0,0,1,2.5,5 2.5,2.5,0,0,1,2.5,0z"

    g = {}
    t.toString = ->
      "Your browser supports SVG.\nYou are running Raphaël " + @version

    x = (n, i) ->
      if i
        "string" is typeof n and (n = x(n))
        for a of i
          i[e](a) and ((if "xlink:" is a.substring(0, 6) then n.setAttributeNS(p, a.substring(6), r(i[a])) else n.setAttribute(a, r(i[a]))))
      else
        n = t._g.doc.createElementNS("http://www.w3.org/2000/svg", n)
        n.style and (n.style.webkitTapHighlightColor = "rgba(0,0,0,0)")
      n

    v = (e, i) ->
      h = "linear"
      l = e.id + i
      f = .5
      p = .5
      d = e.node
      g = e.paper
      v = d.style
      y = t._g.doc.getElementById(l)
      unless y
        if i = r(i).replace(t._radial_gradient, (t, e, r) ->
          if h = "radial"
          e and r
            f = n(e)
            p = n(r)

            i = 2 * (p > .5) - 1
            u(f - .5, 2) + u(p - .5, 2) > .25 and (p = a.sqrt(.25 - u(f - .5, 2)) * i + .5) and .5 isnt p and (p = p.toFixed(5) - 1e-5 * i)
          c
        )
        i = i.split(/\s*\-\s*/)
        "linear" is h
          m = i.shift()
          return null  if m = -n(m)
          isNaN(m)

          b = [0, 0, a.cos(t.rad(m)), a.sin(t.rad(m))]
          _ = 1 / (s(o(b[2]), o(b[3])) or 1)
          b[2] *= _
          b[3] *= _
          0 > b[2] and (b[0] = -b[2]
          b[2] = 0
          )
          0 > b[3] and (b[1] = -b[3]
          b[3] = 0
          )
        w = t._parseDots(i)
        return null  unless w
        if l = l.replace(/[\(\)\s,\xb0#]/g, "_")
        e.gradient and l isnt e.gradient.id and (g.defs.removeChild(e.gradient)
        delete e.gradient

        )
        not e.gradient
          y = x(h + "Gradient",
            id: l
          )
          e.gradient = y
          x(y, (if "radial" is h then
            fx: f
            fy: p
           else
            x1: b[0]
            y1: b[1]
            x2: b[2]
            y2: b[3]
            gradientTransform: e.matrix.invert()
          ))
          g.defs.appendChild(y)

          k = 0
          C = w.length

          while C > k
            y.appendChild x("stop",
              offset: (if w[k].offset then w[k].offset else (if k then "100%" else "0%"))
              "stop-color": w[k].color or "#fff"
            )
            k++
      x(d,
        fill: "url(#" + l + ")"
        opacity: 1
        "fill-opacity": 1
      )
      v.fill = c
      v.opacity = 1
      v.fillOpacity = 1
      1

    y = (t) ->
      e = t.getBBox(1)
      x t.pattern,
        patternTransform: t.matrix.invert() + " translate(" + e.x + "," + e.y + ")"


    m = (n, i, a) ->
      if "path" is n.type
        s = undefined
        o = undefined
        u = undefined
        h = undefined
        l = undefined
        f = r(i).toLowerCase().split("-")
        p = n.paper
        v = (if a then "end" else "start")
        y = n.node
        m = n.attrs
        b = m["stroke-width"]
        _ = f.length
        w = "classic"
        k = 3
        C = 3
        B = 5

        while _--
          switch f[_]
            when "block", "classic"
          , "oval"
          , "diamond"
          , "open"
          , "none"
              w = f[_]
            when "wide"
              C = 5
            when "narrow"
              C = 2
            when "long"
              k = 5
            when "short"
              k = 2
        if (if "open" is w then (k += 2
        C += 2
        B += 2
        u = 1
        h = (if a then 4 else 1)
        l =
          fill: "none"
          stroke: m.stroke

        ) else (h = u = k / 2
        l =
          fill: m.stroke
          stroke: "none"

        ))
        (if n._.arrows then (if a then (n._.arrows.endPath and g[n._.arrows.endPath]--
        n._.arrows.endMarker and g[n._.arrows.endMarker]--
        ) else (n._.arrows.startPath and g[n._.arrows.startPath]--
        n._.arrows.startMarker and g[n._.arrows.startMarker]--
        )) else n._.arrows = {})
        "none" isnt w
          S = "raphael-marker-" + w
          A = "raphael-marker-" + v + w + k + C
          (if t._g.doc.getElementById(S) then g[S]++ else (p.defs.appendChild(x(x("path"),
            "stroke-linecap": "round"
            d: d[w]
            id: S
          ))
          g[S] = 1
          ))
          T = undefined
          M = t._g.doc.getElementById(A)
          (if M then (g[A]++
          T = M.getElementsByTagName("use")[0]
          ) else (M = x(x("marker"),
            id: A
            markerHeight: C
            markerWidth: k
            orient: "auto"
            refX: h
            refY: C / 2
          )
          T = x(x("use"),
            "xlink:href": "#" + S
            transform: ((if a then "rotate(180 " + k / 2 + " " + C / 2 + ") " else c)) + "scale(" + k / B + "," + C / B + ")"
            "stroke-width": (1 / ((k / B + C / B) / 2)).toFixed(4)
          )
          M.appendChild(T)
          p.defs.appendChild(M)
          g[A] = 1
          ))
          x(T, l)

          F = u * ("diamond" isnt w and "oval" isnt w)
          (if a then (s = n._.arrows.startdx * b or 0
          o = t.getTotalLength(m.path) - F * b
          ) else (s = F * b
          o = t.getTotalLength(m.path) - (n._.arrows.enddx * b or 0)
          ))
          l = {}
          l["marker-" + v] = "url(#" + A + ")"
          (o or s) and (l.d = Raphael.getSubpath(m.path, s, o))
          x(y, l)
          n._.arrows[v + "Path"] = S
          n._.arrows[v + "Marker"] = A
          n._.arrows[v + "dx"] = F
          n._.arrows[v + "Type"] = w
          n._.arrows[v + "String"] = i
        else
          (if a then (s = n._.arrows.startdx * b or 0
          o = t.getTotalLength(m.path) - s
          ) else (s = 0
          o = t.getTotalLength(m.path) - (n._.arrows.enddx * b or 0)
          ))
          n._.arrows[v + "Path"] and x(y,
            d: Raphael.getSubpath(m.path, s, o)
          )
          delete n._.arrows[v + "Path"]

          delete n._.arrows[v + "Marker"]

          delete n._.arrows[v + "dx"]

          delete n._.arrows[v + "Type"]

          delete n._.arrows[v + "String"]
        for l of g
          if g[e](l) and not g[l]
            L = t._g.doc.getElementById(l)
            L and L.parentNode.removeChild(L)

    b =
      "": [0]
      none: [0]
      "-": [3, 1]
      ".": [1, 1]
      "-.": [3, 1, 1, 1]
      "-..": [3, 1, 1, 1, 1, 1]
      ". ": [1, 3]
      "- ": [4, 3]
      "--": [8, 3]
      "- .": [4, 3, 1, 3]
      "--.": [8, 3, 1, 3]
      "--..": [8, 3, 1, 3, 1, 3]

    _ = (t, e, n) ->
      if e = b[r(e).toLowerCase()]
        i = t.attrs["stroke-width"] or "1"
        a =
          round: i
          square: i
          butt: 0
        [{t.attrs["stroke-linecap"] or n["stroke-linecap"]}] or 0
        s = []
        o = e.length

        while o--
          s[o] = e[o] * i + ((if o % 2 then 1 else -1)) * a
        x t.node,
          "stroke-dasharray": s.join(",")


    w = (n, a) ->
      u = n.node
      l = n.attrs
      f = u.style.visibility
      u.style.visibility = "hidden"
      for d of a
        if a[e](d)
          continue  unless t._availableAttrs[e](d)
          g = a[d]
          switch l[d] = g
          d

            when "blur"
              n.blur g
            when "href", "title"
          , "target"
              b = u.parentNode
              unless "a" is b.tagName.toLowerCase()
                w = x("a")
                b.insertBefore(w, u)
                w.appendChild(u)
                b = w
              (if "target" is d then b.setAttributeNS(p, "show", (if "blank" is g then "new" else g)) else b.setAttributeNS(p, d, g))
            when "cursor"
              u.style.cursor = g
            when "transform"
              n.transform g
            when "arrow-start"
              m n, g
            when "arrow-end"
              m n, g, 1
            when "clip-rect"
              k = r(g).split(h)
              if 4 is k.length
                n.clip and n.clip.parentNode.parentNode.removeChild(n.clip.parentNode)
                B = x("clipPath")
                S = x("rect")
                B.id = t.createUUID()
                x(S,
                  x: k[0]
                  y: k[1]
                  width: k[2]
                  height: k[3]
                )
                B.appendChild(S)
                n.paper.defs.appendChild(B)
                x(u,
                  "clip-path": "url(#" + B.id + ")"
                )
                n.clip = S
              unless g
                A = u.getAttribute("clip-path")
                if A
                  T = t._g.doc.getElementById(A.replace(/(^url\(#|\)$)/g, c))
                  T and T.parentNode.removeChild(T)
                  x(u,
                    "clip-path": c
                  )
                  delete n.clip
            when "path"
              "path" is n.type and (x(u,
                d: (if g then l.path = t._pathToAbsolute(g) else "M0,0")
              )
              n._.dirty = 1
              n._.arrows and ("startString" of n._.arrows and m(n, n._.arrows.startString)
              "endString" of n._.arrows and m(n, n._.arrows.endString, 1)
              )
              )
            when "width"
              break  if u.setAttribute(d, g)
              n._.dirty = 1
              not l.fx

              d = "x"
              g = l.x
            when "x"
              l.fx and (g = -l.x - (l.width or 0))
            when "rx"
              break  if "rx" is d and "rect" is n.type
            when "cx"
              u.setAttribute(d, g)
              n.pattern and y(n)
              n._.dirty = 1
            when "height"
              break  if u.setAttribute(d, g)
              n._.dirty = 1
              not l.fy

              d = "y"
              g = l.y
            when "y"
              l.fy and (g = -l.y - (l.height or 0))
            when "ry"
              break  if "ry" is d and "rect" is n.type
            when "cy"
              u.setAttribute(d, g)
              n.pattern and y(n)
              n._.dirty = 1
            when "r"
              (if "rect" is n.type then x(u,
                rx: g
                ry: g
              ) else u.setAttribute(d, g))
              n._.dirty = 1
            when "src"
              "image" is n.type and u.setAttributeNS(p, "href", g)
            when "stroke-width"
              (1 isnt n._.sx or 1 isnt n._.sy) and (g /= s(o(n._.sx), o(n._.sy)) or 1)
              n.paper._vbSize and (g *= n.paper._vbSize)
              u.setAttribute(d, g)
              l["stroke-dasharray"] and _(n, l["stroke-dasharray"], a)
              n._.arrows and ("startString" of n._.arrows and m(n, n._.arrows.startString)
              "endString" of n._.arrows and m(n, n._.arrows.endString, 1)
              )
            when "stroke-dasharray"
              _ n, g, a
            when "fill"
              M = r(g).match(t._ISURL)
              if M
                B = x("pattern")
                F = x("image")
                B.id = t.createUUID()
                x(B,
                  x: 0
                  y: 0
                  patternUnits: "userSpaceOnUse"
                  height: 1
                  width: 1
                )
                x(F,
                  x: 0
                  y: 0
                  "xlink:href": M[1]
                )
                B.appendChild(F)
                (e) ->
                  t._preload M[1], ->
                    t = @offsetWidth
                    r = @offsetHeight
                    x(e,
                      width: t
                      height: r
                    )
                    x(F,
                      width: t
                      height: r
                    )
                    n.paper.safari()

                (B)
                n.paper.defs.appendChild(B)
                x(u,
                  fill: "url(#" + B.id + ")"
                )
                n.pattern = B
                n.pattern and y(n)

                break
              L = t.getRGB(g)
              if L.error
                if ("circle" is n.type or "ellipse" is n.type or "r" isnt r(g).charAt()) and v(n, g)
                  if "opacity" of l or "fill-opacity" of l
                    N = t._g.doc.getElementById(u.getAttribute("fill").replace(/^url\(#|\)$/g, c))
                    if N
                      P = N.getElementsByTagName("stop")
                      x P[P.length - 1],
                        "stop-opacity": ((if "opacity" of l then l.opacity else 1)) * ((if "fill-opacity" of l then l["fill-opacity"] else 1))

                  l.gradient = g
                  l.fill = "none"

                  break
              else
                delete a.gradient

                delete l.gradient

                not t.is(l.opacity, "undefined") and t.is(a.opacity, "undefined") and x(u,
                  opacity: l.opacity
                )
                not t.is(l["fill-opacity"], "undefined") and t.is(a["fill-opacity"], "undefined") and x(u,
                  "fill-opacity": l["fill-opacity"]
                )
              L[e]("opacity") and x(u,
                "fill-opacity": (if L.opacity > 1 then L.opacity / 100 else L.opacity)
              )
            when "stroke"
              L = t.getRGB(g)
              u.setAttribute(d, L.hex)
              "stroke" is d and L[e]("opacity") and x(u,
                "stroke-opacity": (if L.opacity > 1 then L.opacity / 100 else L.opacity)
              )
              "stroke" is d and n._.arrows and ("startString" of n._.arrows and m(n, n._.arrows.startString)
              "endString" of n._.arrows and m(n, n._.arrows.endString, 1)
              )
            when "gradient"
              ("circle" is n.type or "ellipse" is n.type or "r" isnt r(g).charAt()) and v(n, g)
            when "opacity"
              l.gradient and not l[e]("stroke-opacity") and x(u,
                "stroke-opacity": (if g > 1 then g / 100 else g)
              )
            when "fill-opacity"
              if l.gradient
                N = t._g.doc.getElementById(u.getAttribute("fill").replace(/^url\(#|\)$/g, c))
                N and (P = N.getElementsByTagName("stop")
                x(P[P.length - 1],
                  "stop-opacity": g
                )
                )

                break
            else
              "font-size" is d and (g = i(g, 10) + "px")
              E = d.replace(/(\-.)/g, (t) ->
                t.substring(1).toUpperCase()
              )
              u.style[E] = g
              n._.dirty = 1
              u.setAttribute(d, g)
      C(n, a)
      u.style.visibility = f

    k = 1.2
    C = (n, a) ->
      if "text" is n.type and (a[e]("text") or a[e]("font") or a[e]("font-size") or a[e]("x") or a[e]("y"))
        s = n.attrs
        o = n.node
        u = (if o.firstChild then i(t._g.doc.defaultView.getComputedStyle(o.firstChild, c).getPropertyValue("font-size"), 10) else 10)
        if a[e]("text")
          s.text = a.text
          while o.firstChild
            o.removeChild o.firstChild
          h = undefined
          l = r(a.text).split("\n")
          f = []
          p = 0
          d = l.length

          while d > p
            h = x("tspan")
            p and x(h,
              dy: u * k
              x: s.x
            )
            h.appendChild(t._g.doc.createTextNode(l[p]))
            o.appendChild(h)
            f[p] = h
            p++
        else
          f = o.getElementsByTagName("tspan")
          p = 0
          d = f.length

          while d > p
            (if p then x(f[p],
              dy: u * k
              x: s.x
            ) else x(f[0],
              dy: 0
            ))
            p++
        x(o,
          x: s.x
          y: s.y
        )
        n._.dirty = 1

        g = n._getBBox()
        v = s.y - (g.y + g.height / 2)
        v and t.is(v, "finite") and x(f[0],
          dy: v
        )

    B = (e, r) ->
      this[0] = @node = e
      e.raphael = not 0
      @id = t._oid++
      e.raphaelid = @id
      @matrix = t.matrix()
      @realPath = null
      @paper = r
      @attrs = @attrs or {}
      @_ =
        transform: []
        sx: 1
        sy: 1
        deg: 0
        dx: 0
        dy: 0
        dirty: 1

      not r.bottom and (r.bottom = this)
      @prev = r.top
      r.top and (r.top.next = this)
      r.top = this
      @next = null

    S = t.el
    B:: = S
    S.constructor = B
    t._engine.path = (t, e) ->
      r = x("path")
      e.canvas and e.canvas.appendChild(r)
      n = new B(r, e)
      n.type = "path"
      w(n,
        fill: "none"
        stroke: "#000"
        path: t
      )
      n

    S.rotate = (t, e, i) ->
      return this  if @removed
      if t = r(t).split(h)
      t.length - 1 and (e = n(t[1])
      i = n(t[2])
      )
      t = n(t[0])
      null is i and (e = i)
      null is e or null is i
        a = @getBBox(1)
        e = a.x + a.width / 2
        i = a.y + a.height / 2
      @transform(@_.transform.concat([["r", t, e, i]]))
      this

    S.scale = (t, e, i, a) ->
      return this  if @removed
      s = @getBBox(1)  if t = r(t).split(h)
      t.length - 1 and (e = n(t[1])
      i = n(t[2])
      a = n(t[3])
      )
      t = n(t[0])
      null is e and (e = t)
      null is a and (i = a)
      null is i or null is a

      i = (if null is i then s.x + s.width / 2 else i)
      a = (if null is a then s.y + s.height / 2 else a)
      @transform(@_.transform.concat([["s", t, e, i, a]]))
      this

    S.translate = (t, e) ->
      (if @removed then this else (t = r(t).split(h)
      t.length - 1 and (e = n(t[1]))
      t = n(t[0]) or 0
      e = +e or 0
      @transform(@_.transform.concat([["t", t, e]]))
      this
      ))

    S.transform = (r) ->
      n = @_
      return n.transform  if null is r
      if t._extractTransform(this, r)
      @clip and x(@clip,
        transform: @matrix.invert()
      )
      @pattern and y(this)
      @node and x(@node,
        transform: @matrix
      )
      1 isnt n.sx or 1 isnt n.sy
        i = (if @attrs[e]("stroke-width") then @attrs["stroke-width"] else 1)
        @attr "stroke-width": i
      this

    S.hide = ->
      not @removed and @paper.safari(@node.style.display = "none")
      this

    S.show = ->
      not @removed and @paper.safari(@node.style.display = "")
      this

    S.remove = ->
      if not @removed and @node.parentNode
        e = @paper
        e.__set__ and e.__set__.exclude(this)
        l.unbind("raphael.*.*." + @id)
        @gradient and e.defs.removeChild(@gradient)
        t._tear(this, e)
        (if "a" is @node.parentNode.tagName.toLowerCase() then @node.parentNode.parentNode.removeChild(@node.parentNode) else @node.parentNode.removeChild(@node))

        for r of this
          this[r] = (if "function" is typeof this[r] then t._removedFactory(r) else null)
        @removed = not 0

    S._getBBox = ->
      if "none" is @node.style.display
        @show()
        t = not 0
      e = {}
      try
        e = @node.getBBox()
      finally
        e = e or {}
      t and @hide()
      e

    S.attr = (r, n) ->
      return this  if @removed
      if null is r
        i = {}
        for a of @attrs
          @attrs[e](a) and (i[a] = @attrs[a])
        return i.gradient and "none" is i.fill and (i.fill = i.gradient) and delete i.gradient

        i.transform = @_.transform
        i
      if null is n and t.is(r, "string")
        return @attrs.gradient  if "fill" is r and "none" is @attrs.fill and @attrs.gradient
        return @_.transform  if "transform" is r
        s = r.split(h)
        o = {}
        u = 0
        c = s.length

        while c > u
          r = s[u]
          o[r] = (if r of @attrs then @attrs[r] else (if t.is(@paper.customAttributes[r], "function") then @paper.customAttributes[r].def else t._availableAttrs[r]))
          u++
        return (if c - 1 then o else o[s[0]])
      if null is n and t.is(r, "array")
        o = {}
        u = 0
        c = r.length

        while c > u
          o[r[u]] = @attr(r[u])
          u++
        return o
      unless null is n
        f = {}
        f[r] = n
      else
        null isnt r and t.is(r, "object") and (f = r)
      for p of f
        l "raphael.attr." + p + "." + @id, this, f[p]
      for p of @paper.customAttributes
        if @paper.customAttributes[e](p) and f[e](p) and t.is(@paper.customAttributes[p], "function")
          d = @paper.customAttributes[p].apply(this, [].concat(f[p]))
          @attrs[p] = f[p]
          for g of d
            d[e](g) and (f[g] = d[g])
      w(this, f)
      this

    S.toFront = ->
      return this  if @removed
      (if "a" is @node.parentNode.tagName.toLowerCase() then @node.parentNode.parentNode.appendChild(@node.parentNode) else @node.parentNode.appendChild(@node))
      e = @paper
      e.top isnt this and t._tofront(this, e)
      this

    S.toBack = ->
      return this  if @removed
      e = @node.parentNode
      (if "a" is e.tagName.toLowerCase() then e.parentNode.insertBefore(@node.parentNode, @node.parentNode.parentNode.firstChild) else e.firstChild isnt @node and e.insertBefore(@node, @node.parentNode.firstChild))
      t._toback(this, @paper)
      @paper
      this

    S.insertAfter = (e) ->
      return this  if @removed
      r = e.node or e[e.length - 1].node
      (if r.nextSibling then r.parentNode.insertBefore(@node, r.nextSibling) else r.parentNode.appendChild(@node))
      t._insertafter(this, e, @paper)
      this

    S.insertBefore = (e) ->
      return this  if @removed
      r = e.node or e[0].node
      r.parentNode.insertBefore(@node, r)
      t._insertbefore(this, e, @paper)
      this

    S.blur = (e) ->
      r = this
      if 0 isnt +e
        n = x("filter")
        i = x("feGaussianBlur")
        r.attrs.blur = e
        n.id = t.createUUID()
        x(i,
          stdDeviation: +e or 1.5
        )
        n.appendChild(i)
        r.paper.defs.appendChild(n)
        r._blur = n
        x(r.node,
          filter: "url(#" + n.id + ")"
        )
      else
        r._blur and (r._blur.parentNode.removeChild(r._blur)
        delete r._blur

        delete r.attrs.blur

        )
        r.node.removeAttribute("filter")

    t._engine.circle = (t, e, r, n) ->
      i = x("circle")
      t.canvas and t.canvas.appendChild(i)
      a = new B(i, t)
      a.attrs =
        cx: e
        cy: r
        r: n
        fill: "none"
        stroke: "#000"

      a.type = "circle"
      x(i, a.attrs)
      a

    t._engine.rect = (t, e, r, n, i, a) ->
      s = x("rect")
      t.canvas and t.canvas.appendChild(s)
      o = new B(s, t)
      o.attrs =
        x: e
        y: r
        width: n
        height: i
        r: a or 0
        rx: a or 0
        ry: a or 0
        fill: "none"
        stroke: "#000"

      o.type = "rect"
      x(s, o.attrs)
      o

    t._engine.ellipse = (t, e, r, n, i) ->
      a = x("ellipse")
      t.canvas and t.canvas.appendChild(a)
      s = new B(a, t)
      s.attrs =
        cx: e
        cy: r
        rx: n
        ry: i
        fill: "none"
        stroke: "#000"

      s.type = "ellipse"
      x(a, s.attrs)
      s

    t._engine.image = (t, e, r, n, i, a) ->
      s = x("image")
      x(s,
        x: r
        y: n
        width: i
        height: a
        preserveAspectRatio: "none"
      )
      s.setAttributeNS(p, "href", e)
      t.canvas and t.canvas.appendChild(s)

      o = new B(s, t)
      o.attrs =
        x: r
        y: n
        width: i
        height: a
        src: e

      o.type = "image"
      o

    t._engine.text = (e, r, n, i) ->
      a = x("text")
      e.canvas and e.canvas.appendChild(a)
      s = new B(a, e)
      s.attrs =
        x: r
        y: n
        "text-anchor": "middle"
        text: i
        font: t._availableAttrs.font
        stroke: "none"
        fill: "#000"

      s.type = "text"
      w(s, s.attrs)
      s

    t._engine.setSize = (t, e) ->
      @width = t or @width
      @height = e or @height
      @canvas.setAttribute("width", @width)
      @canvas.setAttribute("height", @height)
      @_viewBox and @setViewBox.apply(this, @_viewBox)
      this

    t._engine.create = ->
      e = t._getContainer.apply(0, arguments_)
      r = e and e.container
      n = e.x
      i = e.y
      a = e.width
      s = e.height
      throw Error("SVG container not found.")  unless r
      o = undefined
      u = x("svg")
      h = "overflow:hidden;"
      n = n or 0
      i = i or 0
      a = a or 512
      s = s or 342
      x(u,
        height: s
        version: 1.1
        width: a
        xmlns: "http://www.w3.org/2000/svg"
      )
      (if 1 is r then (u.style.cssText = h + "position:absolute;left:" + n + "px;top:" + i + "px"
      t._g.doc.body.appendChild(u)
      o = 1
      ) else (u.style.cssText = h + "position:relative"
      (if r.firstChild then r.insertBefore(u, r.firstChild) else r.appendChild(u))
      ))
      r = new t._Paper
      r.width = a
      r.height = s
      r.canvas = u
      r.clear()
      r._left = r._top = 0
      o and (r.renderfix = ->
      )
      r.renderfix()
      r

    t._engine.setViewBox = (t, e, r, n, i) ->
      l "raphael.setViewBox", this, @_viewBox, [t, e, r, n, i]
      a = undefined
      o = undefined
      u = s(r / @width, n / @height)
      h = @top
      c = (if i then "meet" else "xMinYMin")
      (if null is t then (@_vbSize and (u = 1)
      delete @_vbSize

      a = "0 0 " + @width + f + @height
      ) else (@_vbSize = u
      a = t + f + e + f + r + f + n
      ))
      x(@canvas,
        viewBox: a
        preserveAspectRatio: c
      )

      while u and h
        o = (if "stroke-width" of h.attrs then h.attrs["stroke-width"] else 1)
        h.attr("stroke-width": o)
        h._.dirty = 1
        h._.dirtyT = 1
        h = h.prev
      @_viewBox = [t, e, r, n, !!i]
      this

    t::renderfix = ->
      t = undefined
      e = @canvas
      r = e.style
      try
        t = e.getScreenCTM() or e.createSVGMatrix()
      catch n
        t = e.createSVGMatrix()
      i = -t.e % 1
      a = -t.f % 1
      (i or a) and (i and (@_left = (@_left + i) % 1
      r.left = @_left + "px"
      )
      a and (@_top = (@_top + a) % 1
      r.top = @_top + "px"
      )
      )

    t::clear = ->
      t.eve "raphael.clear", this
      e = @canvas

      while e.firstChild
        e.removeChild e.firstChild
      @bottom = @top = null
      (@desc = x("desc")).appendChild(t._g.doc.createTextNode("Created with Raphaël " + t.version))
      e.appendChild(@desc)
      e.appendChild(@defs = x("defs"))

    t::remove = ->
      l("raphael.remove", this)
      @canvas.parentNode and @canvas.parentNode.removeChild(@canvas)

      for e of this
        this[e] = (if "function" is typeof this[e] then t._removedFactory(e) else null)


    A = t.st
    for T of S
      S[e](T) and not A[e](T) and (A[T] = (t) ->
        ->
          e = arguments_
          @forEach (r) ->
            r[t].apply r, e

      (T))

((t, e) ->
  (if "function" is typeof define and define.amd then require(["raphael"], e) else t.Raphael and e(t.Raphael))
) this, (t) ->
  if t.vml
    e = "hasOwnProperty"
    r = String
    i = parseFloat
    n = Math
    a = n.round
    s = n.max
    o = n.min
    l = n.abs
    h = "fill"
    u = /[, ]+/
    c = t.eve
    f = " progid:DXImageTransform.Microsoft"
    p = " "
    d = ""
    g =
      M: "m"
      L: "l"
      C: "c"
      Z: "x"
      m: "t"
      l: "r"
      c: "v"
      z: "x"

    x = /([clmz]),?([^clmz]*)/g
    v = RegExp(" progid:\\S+Blur\\([^\\)]+\\)", "g")
    y = /-?[^,\s-]+/g
    m = "position:absolute;left:0;top:0;width:1px;height:1px"
    b = 21600
    _ =
      path: 1
      rect: 1
      image: 1

    w =
      circle: 1
      ellipse: 1

    k = (e) ->
      i = /[ahqstv]/g
      n = t._pathToAbsolute
      if r(e).match(i) and (n = t._path2curve)
      i = /[clmz]/g
      n is t._pathToAbsolute and not r(e).match(i)
        s = r(e).replace(x, (t, e, r) ->
          i = []
          n = "m" is e.toLowerCase()
          s = g[e]
          r.replace(y, (t) ->
            n and 2 is i.length and (s += i + g[(if "m" is e then "l" else "L")]
            i = []
            )
            i.push(a(t * b))
          )
          s + i
        )
        return s
      o = undefined
      l = undefined
      h = n(e)
      s = []
      u = 0
      c = h.length

      while c > u
        o = h[u]
        l = h[u][0].toLowerCase()
        "z" is l and (l = "x")

        f = 1
        v = o.length

        while v > f
          l += a(o[f] * b) + ((if f isnt v - 1 then "," else d))
          f++
        s.push l
        u++
      s.join p

    C = (e, r, i) ->
      n = t.matrix()
      n.rotate(-e, .5, .5)

        dx: n.x(r, i)
        dy: n.y(r, i)

    B = (t, e, r, i, n, a) ->
      s = t._
      o = t.matrix
      u = s.fillpos
      c = t.node
      f = c.style
      d = 1
      g = ""
      x = b / e
      v = b / r
      if f.visibility = "hidden"
      e and r
        if c.coordsize = l(x) + p + l(v)
        f.rotation = a * ((if 0 > e * r then -1 else 1))
        a
          y = C(a, i, n)
          i = y.dx
          n = y.dy
        if 0 > e and (g += "x")
        0 > r and (g += " y") and (d = -1)
        f.flip = g
        c.coordorigin = i * -x + p + n * -v
        u or s.fillsize
          m = c.getElementsByTagName(h)
          m = m and m[0]
          c.removeChild(m)
          u and (y = C(a, o.x(u[0], u[1]), o.y(u[0], u[1]))
          m.position = y.dx * d + p + y.dy * d
          )
          s.fillsize and (m.size = s.fillsize[0] * l(e) + p + s.fillsize[1] * l(r))
          c.appendChild(m)
        f.visibility = "visible"

    t.toString = ->
      "Your browser doesn’t support SVG. Falling down to VML.\nYou are running Raphaël " + @version

    S = (t, e, i) ->
      n = r(e).toLowerCase().split("-")
      a = (if i then "end" else "start")
      s = n.length
      o = "classic"
      l = "medium"
      h = "medium"

      while s--
        switch n[s]
          when "block", "classic"
        , "oval"
        , "diamond"
        , "open"
        , "none"
            o = n[s]
          when "wide", "narrow"
            h = n[s]
          when "long", "short"
            l = n[s]
      u = t.node.getElementsByTagName("stroke")[0]
      u[a + "arrow"] = o
      u[a + "arrowlength"] = l
      u[a + "arrowwidth"] = h

    A = (n, l) ->
      n.attrs = n.attrs or {}
      c = n.node
      f = n.attrs
      g = c.style
      x = _[n.type] and (l.x isnt f.x or l.y isnt f.y or l.width isnt f.width or l.height isnt f.height or l.cx isnt f.cx or l.cy isnt f.cy or l.rx isnt f.rx or l.ry isnt f.ry or l.r isnt f.r)
      v = w[n.type] and (f.cx isnt l.cx or f.cy isnt l.cy or f.r isnt l.r or f.rx isnt l.rx or f.ry isnt l.ry)
      y = n
      for m of l
        l[e](m) and (f[m] = l[m])
      if x and (f.path = t._getPath[n.type](n)
      n._.dirty = 1
      )
      l.href and (c.href = l.href)
      l.title and (c.title = l.title)
      l.target and (c.target = l.target)
      l.cursor and (g.cursor = l.cursor)
      "blur" of l and n.blur(l.blur)
      (l.path and "path" is n.type or x) and (c.path = k((if ~r(f.path).toLowerCase().indexOf("r") then t._pathToAbsolute(f.path) else f.path))
      "image" is n.type and (n._.fillpos = [f.x, f.y]
      n._.fillsize = [f.width, f.height]
      B(n, 1, 1, 0, 0, 0)
      )
      )
      "transform" of l and n.transform(l.transform)
      v
        C = +f.cx
        A = +f.cy
        N = +f.rx or +f.r or 0
        E = +f.ry or +f.r or 0
        c.path = t.format("ar{0},{1},{2},{3},{4},{1},{4},{1}x", a((C - N) * b), a((A - E) * b), a((C + N) * b), a((A + E) * b), a(C * b))
      if "clip-rect" of l
        M = r(l["clip-rect"]).split(u)
        if 4 is M.length
          M[2] = +M[2] + +M[0]
          M[3] = +M[3] + +M[1]

          z = c.clipRect or t._g.doc.createElement("div")
          F = z.style
          F.clip = t.format("rect({1}px {2}px {3}px {0}px)", M)
          c.clipRect or (F.position = "absolute"
          F.top = 0
          F.left = 0
          F.width = n.paper.width + "px"
          F.height = n.paper.height + "px"
          c.parentNode.insertBefore(z, c)
          z.appendChild(c)
          c.clipRect = z
          )
        l["clip-rect"] or c.clipRect and (c.clipRect.style.clip = "auto")
      if n.textpath
        R = n.textpath.style
        l.font and (R.font = l.font)
        l["font-family"] and (R.fontFamily = "\"" + l["font-family"].split(",")[0].replace(/^['"]+|['"]+$/g, d) + "\"")
        l["font-size"] and (R.fontSize = l["font-size"])
        l["font-weight"] and (R.fontWeight = l["font-weight"])
        l["font-style"] and (R.fontStyle = l["font-style"])
      if "arrow-start" of l and S(y, l["arrow-start"])
      "arrow-end" of l and S(y, l["arrow-end"], 1)
      null isnt l.opacity or null isnt l["stroke-width"] or null isnt l.fill or null isnt l.src or null isnt l.stroke or null isnt l["stroke-width"] or null isnt l["stroke-opacity"] or null isnt l["fill-opacity"] or null isnt l["stroke-dasharray"] or null isnt l["stroke-miterlimit"] or null isnt l["stroke-linejoin"] or null isnt l["stroke-linecap"]
        P = c.getElementsByTagName(h)
        I = not 1
        if P = P and P[0]
        not P and (I = P = L(h))
        "image" is n.type and l.src and (P.src = l.src)
        l.fill and (P.on = not 0)
        (null is P.on or "none" is l.fill or null is l.fill) and (P.on = not 1)
        P.on and l.fill
          j = r(l.fill).match(t._ISURL)
          if j
            P.parentNode is c and c.removeChild(P)
            P.rotate = not 0
            P.src = j[1]
            P.type = "tile"

            q = n.getBBox(1)
            P.position = q.x + p + q.y
            n._.fillpos = [q.x, q.y]
            t._preload(j[1], ->
              n._.fillsize = [@offsetWidth, @offsetHeight]
            )
          else
            P.color = t.getRGB(l.fill).hex
            P.src = d
            P.type = "solid"
            t.getRGB(l.fill).error and (y.type of
              circle: 1
              ellipse: 1
             or "r" isnt r(l.fill).charAt()) and T(y, l.fill, P) and (f.fill = "none"
            f.gradient = l.fill
            P.rotate = not 1
            )
        if "fill-opacity" of l or "opacity" of l
          D = ((+f["fill-opacity"] + 1 or 2) - 1) * ((+f.opacity + 1 or 2) - 1) * ((+t.getRGB(l.fill).o + 1 or 2) - 1)
          D = o(s(D, 0), 1)
          P.opacity = D
          P.src and (P.color = "none")
        c.appendChild P
        O = c.getElementsByTagName("stroke") and c.getElementsByTagName("stroke")[0]
        V = not 1
        not O and (V = O = L("stroke"))
        (l.stroke and "none" isnt l.stroke or l["stroke-width"] or null isnt l["stroke-opacity"] or l["stroke-dasharray"] or l["stroke-miterlimit"] or l["stroke-linejoin"] or l["stroke-linecap"]) and (O.on = not 0)
        ("none" is l.stroke or null is l.stroke or null is O.on or 0 is l.stroke or 0 is l["stroke-width"]) and (O.on = not 1)

        Y = t.getRGB(l.stroke)
        O.on and l.stroke and (O.color = Y.hex)
        D = ((+f["stroke-opacity"] + 1 or 2) - 1) * ((+f.opacity + 1 or 2) - 1) * ((+Y.o + 1 or 2) - 1)

        G = .75 * (i(l["stroke-width"]) or 1)
        if D = o(s(D, 0), 1)
        null is l["stroke-width"] and (G = f["stroke-width"])
        l["stroke-width"] and (O.weight = G)
        G and 1 > G and (D *= G) and (O.weight = 1)
        O.opacity = D
        l["stroke-linejoin"] and (O.joinstyle = l["stroke-linejoin"] or "miter")
        O.miterlimit = l["stroke-miterlimit"] or 8
        l["stroke-linecap"] and (O.endcap = (if "butt" is l["stroke-linecap"] then "flat" else (if "square" is l["stroke-linecap"] then "square" else "round")))
        l["stroke-dasharray"]
          W =
            "-": "shortdash"
            ".": "shortdot"
            "-.": "shortdashdot"
            "-..": "shortdashdotdot"
            ". ": "dot"
            "- ": "dash"
            "--": "longdash"
            "- .": "dashdot"
            "--.": "longdashdot"
            "--..": "longdashdotdot"

          O.dashstyle = (if W[e](l["stroke-dasharray"]) then W[l["stroke-dasharray"]] else d)
        V and c.appendChild(O)
      if "text" is y.type
        y.paper.canvas.style.display = d
        X = y.paper.span
        H = 100
        U = f.font and f.font.match(/\d+(?:\.\d*)?(?=px)/)
        g = X.style
        f.font and (g.font = f.font)
        f["font-family"] and (g.fontFamily = f["font-family"])
        f["font-weight"] and (g.fontWeight = f["font-weight"])
        f["font-style"] and (g.fontStyle = f["font-style"])
        U = i(f["font-size"] or U and U[0]) or 10
        g.fontSize = U * H + "px"
        y.textpath.string and (X.innerHTML = r(y.textpath.string).replace(/</g, "&#60;").replace(/&/g, "&#38;").replace(/\n/g, "<br>"))

        $ = X.getBoundingClientRect()
        y.W = f.w = ($.right - $.left) / H
        y.H = f.h = ($.bottom - $.top) / H
        y.X = f.x
        y.Y = f.y + y.H / 2
        ("x" of l or "y" of l) and (y.path.v = t.format("m{0},{1}l{2},{1}", a(f.x * b), a(f.y * b), a(f.x * b) + 1))

        Z = ["x", "y", "text", "font", "font-family", "font-weight", "font-style", "font-size"]
        Q = 0
        J = Z.length

        while J > Q
          if Z[Q] of l
            y._.dirty = 1
            break
          Q++
        switch f["text-anchor"]
          when "start"
            y.textpath.style["v-text-align"] = "left"
            y.bbx = y.W / 2
          when "end"
            y.textpath.style["v-text-align"] = "right"
            y.bbx = -y.W / 2
          else
            y.textpath.style["v-text-align"] = "center"
            y.bbx = 0
        y.textpath.style["v-text-kern"] = not 0

    T = (e, a, s) ->
      e.attrs = e.attrs or {}
      o = (e.attrs
      Math.pow
      )
      l = "linear"
      h = ".5 .5"
      if e.attrs.gradient = a
      a = r(a).replace(t._radial_gradient, (t, e, r) ->
        l = "radial"
        e and r and (e = i(e)
        r = i(r)
        o(e - .5, 2) + o(r - .5, 2) > .25 and (r = n.sqrt(.25 - o(e - .5, 2)) * (2 * (r > .5) - 1) + .5)
        h = e + p + r
        )
        d
      )
      a = a.split(/\s*\-\s*/)
      "linear" is l
        u = a.shift()
        return null  if u = -i(u)
        isNaN(u)
      c = t._parseDots(a)
      return null  unless c
      if e = e.shape or e.node
      c.length
        e.removeChild(s)
        s.on = not 0
        s.method = "none"
        s.color = c[0].color
        s.color2 = c[c.length - 1].color

        f = []
        g = 0
        x = c.length

        while x > g
          c[g].offset and f.push(c[g].offset + p + c[g].color)
          g++
        s.colors = (if f.length then f.join() else "0% " + s.color)
        (if "radial" is l then (s.type = "gradientTitle"
        s.focus = "100%"
        s.focussize = "0 0"
        s.focusposition = h
        s.angle = 0
        ) else (s.type = "gradient"
        s.angle = (270 - u) % 360
        ))
        e.appendChild(s)
      1

    N = (e, r) ->
      this[0] = @node = e
      e.raphael = not 0
      @id = t._oid++
      e.raphaelid = @id
      @X = 0
      @Y = 0
      @attrs = {}
      @paper = r
      @matrix = t.matrix()
      @_ =
        transform: []
        sx: 1
        sy: 1
        dx: 0
        dy: 0
        deg: 0
        dirty: 1
        dirtyT: 1

      not r.bottom and (r.bottom = this)
      @prev = r.top
      r.top and (r.top.next = this)
      r.top = this
      @next = null

    E = t.el
    N:: = E
    E.constructor = N
    E.transform = (e) ->
      return @_.transform  if null is e
      i = undefined
      n = @paper._viewBoxShift
      a = (if n then "s" + [n.scale, n.scale] + "-1-1t" + [n.dx, n.dy] else d)
      n and (i = e = r(e).replace(/\.{3}|\u2026/g, @_.transform or d))
      t._extractTransform(this, a + e)

      s = undefined
      o = @matrix.clone()
      l = @skew
      h = @node
      u = ~r(@attrs.fill).indexOf("-")
      c = not r(@attrs.fill).indexOf("url(")
      if o.translate(-.5, -.5)
      c or u or "image" is @type
        if l.matrix = "1 0 0 1"
        l.offset = "0 0"
        s = o.split()
        u and s.noRotation or not s.isSimple
          h.style.filter = o.toFilter()
          f = @getBBox()
          g = @getBBox(1)
          x = f.x - g.x
          v = f.y - g.y
          h.coordorigin = x * -b + p + v * -b
          B(this, 1, 1, x, v, 0)
        else
          h.style.filter = d
          B(this, s.scalex, s.scaley, s.dx, s.dy, s.rotate)
      else
        h.style.filter = d
        l.matrix = r(o)
        l.offset = o.offset()
      i and (@_.transform = i)
      this

    E.rotate = (t, e, n) ->
      return this  if @removed
      unless null is t
        if t = r(t).split(u)
        t.length - 1 and (e = i(t[1])
        n = i(t[2])
        )
        t = i(t[0])
        null is n and (e = n)
        null is e or null is n
          a = @getBBox(1)
          e = a.x + a.width / 2
          n = a.y + a.height / 2
        @_.dirtyT = 1
        @transform(@_.transform.concat([["r", t, e, n]]))
        this

    E.translate = (t, e) ->
      (if @removed then this else (t = r(t).split(u)
      t.length - 1 and (e = i(t[1]))
      t = i(t[0]) or 0
      e = +e or 0
      @_.bbox and (@_.bbox.x += t
      @_.bbox.y += e
      )
      @transform(@_.transform.concat([["t", t, e]]))
      this
      ))

    E.scale = (t, e, n, a) ->
      return this  if @removed
      s = @getBBox(1)  if t = r(t).split(u)
      t.length - 1 and (e = i(t[1])
      n = i(t[2])
      a = i(t[3])
      isNaN(n) and (n = null)
      isNaN(a) and (a = null)
      )
      t = i(t[0])
      null is e and (e = t)
      null is a and (n = a)
      null is n or null is a

      n = (if null is n then s.x + s.width / 2 else n)
      a = (if null is a then s.y + s.height / 2 else a)
      @transform(@_.transform.concat([["s", t, e, n, a]]))
      @_.dirtyT = 1
      this

    E.hide = ->
      not @removed and (@node.style.display = "none")
      this

    E.show = ->
      not @removed and (@node.style.display = d)
      this

    E._getBBox = ->
      (if @removed then {} else
        x: @X + (@bbx or 0) - @W / 2
        y: @Y - @H
        width: @W
        height: @H
      )

    E.remove = ->
      if not @removed and @node.parentNode
        @paper.__set__ and @paper.__set__.exclude(this)
        t.eve.unbind("raphael.*.*." + @id)
        t._tear(this, @paper)
        @node.parentNode.removeChild(@node)
        @shape and @shape.parentNode.removeChild(@shape)

        for e of this
          this[e] = (if "function" is typeof this[e] then t._removedFactory(e) else null)
        @removed = not 0

    E.attr = (r, i) ->
      return this  if @removed
      if null is r
        n = {}
        for a of @attrs
          @attrs[e](a) and (n[a] = @attrs[a])
        return n.gradient and "none" is n.fill and (n.fill = n.gradient) and delete n.gradient

        n.transform = @_.transform
        n
      if null is i and t.is(r, "string")
        return @attrs.gradient  if r is h and "none" is @attrs.fill and @attrs.gradient
        s = r.split(u)
        o = {}
        l = 0
        f = s.length

        while f > l
          r = s[l]
          o[r] = (if r of @attrs then @attrs[r] else (if t.is(@paper.customAttributes[r], "function") then @paper.customAttributes[r].def else t._availableAttrs[r]))
          l++
        return (if f - 1 then o else o[s[0]])
      if @attrs and null is i and t.is(r, "array")
        o = {}
        l = 0
        f = r.length

        while f > l
          o[r[l]] = @attr(r[l])
          l++
        return o
      p = undefined
      null isnt i and (p = {}
      p[r] = i
      )
      null is i and t.is(r, "object") and (p = r)

      for d of p
        c "raphael.attr." + d + "." + @id, this, p[d]
      if p
        for d of @paper.customAttributes
          if @paper.customAttributes[e](d) and p[e](d) and t.is(@paper.customAttributes[d], "function")
            g = @paper.customAttributes[d].apply(this, [].concat(p[d]))
            @attrs[d] = p[d]
            for x of g
              g[e](x) and (p[x] = g[x])
        p.text and "text" is @type and (@textpath.string = p.text)
        A(this, p)
      this

    E.toFront = ->
      not @removed and @node.parentNode.appendChild(@node)
      @paper and @paper.top isnt this and t._tofront(this, @paper)
      this

    E.toBack = ->
      (if @removed then this else (@node.parentNode.firstChild isnt @node and (@node.parentNode.insertBefore(@node, @node.parentNode.firstChild)
      t._toback(this, @paper)
      )
      this
      ))

    E.insertAfter = (e) ->
      (if @removed then this else (e.constructor is t.st.constructor and (e = e[e.length - 1])
      (if e.node.nextSibling then e.node.parentNode.insertBefore(@node, e.node.nextSibling) else e.node.parentNode.appendChild(@node))
      t._insertafter(this, e, @paper)
      this
      ))

    E.insertBefore = (e) ->
      (if @removed then this else (e.constructor is t.st.constructor and (e = e[0])
      e.node.parentNode.insertBefore(@node, e.node)
      t._insertbefore(this, e, @paper)
      this
      ))

    E.blur = (e) ->
      r = @node.runtimeStyle
      i = r.filter
      i = i.replace(v, d)
      (if 0 isnt +e then (@attrs.blur = e
      r.filter = i + p + f + ".Blur(pixelradius=" + (+e or 1.5) + ")"
      r.margin = t.format("-{0}px 0 0 -{0}px", a(+e or 1.5))
      ) else (r.filter = i
      r.margin = 0
      delete @attrs.blur

      ))

    t._engine.path = (t, e) ->
      r = L("shape")
      r.style.cssText = m
      r.coordsize = b + p + b
      r.coordorigin = e.coordorigin

      i = new N(r, e)
      n =
        fill: "none"
        stroke: "#000"

      t and (n.path = t)
      i.type = "path"
      i.path = []
      i.Path = d
      A(i, n)
      e.canvas.appendChild(r)

      a = L("skew")
      a.on = not 0
      r.appendChild(a)
      i.skew = a
      i.transform(d)
      i

    t._engine.rect = (e, r, i, n, a, s) ->
      o = t._rectPath(r, i, n, a, s)
      l = e.path(o)
      h = l.attrs
      l.X = h.x = r
      l.Y = h.y = i
      l.W = h.width = n
      l.H = h.height = a
      h.r = s
      h.path = o
      l.type = "rect"
      l

    t._engine.ellipse = (t, e, r, i, n) ->
      a = t.path()
      a.attrs
      a.X = e - i
      a.Y = r - n
      a.W = 2 * i
      a.H = 2 * n
      a.type = "ellipse"
      A(a,
        cx: e
        cy: r
        rx: i
        ry: n
      )
      a

    t._engine.circle = (t, e, r, i) ->
      n = t.path()
      n.attrs
      n.X = e - i
      n.Y = r - i
      n.W = n.H = 2 * i
      n.type = "circle"
      A(n,
        cx: e
        cy: r
        r: i
      )
      n

    t._engine.image = (e, r, i, n, a, s) ->
      o = t._rectPath(i, n, a, s)
      l = e.path(o).attr(stroke: "none")
      u = l.attrs
      c = l.node
      f = c.getElementsByTagName(h)[0]
      u.src = r
      l.X = u.x = i
      l.Y = u.y = n
      l.W = u.width = a
      l.H = u.height = s
      u.path = o
      l.type = "image"
      f.parentNode is c and c.removeChild(f)
      f.rotate = not 0
      f.src = r
      f.type = "tile"
      l._.fillpos = [i, n]
      l._.fillsize = [a, s]
      c.appendChild(f)
      B(l, 1, 1, 0, 0, 0)
      l

    t._engine.text = (e, i, n, s) ->
      o = L("shape")
      l = L("path")
      h = L("textpath")
      i = i or 0
      n = n or 0
      s = s or ""
      l.v = t.format("m{0},{1}l{2},{1}", a(i * b), a(n * b), a(i * b) + 1)
      l.textpathok = not 0
      h.string = r(s)
      h.on = not 0
      o.style.cssText = m
      o.coordsize = b + p + b
      o.coordorigin = "0 0"

      u = new N(o, e)
      c =
        fill: "#000"
        stroke: "none"
        font: t._availableAttrs.font
        text: s

      u.shape = o
      u.path = l
      u.textpath = h
      u.type = "text"
      u.attrs.text = r(s)
      u.attrs.x = i
      u.attrs.y = n
      u.attrs.w = 1
      u.attrs.h = 1
      A(u, c)
      o.appendChild(h)
      o.appendChild(l)
      e.canvas.appendChild(o)

      f = L("skew")
      f.on = not 0
      o.appendChild(f)
      u.skew = f
      u.transform(d)
      u

    t._engine.setSize = (e, r) ->
      i = @canvas.style
      @width = e
      @height = r
      e is +e and (e += "px")
      r is +r and (r += "px")
      i.width = e
      i.height = r
      i.clip = "rect(0 " + e + " " + r + " 0)"
      @_viewBox and t._engine.setViewBox.apply(this, @_viewBox)
      this

    t._engine.setViewBox = (e, r, i, n, a) ->
      t.eve "raphael.setViewBox", this, @_viewBox, [e, r, i, n, a]
      o = undefined
      l = undefined
      h = @width
      u = @height
      c = 1 / s(i / h, n / u)
      a and (o = u / n
      l = h / i
      h > i * o and (e -= (h - i * o) / 2 / o)
      u > n * l and (r -= (u - n * l) / 2 / l)
      )
      @_viewBox = [e, r, i, n, !!a]
      @_viewBoxShift =
        dx: -e
        dy: -r
        scale: c

      @forEach((t) ->
        t.transform "..."
      )
      this


    L = undefined
    t._engine.initWin = (t) ->
      e = t.document
      e.createStyleSheet().addRule ".rvml", "behavior:url(#default#VML)"
      try
        not e.namespaces.rvml and e.namespaces.add("rvml", "urn:schemas-microsoft-com:vml")
        L = (t) ->
          e.createElement "<rvml:" + t + " class=\"rvml\">"
      catch r
        L = (t) ->
          e.createElement "<" + t + " xmlns=\"urn:schemas-microsoft.com:vml\" class=\"rvml\">"

    t._engine.initWin(t._g.win)
    t._engine.create = ->
      e = t._getContainer.apply(0, arguments_)
      r = e.container
      i = e.height
      n = e.width
      a = e.x
      s = e.y
      throw Error("VML container not found.")  unless r
      o = new t._Paper
      l = o.canvas = t._g.doc.createElement("div")
      h = l.style
      a = a or 0
      s = s or 0
      n = n or 512
      i = i or 342
      o.width = n
      o.height = i
      n is +n and (n += "px")
      i is +i and (i += "px")
      o.coordsize = 1e3 * b + p + 1e3 * b
      o.coordorigin = "0 0"
      o.span = t._g.doc.createElement("span")
      o.span.style.cssText = "position:absolute;left:-9999em;top:-9999em;padding:0;margin:0;line-height:1;"
      l.appendChild(o.span)
      h.cssText = t.format("top:0;left:0;width:{0};height:{1};display:inline-block;position:relative;clip:rect(0 {0} {1} 0);overflow:hidden", n, i)
      (if 1 is r then (t._g.doc.body.appendChild(l)
      h.left = a + "px"
      h.top = s + "px"
      h.position = "absolute"
      ) else (if r.firstChild then r.insertBefore(l, r.firstChild) else r.appendChild(l)))
      o.renderfix = ->

      o

    t::clear = ->
      t.eve("raphael.clear", this)
      @canvas.innerHTML = d
      @span = t._g.doc.createElement("span")
      @span.style.cssText = "position:absolute;left:-9999em;top:-9999em;padding:0;margin:0;line-height:1;display:inline;"
      @canvas.appendChild(@span)
      @bottom = @top = null

    t::remove = ->
      t.eve("raphael.remove", this)
      @canvas.parentNode.removeChild(@canvas)

      for e of this
        this[e] = (if "function" is typeof this[e] then t._removedFactory(e) else null)
      not 0


    M = t.st
    for z of E
      E[e](z) and not M[e](z) and (M[z] = (t) ->
        ->
          e = arguments_
          @forEach (r) ->
            r[t].apply r, e

      (z))
