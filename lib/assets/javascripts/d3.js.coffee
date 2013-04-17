d3 = ->
  n = (n) ->
    null isnt n and not isNaN(n)
  t = (n) ->
    n.length
  e = (n) ->
    t = 1

    while n * t % 1
      t *= 10
    t
  r = (n, t) ->
    try
      for e of t
        Object.defineProperty n::, e,
          value: t[e]
          enumerable: not 1

    catch r
      n:: = t
  u = ->
  i = ->
  a = (n, t, e) ->
    ->
      r = e.apply(t, arguments_)
      (if r is t then n else r)
  o = ->
  c = (n) ->
    t = ->
      t = undefined
      r = e
      u = -1
      i = r.length

      while ++u < i
        (t = r[u].on) and t.apply(this, arguments_)
      n
    e = []
    r = new u
    t.on = (t, u) ->
      i = undefined
      a = r.get(t)
      (if arguments_.length < 2 then a and a.on else (a and (a.on = null
      e = e.slice(0, i = e.indexOf(a)).concat(e.slice(i + 1))
      r.remove(t)
      )
      u and e.push(r.set(t,
        on: u
      ))
      n
      ))

    t
  l = ->
    ca.event.stopPropagation()
    ca.event.preventDefault()
  f = ->
    n = undefined
    t = ca.event

    while n = t.sourceEvent
      t = n
    t
  s = (n, t) ->
    e = ->
      n.on t, null
    n.on(t, ->
      l()
      e()
    , not 0)
    setTimeout(e, 0)
  h = (n) ->
    t = new o
    e = 0
    r = arguments_.length

    while ++e < r
      t[arguments_[e]] = c(t)
    t.of = (e, r) ->
      (u) ->
        try
          i = u.sourceEvent = ca.event
          u.target = n
          ca.event = u
          t[u.type].apply(e, r)
        finally
          ca.event = i

    t
  g = (n, t) ->
    e = n.ownerSVGElement or n
    if e.createSVGPoint
      r = e.createSVGPoint()
      if 0 > va and (fa.scrollX or fa.scrollY)
        e = ca.select(la.body).append("svg").style("position", "absolute").style("top", 0).style("left", 0)
        u = e[0][0].getScreenCTM()
        va = not (u.f or u.e)
        e.remove()
      return (if va then (r.x = t.pageX
      r.y = t.pageY
      ) else (r.x = t.clientX
      r.y = t.clientY
      ))
      r = r.matrixTransform(n.getScreenCTM().inverse())
      [r.x, r.y]
    i = n.getBoundingClientRect()
    [t.clientX - i.left - n.clientLeft, t.clientY - i.top - n.clientTop]
  p = (n) ->
    t = -1
    e = n.length
    r = []

    while ++t < e
      r.push n[t]
    r
  d = (n) ->
    Array::slice.call n
  m = (n) ->
    xa(n, ka)
    n
  v = (n) ->
    ->
      ba n, this
  y = (n) ->
    ->
      _a n, this
  M = (n, t) ->
    e = ->
      @removeAttribute n
    r = ->
      @removeAttributeNS n.space, n.local
    u = ->
      @setAttribute n, t
    i = ->
      @setAttributeNS n.space, n.local, t
    a = ->
      e = t.apply(this, arguments_)
      (if null is e then @removeAttribute(n) else @setAttribute(n, e))
    o = ->
      e = t.apply(this, arguments_)
      (if null is e then @removeAttributeNS(n.space, n.local) else @setAttributeNS(n.space, n.local, e))
    n = ca.ns.qualify(n)
    (if null is t then (if n.local then r else e) else (if "function" is typeof t then (if n.local then o else a) else (if n.local then i else u)))
  x = (n) ->
    n.trim().replace /\s+/g, " "
  _ = (n) ->
    RegExp "(?:^|\\s+)" + ca.requote(n) + "(?:\\s+|$)", "g"
  w = (n, t) ->
    e = ->
      e = -1

      while ++e < u
        n[e] this, t
    r = ->
      e = -1
      r = t.apply(this, arguments_)

      while ++e < u
        n[e] this, r
    n = n.trim().split(/\s+/).map(S)
    u = n.length
    (if "function" is typeof t then r else e)
  S = (n) ->
    t = _(n)
    (e, r) ->
      return (if r then u.add(n) else u.remove(n))  if u = e.classList
      u = e.getAttribute("class") or ""
      (if r then (t.lastIndex = 0
      t.test(u) or e.setAttribute("class", x(u + " " + n))
      ) else e.setAttribute("class", x(u.replace(t, " "))))
  E = (n, t, e) ->
    r = ->
      @style.removeProperty n
    u = ->
      @style.setProperty n, t, e
    i = ->
      r = t.apply(this, arguments_)
      (if null is r then @style.removeProperty(n) else @style.setProperty(n, r, e))
    (if null is t then r else (if "function" is typeof t then i else u))
  k = (n, t) ->
    e = ->
      delete this[n]
    r = ->
      this[n] = t
    u = ->
      e = t.apply(this, arguments_)
      (if null is e then delete this[n]
       else this[n] = e)
    (if null is t then e else (if "function" is typeof t then u else r))
  A = (n) ->
    __data__: n
  q = (n) ->
    ->
      Ea this, n
  N = (n) ->
    arguments_.length or (n = ca.ascending)
    (t, e) ->
      not t - not e or n(t.__data__, e.__data__)
  T = ->
  C = (n, t, e) ->
    r = ->
      t = this[a]
      t and (@removeEventListener(n, t, t.$)
      delete this[a]

      )
    u = ->
      u = c(t, ya(arguments_))
      r.call(this)
      @addEventListener(n, this[a] = u, u.$ = e)
      u._ = t
    i = ->
      t = undefined
      e = RegExp("^__on([^.]+)" + ca.requote(n) + "$")
      for r of this
        if t = r.match(e)
          u = this[r]
          @removeEventListener(t[1], u, u.$)
          delete this[r]
    a = "__on" + n
    o = n.indexOf(".")
    c = z
    o > 0 and (n = n.substring(0, o))
    l = Na.get(n)
    l and (n = l
    c = D
    )
    (if o then (if t then u else r) else (if t then T else i))
  z = (n, t) ->
    (e) ->
      r = ca.event
      ca.event = e
      t[0] = @__data__

      try
        n.apply this, t
      finally
        ca.event = r
  D = (n, t) ->
    e = z(n, t)
    (n) ->
      t = this
      r = n.relatedTarget
      r and (r is t or r.compareDocumentPosition(t) & 8) or e.call(t, n)
  j = (n, t) ->
    e = 0
    r = n.length

    while r > e
      u = undefined
      i = n[e]
      a = 0
      o = i.length

      while o > a
        (u = i[a]) and t(u, a, e)
        a++
      e++
    n
  L = (n) ->
    xa(n, Ta)
    n
  F = ->
  H = (n, t, e) ->
    new P(n, t, e)
  P = (n, t, e) ->
    @h = n
    @s = t
    @l = e
  R = (n, t, e) ->
    r = (n) ->
      (if n > 360 then n -= 360 else 0 > n and (n += 360))
      (if 60 > n then i + (a - i) * n / 60 else (if 180 > n then a else (if 240 > n then i + (a - i) * (240 - n) / 60 else i)))
    u = (n) ->
      Math.round r(n) * 255
    i = undefined
    a = undefined
    n %= 360
    0 > n and (n += 360)
    t = (if 0 > t then 0 else (if t > 1 then 1 else t))
    e = (if 0 > e then 0 else (if e > 1 then 1 else e))
    a = (if .5 >= e then e * (1 + t) else e + t - e * t)
    i = 2 * e - a
    et(u(n + 120), u(n), u(n - 120))
  O = (n) ->
    (if n > 0 then 1 else (if 0 > n then -1 else 0))
  Y = (n) ->
    Math.acos Math.max(-1, Math.min(1, n))
  U = (n) ->
    (if n > 1 then Fa / 2 else (if -1 > n then -Fa / 2 else Math.asin(n)))
  I = (n) ->
    (Math.exp(n) - Math.exp(-n)) / 2
  V = (n) ->
    (Math.exp(n) + Math.exp(-n)) / 2
  X = (n) ->
    (n = Math.sin(n / 2)) * n
  Z = (n, t, e) ->
    new B(n, t, e)
  B = (n, t, e) ->
    @h = n
    @c = t
    @l = e
  $ = (n, t, e) ->
    J e, Math.cos(n *= Pa) * t, Math.sin(n) * t
  J = (n, t, e) ->
    new G(n, t, e)
  G = (n, t, e) ->
    @l = n
    @a = t
    @b = e
  K = (n, t, e) ->
    r = (n + 16) / 116
    u = r + t / 500
    i = r - e / 200
    u = Q(u) * Ua
    r = Q(r) * Ia
    i = Q(i) * Va
    et(tt(3.2404542 * u - 1.5371385 * r - .4985314 * i), tt(-.969266 * u + 1.8760108 * r + .041556 * i), tt(.0556434 * u - .2040259 * r + 1.0572252 * i))
  W = (n, t, e) ->
    Z Math.atan2(e, t) * Ra, Math.sqrt(t * t + e * e), n
  Q = (n) ->
    (if n > .206893034 then n * n * n else (n - 4 / 29) / 7.787037)
  nt = (n) ->
    (if n > .008856 then Math.pow(n, 1 / 3) else 7.787037 * n + 4 / 29)
  tt = (n) ->
    Math.round 255 * ((if .00304 >= n then 12.92 * n else 1.055 * Math.pow(n, 1 / 2.4) - .055))
  et = (n, t, e) ->
    new rt(n, t, e)
  rt = (n, t, e) ->
    @r = n
    @g = t
    @b = e
  ut = (n) ->
    (if 16 > n then "0" + Math.max(0, n).toString(16) else Math.min(255, n).toString(16))
  it = (n, t, e) ->
    r = undefined
    u = undefined
    i = undefined
    a = 0
    o = 0
    c = 0
    if r = /([a-z]+)\((.*)\)/i.exec(n)
      switch u = r[2].split(",")
      r[1]

        when "hsl"
          return e(parseFloat(u[0]), parseFloat(u[1]) / 100, parseFloat(u[2]) / 100)
        when "rgb"
          return t(lt(u[0]), lt(u[1]), lt(u[2]))
    (if (i = Ba.get(n)) then t(i.r, i.g, i.b) else (null isnt n and n.charAt(0) is "#" and ((if n.length is 4 then (a = n.charAt(1)
    a += a
    o = n.charAt(2)
    o += o
    c = n.charAt(3)
    c += c
    ) else n.length is 7 and (a = n.substring(1, 3)
    o = n.substring(3, 5)
    c = n.substring(5, 7)
    ))
    a = parseInt(a, 16)
    o = parseInt(o, 16)
    c = parseInt(c, 16)
    )
    t(a, o, c)
    ))
  at = (n, t, e) ->
    r = undefined
    u = undefined
    i = Math.min(n /= 255, t /= 255, e /= 255)
    a = Math.max(n, t, e)
    o = a - i
    c = (a + i) / 2
    (if o then (u = (if .5 > c then o / (a + i) else o / (2 - a - i))
    r = (if n is a then (t - e) / o + ((if e > t then 6 else 0)) else (if t is a then (e - n) / o + 2 else (n - t) / o + 4))
    r *= 60
    ) else u = r = 0)
    H(r, u, c)
  ot = (n, t, e) ->
    n = ct(n)
    t = ct(t)
    e = ct(e)

    r = nt((.4124564 * n + .3575761 * t + .1804375 * e) / Ua)
    u = nt((.2126729 * n + .7151522 * t + .072175 * e) / Ia)
    i = nt((.0193339 * n + .119192 * t + .9503041 * e) / Va)
    J 116 * u - 16, 500 * (r - u), 200 * (u - i)
  ct = (n) ->
    (if (n /= 255) <= .04045 then n / 12.92 else Math.pow((n + .055) / 1.055, 2.4))
  lt = (n) ->
    t = parseFloat(n)
    (if n.charAt(n.length - 1) is "%" then Math.round(2.55 * t) else t)
  ft = (n) ->
    (if "function" is typeof n then n else ->
      n
    )
  st = (n) ->
    n
  ht = (n) ->
    (if n.length is 1 then (t, e) ->
      n (if null is t then e else null)
     else n)
  gt = (n, t) ->
    e = (n, e, i) ->
      arguments_.length < 3 and (i = e
      e = null
      )
      a = ca.xhr(n, t, i)
      a.row = (n) ->
        (if arguments_.length then a.response((if not (e = n)? then r else u(n))) else e)

      a.row(e)
    r = (n) ->
      e.parse n.responseText
    u = (n) ->
      (t) ->
        e.parse t.responseText, n
    a = (t) ->
      t.map(o).join n
    o = (n) ->
      (if c.test(n) then "\"" + n.replace(/\"/g, "\"\"") + "\"" else n)
    c = RegExp("[\"" + n + "\n]")
    l = n.charCodeAt(0)
    e.parse = (n, t) ->
      r = undefined
      e.parseRows n, (n, e) ->
        return r(n, e - 1)  if r
        u = Function("d", "return {" + n.map((n, t) ->
          JSON.stringify(n) + ": d[" + t + "]"
        ).join(",") + "}")
        r = (if t then (n, e) ->
          t u(n), e
         else u)


    e.parseRows = (n, t) ->
      e = ->
        return a  if f >= c
        if u
          return u = not 1
          i
        t = f
        if n.charCodeAt(t) is 34
          e = t

          while e++ < c
            if n.charCodeAt(e) is 34
              break  if n.charCodeAt(e + 1) isnt 34
              ++e
          f = e + 2
          r = n.charCodeAt(e + 1)
          return (if 13 is r then (u = not 0
          n.charCodeAt(e + 2) is 10 and ++f
          ) else 10 is r and (u = not 0))
          n.substring(t + 1, e).replace(/""/g, "\"")
        while c > f
          r = n.charCodeAt(f++)
          o = 1
          if 10 is r
            u = not 0
          else if 13 is r
            u = not 0
            n.charCodeAt(f) is 10 and (++f
            ++o
            )
          else continue  if r isnt l
          return n.substring(t, f - o)
        n.substring t
      r = undefined
      u = undefined
      i = {}
      a = {}
      o = []
      c = n.length
      f = 0
      s = 0

      while (r = e()) isnt a
        h = []

        while r isnt i and r isnt a
          h.push(r)
          r = e()
        (not t or (h = t(h, s++))) and o.push(h)
      o

    e.format = (t) ->
      return e.formatRows(t)  if Array.isArray(t[0])
      r = new i
      u = []
      t.forEach((n) ->
        for t of n
          r.has(t) or u.push(r.add(t))
      )
      [u.map(o).join(n)].concat(t.map((t) ->
        u.map((n) ->
          o t[n]
        ).join n
      )).join("\n")

    e.formatRows = (n) ->
      n.map(a).join "\n"

    e
  pt = ->
    n = undefined
    t = Date.now()
    e = Wa

    while e
      n = t - e.then
      n >= e.delay and (e.flush = e.callback(n))
      e = e.next
    r = dt() - t
    (if r > 24 then (isFinite(r) and (clearTimeout(Ja)
    Ja = setTimeout(pt, r)
    )
    $a = 0
    ) else ($a = 1
    Qa(pt)
    ))
  dt = ->
    n = null
    t = Wa
    e = 1 / 0

    while t
      (if t.flush then (delete Ka[t.callback.id]

      t = (if n then n.next = t.next else Wa = t.next)
      ) else (e = Math.min(e, t.then + t.delay)
      t = (n = t).next
      ))
    e
  mt = (n, t) ->
    e = Math.pow(10, Math.abs(8 - t) * 3)
    scale: (if t > 8 then (n) ->
      n / e
     else (n) ->
      n * e
    )
    symbol: n
  vt = (n, t) ->
    t - ((if n then Math.ceil(Math.log(n) / Math.LN10) else 1))
  yt = (n) ->
    n + ""
  Mt = (n, t) ->
    n and lo.hasOwnProperty(n.type) and lo[n.type](n, t)
  xt = (n, t, e) ->
    r = undefined
    u = -1
    i = n.length - e
    t.lineStart()
    while ++u < i
      r = n[u]
      t.point(r[0], r[1])
    t.lineEnd()
  bt = (n, t) ->
    e = -1
    r = n.length
    t.polygonStart()
    while ++e < r
      xt n[e], t, 1
    t.polygonEnd()
  _t = ->
    n = (n, t) ->
      n *= Pa
      t = t * Pa / 2 + Fa / 4

      e = n - r
      a = Math.cos(t)
      o = Math.sin(t)
      c = i * o
      l = so
      f = ho
      s = u * a + c * Math.cos(e)
      h = c * Math.sin(e)
      so = l * s - f * h
      ho = f * s + l * h
      r = n
      u = a
      i = o
    t = undefined
    e = undefined
    r = undefined
    u = undefined
    i = undefined
    go.point = (a, o) ->
      go.point = n
      r = (t = a) * Pa
      u = Math.cos(o = (e = o) * Pa / 2 + Fa / 4)
      i = Math.sin(o)

    go.lineEnd = ->
      n t, e
  wt = (n) ->
    t = (n, t) ->
      r > n and (r = n)
      n > i and (i = n)
      u > t and (u = t)
      t > a and (a = t)
    e = ->
      o.point = o.lineEnd = T
    r = undefined
    u = undefined
    i = undefined
    a = undefined
    o =
      point: t
      lineStart: T
      lineEnd: T
      polygonStart: ->
        o.lineEnd = e

      polygonEnd: ->
        o.point = t

    (t) ->
      a = i = -(r = u = 1 / 0)
      ca.geo.stream(t, n(o))
      [[r, u], [i, a]]
  St = (n, t) ->
    unless po
      ++mo
      n *= Pa

      e = Math.cos(t *= Pa)
      vo += (e * Math.cos(n) - vo) / mo
      yo += (e * Math.sin(n) - yo) / mo
      Mo += (Math.sin(t) - Mo) / mo
  Et = ->
    n = undefined
    t = undefined
    po = 1
    kt()
    po = 2

    e = xo.point
    xo.point = (r, u) ->
      e n = r, t = u

    xo.lineEnd = ->
      xo.point(n, t)
      At()
      xo.lineEnd = At
  kt = ->
    n = (n, u) ->
      n *= Pa
      i = Math.cos(u *= Pa)
      a = i * Math.cos(n)
      o = i * Math.sin(n)
      c = Math.sin(u)
      l = Math.atan2(Math.sqrt((l = e * c - r * o) * l + (l = r * a - t * c) * l + (l = t * o - e * a) * l), t * a + e * o + r * c)
      mo += l
      vo += l * (t + (t = a))
      yo += l * (e + (e = o))
      Mo += l * (r + (r = c))
    t = undefined
    e = undefined
    r = undefined
    po > 1 or (1 > po and (po = 1
    mo = vo = yo = Mo = 0
    )
    xo.point = (u, i) ->
      u *= Pa
      a = Math.cos(i *= Pa)
      t = a * Math.cos(u)
      e = a * Math.sin(u)
      r = Math.sin(i)
      xo.point = n

    )
  At = ->
    xo.point = St
  qt = (n) ->
    t = n[0]
    e = n[1]
    r = Math.cos(e)
    [r * Math.cos(t), r * Math.sin(t), Math.sin(e)]
  Nt = (n, t) ->
    n[0] * t[0] + n[1] * t[1] + n[2] * t[2]
  Tt = (n, t) ->
    [n[1] * t[2] - n[2] * t[1], n[2] * t[0] - n[0] * t[2], n[0] * t[1] - n[1] * t[0]]
  Ct = (n, t) ->
    n[0] += t[0]
    n[1] += t[1]
    n[2] += t[2]
  zt = (n, t) ->
    [n[0] * t, n[1] * t, n[2] * t]
  Dt = (n) ->
    t = Math.sqrt(n[0] * n[0] + n[1] * n[1] + n[2] * n[2])
    n[0] /= t
    n[1] /= t
    n[2] /= t
  jt = ->
    not 0
  Lt = (n) ->
    [Math.atan2(n[1], n[0]), Math.asin(Math.max(-1, Math.min(1, n[2])))]
  Ft = (n, t) ->
    Math.abs(n[0] - t[0]) < Ha and Math.abs(n[1] - t[1]) < Ha
  Ht = (n, t, e, r, u) ->
    i = []
    a = []
    if n.forEach((n) ->
      unless (t = n.length - 1) <= 0
        t = undefined
        e = n[0]
        r = n[t]
        if Ft(e, r)
          u.lineStart()
          o = 0

          while t > o
            u.point (e = n[o])[0], e[1]
            ++o
          return u.lineEnd()
          undefined
        c =
          point: e
          points: n
          other: null
          visited: not 1
          entry: not 0
          subject: not 0

        l =
          point: e
          points: [e]
          other: c
          visited: not 1
          entry: not 1
          subject: not 1

        c.other = l
        i.push(c)
        a.push(l)
        c =
          point: r
          points: [r]
          other: null
          visited: not 1
          entry: not 1
          subject: not 0

        l =
          point: r
          points: [r]
          other: c
          visited: not 1
          entry: not 0
          subject: not 1

        c.other = l
        i.push(c)
        a.push(l)
    )
    a.sort(t)
    Pt(i)
    Pt(a)
    i.length
      if e
        o = 1
        c = not e(a[0].point)
        l = a.length

        while l > o
          a[o].entry = c = not c
          ++o
      f = undefined
      s = undefined
      h = undefined
      g = i[0]

      loop
        f = g
        while f.visited
          return  if (f = f.next) is g
        s = f.points
        u.lineStart()

        loop
          if f.visited = f.other.visited = not 0
          f.entry
            if f.subject
              o = 0

              while o < s.length
                u.point (h = s[o])[0], h[1]
                o++
            else
              r f.point, f.next.point, 1, u
            f = f.next
          else
            if f.subject
              s = f.prev.points
              o = s.length

              while --o >= 0
                u.point (h = s[o])[0], h[1]
            else
              r f.point, f.prev.point, -1, u
            f = f.prev
          f = f.other
          s = f.points
          break unless not f.visited
        u.lineEnd()
  Pt = (n) ->
    if t = n.length
      t = undefined
      e = undefined
      r = 0
      u = n[0]

      while ++r < t
        u.next = e = n[r]
        e.prev = u
        u = e
      u.next = e = n[0]
      e.prev = u
  Rt = (n, t, e) ->
    (r) ->
      u = (t, e) ->
        n(t, e) and r.point(t, e)
      i = (n, t) ->
        m.point n, t
      a = ->
        v.point = i
        m.lineStart()
      o = ->
        v.point = u
        m.lineEnd()
      c = (n, t) ->
        M.point(n, t)
        d.push([n, t])
      l = ->
        M.lineStart()
        d = []
      f = ->
        c(d[0][0], d[0][1])
        M.lineEnd()

        n = undefined
        t = M.clean()
        e = y.buffer()
        u = e.length
        unless u
          return p = not 0
          g += Ut(d, -1)
          d = null
          undefined
        if d = null
        1 & t
          n = e[0]
          h += Ut(n, 1)

          i = undefined
          u = n.length - 1
          a = -1
          r.lineStart()
          while ++a < u
            r.point (i = n[a])[0], i[1]
          return r.lineEnd()
          undefined
        u > 1 and 2 & t and e.push(e.pop().concat(e.shift()))
        s.push(e.filter(Ot))
      s = undefined
      h = undefined
      g = undefined
      p = undefined
      d = undefined
      m = t(r)
      v =
        point: u
        lineStart: a
        lineEnd: o
        polygonStart: ->
          v.point = c
          v.lineStart = l
          v.lineEnd = f
          p = not 1
          g = h = 0
          s = []
          r.polygonStart()

        polygonEnd: ->
          v.point = u
          v.lineStart = a
          v.lineEnd = o
          s = ca.merge(s)
          (if s.length then Ht(s, It, null, e, r) else (-Ha > h or p and -Ha > g) and (r.lineStart()
          e(null, null, 1, r)
          r.lineEnd()
          ))
          r.polygonEnd()
          s = null

        sphere: ->
          r.polygonStart()
          r.lineStart()
          e(null, null, 1, r)
          r.lineEnd()
          r.polygonEnd()

      y = Yt()
      M = t(y)
      v
  Ot = (n) ->
    n.length > 1
  Yt = ->
    n = undefined
    t = []
    lineStart: ->
      t.push n = []

    point: (t, e) ->
      n.push [t, e]

    lineEnd: T
    buffer: ->
      e = t
      t = []
      n = null
      e

    rejoin: ->
      t.length > 1 and t.push(t.pop().concat(t.shift()))
  Ut = (n, t) ->
    return 0  unless e = n.length
    e = undefined
    r = undefined
    u = undefined
    i = 0
    a = 0
    o = n[0]
    c = o[0]
    l = o[1]
    f = Math.cos(l)
    s = Math.atan2(t * Math.sin(c) * f, Math.sin(l))
    h = 1 - t * Math.cos(c) * f
    g = s

    while ++i < e
      o = n[i]
      f = Math.cos(l = o[1])
      r = Math.atan2(t * Math.sin(c = o[0]) * f, Math.sin(l))
      u = 1 - t * Math.cos(c) * f
      Math.abs(h - 2) < Ha and Math.abs(u - 2) < Ha or (Math.abs(u) < Ha or Math.abs(h) < Ha or ((if Math.abs(Math.abs(r - s) - Fa) < Ha then u + h > 2 and (a += 4 * (r - s)) else a += (if Math.abs(h - 2) < Ha then 4 * (r - g) else ((3 * Fa + r - s) % (2 * Fa) - Fa) * (h + u))))
      g = s
      s = r
      h = u
      )
    a
  It = (n, t) ->
    ((if (n = n.point)[0] < 0 then n[1] - Fa / 2 - Ha else Fa / 2 - n[1])) - ((if (t = t.point)[0] < 0 then t[1] - Fa / 2 - Ha else Fa / 2 - t[1]))
  Vt = (n) ->
    t = undefined
    e = 0 / 0
    r = 0 / 0
    u = 0 / 0
    lineStart: ->
      n.lineStart()
      t = 1

    point: (i, a) ->
      o = (if i > 0 then Fa else -Fa)
      c = Math.abs(i - e)
      (if Math.abs(c - Fa) < Ha then (n.point(e, r = (if (r + a) / 2 > 0 then Fa / 2 else -Fa / 2))
      n.point(u, r)
      n.lineEnd()
      n.lineStart()
      n.point(o, r)
      n.point(i, r)
      t = 0
      ) else u isnt o and c >= Fa and (Math.abs(e - u) < Ha and (e -= u * Ha)
      Math.abs(i - o) < Ha and (i -= o * Ha)
      r = Xt(e, r, i, a)
      n.point(u, r)
      n.lineEnd()
      n.lineStart()
      n.point(o, r)
      t = 0
      ))
      n.point(e = i, r = a)
      u = o

    lineEnd: ->
      n.lineEnd()
      e = r = 0 / 0

    clean: ->
      2 - t
  Xt = (n, t, e, r) ->
    u = undefined
    i = undefined
    a = Math.sin(n - e)
    (if Math.abs(a) > Ha then Math.atan((Math.sin(t) * (i = Math.cos(r)) * Math.sin(e) - Math.sin(r) * (u = Math.cos(t)) * Math.sin(n)) / (u * i * a)) else (t + r) / 2)
  Zt = (n, t, e, r) ->
    u = undefined
    if null is n
      u = e * Fa / 2
      r.point(-Fa, u)
      r.point(0, u)
      r.point(Fa, u)
      r.point(Fa, 0)
      r.point(Fa, -u)
      r.point(0, -u)
      r.point(-Fa, -u)
      r.point(-Fa, 0)
      r.point(-Fa, u)
    else if Math.abs(n[0] - t[0]) > Ha
      i = ((if n[0] < t[0] then 1 else -1)) * Fa
      u = e * i / 2
      r.point(-i, u)
      r.point(0, u)
      r.point(i, u)
    else
      r.point t[0], t[1]
  Bt = (n) ->
    t = (n, t) ->
      Math.cos(n) * Math.cos(t) > i
    e = (n) ->
      e = undefined
      i = undefined
      c = undefined
      l = undefined
      f = undefined
      lineStart: ->
        l = c = not 1
        f = 1

      point: (s, h) ->
        g = undefined
        p = [s, h]
        d = t(s, h)
        m = (if a then (if d then 0 else u(s, h)) else (if d then u(s + ((if 0 > s then Fa else -Fa)), h) else 0))
        if not e and (l = c = d) and n.lineStart()
        d isnt c and (g = r(e, p)
        (Ft(e, g) or Ft(p, g)) and (p[0] += Ha
        p[1] += Ha
        d = t(p[0], p[1])
        )
        )
        d isnt c
          f = 0
          (if d then (n.lineStart()
          g = r(p, e)
          n.point(g[0], g[1])
          ) else (g = r(e, p)
          n.point(g[0], g[1])
          n.lineEnd()
          ))
          e = g
        else if o and e and a ^ d
          v = undefined
          m & i or not (v = r(p, e, not 0)) or (f = 0
          (if a then (n.lineStart()
          n.point(v[0][0], v[0][1])
          n.point(v[1][0], v[1][1])
          n.lineEnd()
          ) else (n.point(v[1][0], v[1][1])
          n.lineEnd()
          n.lineStart()
          n.point(v[0][0], v[0][1])
          ))
          )
        not d or e and Ft(e, p) or n.point(p[0], p[1])
        e = p
        c = d
        i = m

      lineEnd: ->
        c and n.lineEnd()
        e = null

      clean: ->
        f | (l and c) << 1
    r = (n, t, e) ->
      r = qt(n)
      u = qt(t)
      a = [1, 0, 0]
      o = Tt(r, u)
      c = Nt(o, o)
      l = o[0]
      f = c - l * l
      return not e and n  unless f
      s = i * c / f
      h = -i * l / f
      g = Tt(a, o)
      p = zt(a, s)
      d = zt(o, h)
      Ct p, d
      m = g
      v = Nt(p, m)
      y = Nt(m, m)
      M = v * v - y * (Nt(p, p) - 1)
      unless 0 > M
        x = Math.sqrt(M)
        b = zt(m, (-v - x) / y)
        return b  if Ct(b, p)
        b = Lt(b)
        not e

        _ = undefined
        w = n[0]
        S = t[0]
        E = n[1]
        k = t[1]
        w > S and (_ = w
        w = S
        S = _
        )
        A = S - w
        q = Math.abs(A - Fa) < Ha
        N = q or Ha > A
        if not q and E > k and (_ = E
        E = k
        k = _
        )
        (if N then (if q then E + k > 0 ^ b[1] < ((if Math.abs(b[0] - w) < Ha then E else k)) else E <= b[1] and b[1] <= k) else A > Fa ^ (w <= b[0] and b[0] <= S))
          T = zt(m, (-v + x) / y)
          Ct(T, p)
          [b, Lt(T)]
    u = (t, e) ->
      r = (if a then n else Fa - n)
      u = 0
      (if -r > t then u |= 1 else t > r and (u |= 2))
      (if -r > e then u |= 4 else e > r and (u |= 8))
      u
    i = Math.cos(n)
    a = i > 0
    o = Math.abs(i) > Ha
    c = ae(n, 6 * Pa)
    Rt t, e, c
  $t = (n, t, e, r) ->
    u = (r, u) ->
      (if Math.abs(r[0] - n) < Ha then (if u > 0 then 0 else 3) else (if Math.abs(r[0] - e) < Ha then (if u > 0 then 2 else 1) else (if Math.abs(r[1] - t) < Ha then (if u > 0 then 1 else 0) else (if u > 0 then 3 else 2))))
    i = (n, t) ->
      a n.point, t.point
    a = (n, t) ->
      e = u(n, 1)
      r = u(t, 1)
      (if e isnt r then e - r else (if 0 is e then t[1] - n[1] else (if 1 is e then n[0] - t[0] else (if 2 is e then n[1] - t[1] else t[0] - n[0]))))
    o = (u, i) ->
      a = i[0] - u[0]
      o = i[1] - u[1]
      c = [0, 1]
      (if Math.abs(a) < Ha and Math.abs(o) < Ha then n <= u[0] and u[0] <= e and t <= u[1] and u[1] <= r else (if Jt(n - u[0], a, c) and Jt(u[0] - e, -a, c) and Jt(t - u[1], o, c) and Jt(u[1] - r, -o, c) then (c[1] < 1 and (i[0] = u[0] + c[1] * a
      i[1] = u[1] + c[1] * o
      )
      c[0] > 0 and (u[0] += c[0] * a
      u[1] += c[0] * o
      )
      not 0
      ) else not 1))
    (c) ->
      l = (i) ->
        a = u(i, -1)
        o = f([(if 0 is a or 3 is a then n else e), (if a > 1 then r else t)])
        o
      f = (n) ->
        t = 0
        e = M.length
        r = n[1]
        u = 0

        while e > u
          i = 1
          a = M[u]
          o = a.length
          c = a[0]

          while o > i
            b = a[i]
            (if c[1] <= r then b[1] > r and s(c, b, n) > 0 and ++t else b[1] <= r and s(c, b, n) < 0 and --t)
            c = b
            ++i
          ++u
        0 isnt t
      s = (n, t, e) ->
        (t[0] - n[0]) * (e[1] - n[1]) - (e[0] - n[0]) * (t[1] - n[1])
      h = (i, o, c, l) ->
        f = 0
        s = 0
        if null is i or (f = u(i, c)) isnt (s = u(o, c)) or a(i, o) < 0 ^ c > 0
          loop
            l.point (if 0 is f or 3 is f then n else e), (if f > 1 then r else t)
            break unless (f = (f + c + 4) % 4) isnt s
        else
          l.point o[0], o[1]
      g = (u, i) ->
        u >= n and e >= u and i >= t and r >= i
      p = (n, t) ->
        g(n, t) and c.point(n, t)
      d = ->
        C.point = v
        M and M.push(x = [])
        q = not 0
        A = not 1
        E = k = 0 / 0
      m = ->
        y and (v(_, w)
        S and A and T.rejoin()
        y.push(T.buffer())
        )
        C.point = p
        A and c.lineEnd()
      v = (n, t) ->
        n = Math.max(-_o, Math.min(_o, n))
        t = Math.max(-_o, Math.min(_o, t))

        e = g(n, t)
        if M and x.push([n, t])
        q
          _ = n
          w = t
          S = e
          q = not 1
          e and (c.lineStart()
          c.point(n, t)
          )
        else unless e and A
          r = [E, k]
          u = [n, t]
          (if o(r, u) then (A or (c.lineStart()
          c.point(r[0], r[1])
          )
          c.point(u[0], u[1])
          e or c.lineEnd()
          ) else (c.lineStart()
          c.point(n, t)
          ))
        E = n
        k = t
        A = e
      y = undefined
      M = undefined
      x = undefined
      _ = undefined
      w = undefined
      S = undefined
      E = undefined
      k = undefined
      A = undefined
      q = undefined
      N = c
      T = Yt()
      C =
        point: p
        lineStart: d
        lineEnd: m
        polygonStart: ->
          c = T
          y = []
          M = []

        polygonEnd: ->
          c = N
          (if (y = ca.merge(y)).length then (c.polygonStart()
          Ht(y, i, l, h, c)
          c.polygonEnd()
          ) else f([n, t]) and (c.polygonStart()
          c.lineStart()
          h(null, null, 1, c)
          c.lineEnd()
          c.polygonEnd()
          ))
          y = M = x = null

      C
  Jt = (n, t, e) ->
    return 0 >= n  if Math.abs(t) < Ha
    r = n / t
    if t > 0
      return not 1  if r > e[1]
      r > e[0] and (e[0] = r)
    else
      return not 1  if r < e[0]
      r < e[1] and (e[1] = r)
    not 0
  Gt = (n, t) ->
    e = (e, r) ->
      e = n(e, r)
      t(e[0], e[1])
    n.invert and t.invert and (e.invert = (e, r) ->
      e = t.invert(e, r)
      e and n.invert(e[0], e[1])
    )
    e
  Kt = (n) ->
    t = (t) ->
      r = (e, r) ->
        e = n(e, r)
        t.point(e[0], e[1])
      i = ->
        f = 0 / 0
        d.point = a
        t.lineStart()
      a = (r, i) ->
        a = qt([r, i])
        o = n(r, i)
        e(f, s, l, h, g, p, f = o[0], s = o[1], l = r, h = a[0], g = a[1], p = a[2], u, t)
        t.point(f, s)
      o = ->
        d.point = r
        t.lineEnd()
      c = ->
        n = undefined
        r = undefined
        c = undefined
        m = undefined
        v = undefined
        y = undefined
        M = undefined
        i()
        d.point = (t, e) ->
          a(n = t, r = e)
          c = f
          m = s
          v = h
          y = g
          M = p
          d.point = a

        d.lineEnd = ->
          e(f, s, l, h, g, p, c, m, n, v, y, M, u, t)
          d.lineEnd = o
          o()
      l = undefined
      f = undefined
      s = undefined
      h = undefined
      g = undefined
      p = undefined
      d =
        point: r
        lineStart: i
        lineEnd: o
        polygonStart: ->
          t.polygonStart()
          d.lineStart = c

        polygonEnd: ->
          t.polygonEnd()
          d.lineStart = i

      d
    e = (t, u, i, a, o, c, l, f, s, h, g, p, d, m) ->
      v = l - t
      y = f - u
      M = v * v + y * y
      if M > 4 * r and d--
        x = a + h
        b = o + g
        _ = c + p
        w = Math.sqrt(x * x + b * b + _ * _)
        S = Math.asin(_ /= w)
        E = (if Math.abs(Math.abs(_) - 1) < Ha then (i + s) / 2 else Math.atan2(b, x))
        k = n(E, S)
        A = k[0]
        q = k[1]
        N = A - t
        T = q - u
        C = y * N - v * T
        (C * C / M > r or Math.abs((v * N + y * T) / M - .5) > .3) and (e(t, u, i, a, o, c, A, q, E, x /= w, b /= w, _, d, m)
        m.point(A, q)
        e(A, q, E, x, b, _, l, f, s, h, g, p, d, m)
        )
    r = .5
    u = 16
    t.precision = (n) ->
      (if arguments_.length then (u = (r = n * n) > 0 and 16
      t
      ) else Math.sqrt(r))

    t
  Wt = (n) ->
    Qt(->
      n
    )()
  Qt = (n) ->
    t = (n) ->
      n = a(n[0] * Pa, n[1] * Pa)
      [n[0] * f + o, c - n[1] * f]
    e = (n) ->
      n = a.invert((n[0] - o) / f, (c - n[1]) / f)
      n and [n[0] * Ra, n[1] * Ra]
    r = ->
      a = Gt(i = ee(d, m, v), u)
      n = u(g, p)
      o = s - n[0] * f
      c = h + n[1] * f
      t
    u = undefined
    i = undefined
    a = undefined
    o = undefined
    c = undefined
    l = Kt((n, t) ->
      n = u(n, t)
      [n[0] * f + o, c - n[1] * f]
    )
    f = 150
    s = 480
    h = 250
    g = 0
    p = 0
    d = 0
    m = 0
    v = 0
    y = bo
    M = st
    x = null
    b = null
    t.stream = (n) ->
      ne i, y(l(M(n)))

    t.clipAngle = (n) ->
      (if arguments_.length then (y = (if null is n then (x = n
      bo
      ) else Bt((x = +n) * Pa))
      t
      ) else x)

    t.clipExtent = (n) ->
      (if arguments_.length then (b = n
      M = (if null is n then st else $t(n[0][0], n[0][1], n[1][0], n[1][1]))
      t
      ) else b)

    t.scale = (n) ->
      (if arguments_.length then (f = +n
      r()
      ) else f)

    t.translate = (n) ->
      (if arguments_.length then (s = +n[0]
      h = +n[1]
      r()
      ) else [s, h])

    t.center = (n) ->
      (if arguments_.length then (g = n[0] % 360 * Pa
      p = n[1] % 360 * Pa
      r()
      ) else [g * Ra, p * Ra])

    t.rotate = (n) ->
      (if arguments_.length then (d = n[0] % 360 * Pa
      m = n[1] % 360 * Pa
      v = (if n.length > 2 then n[2] % 360 * Pa else 0)
      r()
      ) else [d * Ra, m * Ra, v * Ra])

    ca.rebind(t, l, "precision")
    ->
      u = n.apply(this, arguments_)
      t.invert = u.invert and e
      r()
  ne = (n, t) ->
    point: (e, r) ->
      r = n(e * Pa, r * Pa)
      e = r[0]
      t.point((if e > Fa then e - 2 * Fa else (if -Fa > e then e + 2 * Fa else e)), r[1])

    sphere: ->
      t.sphere()

    lineStart: ->
      t.lineStart()

    lineEnd: ->
      t.lineEnd()

    polygonStart: ->
      t.polygonStart()

    polygonEnd: ->
      t.polygonEnd()
  te = (n, t) ->
    [n, t]
  ee = (n, t, e) ->
    (if n then (if t or e then Gt(ue(n), ie(t, e)) else ue(n)) else (if t or e then ie(t, e) else te))
  re = (n) ->
    (t, e) ->
      t += n
      [(if t > Fa then t - 2 * Fa else (if -Fa > t then t + 2 * Fa else t)), e]
  ue = (n) ->
    t = re(n)
    t.invert = re(-n)
    t
  ie = (n, t) ->
    e = (n, t) ->
      e = Math.cos(t)
      o = Math.cos(n) * e
      c = Math.sin(n) * e
      l = Math.sin(t)
      f = l * r + o * u
      [Math.atan2(c * i - f * a, o * r - l * u), Math.asin(Math.max(-1, Math.min(1, f * i + c * a)))]
    r = Math.cos(n)
    u = Math.sin(n)
    i = Math.cos(t)
    a = Math.sin(t)
    e.invert = (n, t) ->
      e = Math.cos(t)
      o = Math.cos(n) * e
      c = Math.sin(n) * e
      l = Math.sin(t)
      f = l * i - c * a
      [Math.atan2(c * i + l * a, o * r + f * u), Math.asin(Math.max(-1, Math.min(1, f * r - o * u)))]

    e
  ae = (n, t) ->
    e = Math.cos(n)
    r = Math.sin(n)
    (u, i, a, o) ->
      (if null isnt u then (u = oe(e, u)
      i = oe(e, i)
      ((if a > 0 then i > u else u > i)) and (u += 2 * a * Fa)
      ) else (u = n + 2 * a * Fa
      i = n
      ))
      c = undefined
      l = a * t
      f = u

      while (if a > 0 then f > i else i > f)
        o.point (c = Lt([e, -r * Math.cos(f), -r * Math.sin(f)]))[0], c[1]
        f -= l
  oe = (n, t) ->
    e = qt(t)
    e[0] -= n
    Dt(e)

    r = Y(-e[1])
    (((if -e[2] < 0 then -r else r)) + 2 * Math.PI - Ha) % (2 * Math.PI)
  ce = (n, t, e) ->
    r = ca.range(n, t - Ha, e).concat(t)
    (n) ->
      r.map (t) ->
        [n, t]

  le = (n, t, e) ->
    r = ca.range(n, t - Ha, e).concat(t)
    (n) ->
      r.map (t) ->
        [t, n]

  fe = (n) ->
    n.source
  se = (n) ->
    n.target
  he = (n, t, e, r) ->
    u = Math.cos(t)
    i = Math.sin(t)
    a = Math.cos(r)
    o = Math.sin(r)
    c = u * Math.cos(n)
    l = u * Math.sin(n)
    f = a * Math.cos(e)
    s = a * Math.sin(e)
    h = 2 * Math.asin(Math.sqrt(X(r - t) + u * a * X(e - n)))
    g = 1 / Math.sin(h)
    p = (if h then (n) ->
      t = Math.sin(n *= h) * g
      e = Math.sin(h - n) * g
      r = e * c + t * f
      u = e * l + t * s
      a = e * i + t * o
      [Math.atan2(u, r) * Ra, Math.atan2(a, Math.sqrt(r * r + u * u)) * Ra]
     else ->
      [n * Ra, t * Ra]
    )
    p.distance = h
    p
  ge = ->
    n = (n, u) ->
      i = Math.sin(u *= Pa)
      a = Math.cos(u)
      o = Math.abs((n *= Pa) - t)
      c = Math.cos(o)
      wo += Math.atan2(Math.sqrt((o = a * Math.sin(o)) * o + (o = r * i - e * a * c) * o), e * i + r * a * c)
      t = n
      e = i
      r = a
    t = undefined
    e = undefined
    r = undefined
    So.point = (u, i) ->
      t = u * Pa
      e = Math.sin(i *= Pa)
      r = Math.cos(i)
      So.point = n

    So.lineEnd = ->
      So.point = So.lineEnd = T
  pe = (n) ->
    t = 0
    e = Fa / 3
    r = Qt(n)
    u = r(t, e)
    u.parallels = (n) ->
      (if arguments_.length then r(t = n[0] * Fa / 180, e = n[1] * Fa / 180) else [180 * (t / Fa), 180 * (e / Fa)])

    u
  de = (n, t) ->
    e = (n, t) ->
      e = Math.sqrt(i - 2 * u * Math.sin(t)) / u
      [e * Math.sin(n *= u), a - e * Math.cos(n)]
    r = Math.sin(n)
    u = (r + Math.sin(t)) / 2
    i = 1 + r * (2 * u - r)
    a = Math.sqrt(i) / u
    e.invert = (n, t) ->
      e = a - t
      [Math.atan2(n, e) / u, Math.asin((i - (n * n + e * e) * u * u) / (2 * u))]

    e
  me = (n, t) ->
    e = n(t[0])
    r = n([.5 * (t[0][0] + t[1][0]), t[0][1]])
    u = n([t[1][0], t[0][1]])
    i = n(t[1])
    a = r[1] - e[1]
    o = r[0] - e[0]
    c = u[1] - r[1]
    l = u[0] - r[0]
    f = a / o
    s = c / l
    h = .5 * (f * s * (e[1] - u[1]) + s * (e[0] + r[0]) - f * (r[0] + u[0])) / (s - f)
    g = (.5 * (e[0] + r[0]) - h) / f + .5 * (e[1] + r[1])
    p = i[0] - h
    d = i[1] - g
    m = e[0] - h
    v = e[1] - g
    y = p * p + d * d
    M = m * m + v * v
    x = Math.atan2(d, p)
    b = Math.atan2(v, m)
    (t) ->
      e = t[0] - h
      r = t[1] - g
      u = e * e + r * r
      i = Math.atan2(r, e)
      (if u > y and M > u and i > x and b > i then n.invert(t) else undefined)
  ve = ->
    n = (n, t) ->
      ko += u * n - r * t
      r = n
      u = t
    t = undefined
    e = undefined
    r = undefined
    u = undefined
    Ao.point = (i, a) ->
      Ao.point = n
      t = r = i
      e = u = a

    Ao.lineEnd = ->
      n t, e
  ye = ->
    n = (n, t) ->
      a.push "M", n, ",", t, i
    t = (n, t) ->
      a.push("M", n, ",", t)
      o.point = e
    e = (n, t) ->
      a.push "L", n, ",", t
    r = ->
      o.point = n
    u = ->
      a.push "Z"
    i = Se(4.5)
    a = []
    o =
      point: n
      lineStart: ->
        o.point = t

      lineEnd: r
      polygonStart: ->
        o.lineEnd = u

      polygonEnd: ->
        o.lineEnd = r
        o.point = n

      pointRadius: (n) ->
        i = Se(n)
        o

      result: ->
        if a.length
          n = a.join("")
          a = []
          n

    o
  Me = (n, t) ->
    po or (vo += n
    yo += t
    ++Mo
    )
  xe = ->
    n = (n, r) ->
      u = n - t
      i = r - e
      a = Math.sqrt(u * u + i * i)
      vo += a * (t + n) / 2
      yo += a * (e + r) / 2
      Mo += a
      t = n
      e = r
    t = undefined
    e = undefined
    if 1 isnt po
      return  unless 1 > po
      po = 1
      vo = yo = Mo = 0
    qo.point = (r, u) ->
      qo.point = n
      t = r
      e = u
  be = ->
    qo.point = Me
  _e = ->
    n = (n, t) ->
      e = u * n - r * t
      vo += e * (r + n)
      yo += e * (u + t)
      Mo += 3 * e
      r = n
      u = t
    t = undefined
    e = undefined
    r = undefined
    u = undefined
    2 > po and (po = 2
    vo = yo = Mo = 0
    )
    qo.point = (i, a) ->
      qo.point = n
      t = r = i
      e = u = a

    qo.lineEnd = ->
      n t, e
  we = (n) ->
    t = (t, e) ->
      n.moveTo(t, e)
      n.arc(t, e, a, 0, 2 * Fa)
    e = (t, e) ->
      n.moveTo(t, e)
      o.point = r
    r = (t, e) ->
      n.lineTo t, e
    u = ->
      o.point = t
    i = ->
      n.closePath()
    a = 4.5
    o =
      point: t
      lineStart: ->
        o.point = e

      lineEnd: u
      polygonStart: ->
        o.lineEnd = i

      polygonEnd: ->
        o.lineEnd = u
        o.point = t

      pointRadius: (n) ->
        a = n
        o

      result: T

    o
  Se = (n) ->
    "m0," + n + "a" + n + "," + n + " 0 1,1 0," + -2 * n + "a" + n + "," + n + " 0 1,1 0," + 2 * n + "z"
  Ee = (n) ->
    t = Kt((t, e) ->
      n [t * Ra, e * Ra]
    )
    (n) ->
      n = t(n)

        point: (t, e) ->
          n.point t * Pa, e * Pa

        sphere: ->
          n.sphere()

        lineStart: ->
          n.lineStart()

        lineEnd: ->
          n.lineEnd()

        polygonStart: ->
          n.polygonStart()

        polygonEnd: ->
          n.polygonEnd()
  ke = (n, t) ->
    e = (t, e) ->
      r = Math.cos(t)
      u = Math.cos(e)
      i = n(r * u)
      [i * u * Math.sin(t), i * Math.sin(e)]
    e.invert = (n, e) ->
      r = Math.sqrt(n * n + e * e)
      u = t(r)
      i = Math.sin(u)
      a = Math.cos(u)
      [Math.atan2(n * i, r * a), Math.asin(r and e * i / r)]

    e
  Ae = (n, t) ->
    e = (n, t) ->
      e = (if Math.abs(Math.abs(t) - Fa / 2) < Ha then 0 else a / Math.pow(u(t), i))
      [e * Math.sin(i * n), a - e * Math.cos(i * n)]
    r = Math.cos(n)
    u = (n) ->
      Math.tan Fa / 4 + n / 2

    i = (if n is t then Math.sin(n) else Math.log(r / Math.cos(t)) / Math.log(u(t) / u(n)))
    a = r * Math.pow(u(n), i) / i
    (if i then (e.invert = (n, t) ->
      e = a - t
      r = O(i) * Math.sqrt(n * n + e * e)
      [Math.atan2(n, e) / i, 2 * Math.atan(Math.pow(a / r, 1 / i)) - Fa / 2]

    e
    ) else Ne)
  qe = (n, t) ->
    e = (n, t) ->
      e = i - t
      [e * Math.sin(u * n), i - e * Math.cos(u * n)]
    r = Math.cos(n)
    u = (if n is t then Math.sin(n) else (r - Math.cos(t)) / (t - n))
    i = r / u + n
    (if Math.abs(u) < Ha then te else (e.invert = (n, t) ->
      e = i - t
      [Math.atan2(n, e) / u, i - O(u) * Math.sqrt(n * n + e * e)]

    e
    ))
  Ne = (n, t) ->
    [n, Math.log(Math.tan(Fa / 4 + t / 2))]
  Te = (n) ->
    t = undefined
    e = Wt(n)
    r = e.scale
    u = e.translate
    i = e.clipExtent
    e.scale = ->
      n = r.apply(e, arguments_)
      (if n is e then (if t then e.clipExtent(null) else e) else n)

    e.translate = ->
      n = u.apply(e, arguments_)
      (if n is e then (if t then e.clipExtent(null) else e) else n)

    e.clipExtent = (n) ->
      a = i.apply(e, arguments_)
      if a is e
        if t = null is n
          o = Fa * r()
          c = u()
          i [[c[0] - o, c[1] - o], [c[0] + o, c[1] + o]]
      else
        t and (a = null)
      a

    e.clipExtent(null)
  Ce = (n, t) ->
    e = Math.cos(t) * Math.sin(n)
    [Math.log((1 + e) / (1 - e)) / 2, Math.atan2(Math.tan(t), Math.cos(n))]
  ze = (n) ->
    t = (t) ->
      a = ->
        l.push "M", i(n(f), o)
      c = undefined
      l = []
      f = []
      s = -1
      h = t.length
      g = ft(e)
      p = ft(r)

      while ++s < h
        (if u.call(this, c = t[s], s) then f.push([+g.call(this, c, s), +p.call(this, c, s)]) else f.length and (a()
        f = []
        ))
      f.length and a()
      (if l.length then l.join("") else null)
    e = De
    r = je
    u = jt
    i = Le
    a = i.key
    o = .7
    t.x = (n) ->
      (if arguments_.length then (e = n
      t
      ) else e)

    t.y = (n) ->
      (if arguments_.length then (r = n
      t
      ) else r)

    t.defined = (n) ->
      (if arguments_.length then (u = n
      t
      ) else u)

    t.interpolate = (n) ->
      (if arguments_.length then (a = (if "function" is typeof n then i = n else (i = jo.get(n) or Le).key)
      t
      ) else a)

    t.tension = (n) ->
      (if arguments_.length then (o = n
      t
      ) else o)

    t
  De = (n) ->
    n[0]
  je = (n) ->
    n[1]
  Le = (n) ->
    n.join "L"
  Fe = (n) ->
    Le(n) + "Z"
  He = (n) ->
    t = 0
    e = n.length
    r = n[0]
    u = [r[0], ",", r[1]]

    while ++t < e
      u.push "V", (r = n[t])[1], "H", r[0]
    u.join ""
  Pe = (n) ->
    t = 0
    e = n.length
    r = n[0]
    u = [r[0], ",", r[1]]

    while ++t < e
      u.push "H", (r = n[t])[0], "V", r[1]
    u.join ""
  Re = (n, t) ->
    (if n.length < 4 then Le(n) else n[1] + Ue(n.slice(1, n.length - 1), Ie(n, t)))
  Oe = (n, t) ->
    (if n.length < 3 then Le(n) else n[0] + Ue((n.push(n[0])
    n
    ), Ie([n[n.length - 2]].concat(n, [n[1]]), t)))
  Ye = (n, t) ->
    (if n.length < 3 then Le(n) else n[0] + Ue(n, Ie(n, t)))
  Ue = (n, t) ->
    return Le(n)  if t.length < 1 or n.length isnt t.length and n.length isnt t.length + 2
    e = n.length isnt t.length
    r = ""
    u = n[0]
    i = n[1]
    a = t[0]
    o = a
    c = 1
    if e and (r += "Q" + (i[0] - a[0] * 2 / 3) + "," + (i[1] - a[1] * 2 / 3) + "," + i[0] + "," + i[1]
    u = n[1]
    c = 2
    )
    t.length > 1
      o = t[1]
      i = n[c]
      c++
      r += "C" + (u[0] + a[0]) + "," + (u[1] + a[1]) + "," + (i[0] - o[0]) + "," + (i[1] - o[1]) + "," + i[0] + "," + i[1]

      l = 2

      while l < t.length
        i = n[c]
        o = t[l]
        r += "S" + (i[0] - o[0]) + "," + (i[1] - o[1]) + "," + i[0] + "," + i[1]
        l++
        c++
    if e
      f = n[c]
      r += "Q" + (i[0] + o[0] * 2 / 3) + "," + (i[1] + o[1] * 2 / 3) + "," + f[0] + "," + f[1]
    r
  Ie = (n, t) ->
    e = undefined
    r = []
    u = (1 - t) / 2
    i = n[0]
    a = n[1]
    o = 1
    c = n.length

    while ++o < c
      e = i
      i = a
      a = n[o]
      r.push([u * (a[0] - e[0]), u * (a[1] - e[1])])
    r
  Ve = (n) ->
    return Le(n)  if n.length < 3
    t = 1
    e = n.length
    r = n[0]
    u = r[0]
    i = r[1]
    a = [u, u, u, (r = n[1])[0]]
    o = [i, i, i, r[1]]
    c = [u, ",", i]
    Je(c, a, o)
    while ++t < e
      r = n[t]
      a.shift()
      a.push(r[0])
      o.shift()
      o.push(r[1])
      Je(c, a, o)
    t = -1
    while ++t < 2
      a.shift()
      a.push(r[0])
      o.shift()
      o.push(r[1])
      Je(c, a, o)
    c.join ""
  Xe = (n) ->
    return Le(n)  if n.length < 4
    t = undefined
    e = []
    r = -1
    u = n.length
    i = [0]
    a = [0]

    while ++r < 3
      t = n[r]
      i.push(t[0])
      a.push(t[1])
    e.push($e(Ho, i) + "," + $e(Ho, a))
    --r

    while ++r < u
      t = n[r]
      i.shift()
      i.push(t[0])
      a.shift()
      a.push(t[1])
      Je(e, i, a)
    e.join ""
  Ze = (n) ->
    t = undefined
    e = undefined
    r = -1
    u = n.length
    i = u + 4
    a = []
    o = []

    while ++r < 4
      e = n[r % u]
      a.push(e[0])
      o.push(e[1])
    t = [$e(Ho, a), ",", $e(Ho, o)]
    --r

    while ++r < i
      e = n[r % u]
      a.shift()
      a.push(e[0])
      o.shift()
      o.push(e[1])
      Je(t, a, o)
    t.join ""
  Be = (n, t) ->
    e = n.length - 1
    if e
      r = undefined
      u = undefined
      i = n[0][0]
      a = n[0][1]
      o = n[e][0] - i
      c = n[e][1] - a
      l = -1

      while ++l <= e
        r = n[l]
        u = l / e
        r[0] = t * r[0] + (1 - t) * (i + u * o)
        r[1] = t * r[1] + (1 - t) * (a + u * c)
    Ve n
  $e = (n, t) ->
    n[0] * t[0] + n[1] * t[1] + n[2] * t[2] + n[3] * t[3]
  Je = (n, t, e) ->
    n.push "C", $e(Lo, t), ",", $e(Lo, e), ",", $e(Fo, t), ",", $e(Fo, e), ",", $e(Ho, t), ",", $e(Ho, e)
  Ge = (n, t) ->
    (t[1] - n[1]) / (t[0] - n[0])
  Ke = (n) ->
    t = 0
    e = n.length - 1
    r = []
    u = n[0]
    i = n[1]
    a = r[0] = Ge(u, i)

    while ++t < e
      r[t] = (a + (a = Ge(u = i, i = n[t + 1]))) / 2
    r[t] = a
    r
  We = (n) ->
    t = undefined
    e = undefined
    r = undefined
    u = undefined
    i = []
    a = Ke(n)
    o = -1
    c = n.length - 1

    while ++o < c
      t = Ge(n[o], n[o + 1])
      (if Math.abs(t) < 1e-6 then a[o] = a[o + 1] = 0 else (e = a[o] / t
      r = a[o + 1] / t
      u = e * e + r * r
      u > 9 and (u = 3 * t / Math.sqrt(u)
      a[o] = u * e
      a[o + 1] = u * r
      )
      ))
    o = -1
    while ++o <= c
      u = (n[Math.min(c, o + 1)][0] - n[Math.max(0, o - 1)][0]) / (6 * (1 + a[o] * a[o]))
      i.push([u or 0, a[o] * u or 0])
    i
  Qe = (n) ->
    (if n.length < 3 then Le(n) else n[0] + Ue(n, We(n)))
  nr = (n, t, e, r) ->
    u = undefined
    i = undefined
    a = undefined
    o = undefined
    c = undefined
    l = undefined
    f = undefined
    u = r[n]
    i = u[0]
    a = u[1]
    u = r[t]
    o = u[0]
    c = u[1]
    u = r[e]
    l = u[0]
    f = u[1]
    (f - a) * (o - i) - (c - a) * (l - i) > 0
  tr = (n, t, e) ->
    (e[0] - t[0]) * (n[1] - t[1]) < (e[1] - t[1]) * (n[0] - t[0])
  er = (n, t, e, r) ->
    u = n[0]
    i = e[0]
    a = t[0] - u
    o = r[0] - i
    c = n[1]
    l = e[1]
    f = t[1] - c
    s = r[1] - l
    h = (o * (c - l) - s * (u - i)) / (s * a - o * f)
    [u + h * a, c + h * f]
  rr = (n, t) ->
    e =
      list: n.map((n, t) ->
        index: t
        x: n[0]
        y: n[1]
      ).sort((n, t) ->
        (if n.y < t.y then -1 else (if n.y > t.y then 1 else (if n.x < t.x then -1 else (if n.x > t.x then 1 else 0))))
      )
      bottomSite: null

    r =
      list: []
      leftEnd: null
      rightEnd: null
      init: ->
        r.leftEnd = r.createHalfEdge(null, "l")
        r.rightEnd = r.createHalfEdge(null, "l")
        r.leftEnd.r = r.rightEnd
        r.rightEnd.l = r.leftEnd
        r.list.unshift(r.leftEnd, r.rightEnd)

      createHalfEdge: (n, t) ->
        edge: n
        side: t
        vertex: null
        l: null
        r: null

      insert: (n, t) ->
        t.l = n
        t.r = n.r
        n.r.l = t
        n.r = t

      leftBound: (n) ->
        t = r.leftEnd
        loop
          t = t.r
          break unless t isnt r.rightEnd and u.rightOf(t, n)
        t = t.l

      del: (n) ->
        n.l.r = n.r
        n.r.l = n.l
        n.edge = null

      right: (n) ->
        n.r

      left: (n) ->
        n.l

      leftRegion: (n) ->
        (if not n.edge? then e.bottomSite else n.edge.region[n.side])

      rightRegion: (n) ->
        (if not n.edge? then e.bottomSite else n.edge.region[Po[n.side]])

    u =
      bisect: (n, t) ->
        e =
          region:
            l: n
            r: t

          ep:
            l: null
            r: null

        r = t.x - n.x
        u = t.y - n.y
        i = (if r > 0 then r else -r)
        a = (if u > 0 then u else -u)
        e.c = n.x * r + n.y * u + .5 * (r * r + u * u)
        (if i > a then (e.a = 1
        e.b = u / r
        e.c /= r
        ) else (e.b = 1
        e.a = r / u
        e.c /= u
        ))
        e

      intersect: (n, t) ->
        e = n.edge
        r = t.edge
        return null  if not e or not r or e.region.r is r.region.r
        u = e.a * r.b - e.b * r.a
        return null  if Math.abs(u) < 1e-10
        i = undefined
        a = undefined
        o = (e.c * r.b - r.c * e.b) / u
        c = (r.c * e.a - e.c * r.a) / u
        l = e.region.r
        f = r.region.r
        (if l.y < f.y or l.y is f.y and l.x < f.x then (i = n
        a = e
        ) else (i = t
        a = r
        ))
        s = o >= a.region.r.x
        (if s and i.side is "l" or not s and i.side is "r" then null else
          x: o
          y: c
        )

      rightOf: (n, t) ->
        e = n.edge
        r = e.region.r
        u = t.x > r.x
        return 1  if u and n.side is "l"
        return 0  if not u and n.side is "r"
        if e.a is 1
          i = t.y - r.y
          a = t.x - r.x
          o = 0
          c = 0
          if (if not u and e.b < 0 or u and e.b >= 0 then c = o = i >= e.b * a else (c = t.x + t.y * e.b > e.c
          e.b < 0 and (c = not c)
          c or (o = 1)
          ))
          not o
            l = r.x - e.region.l.x
            c = e.b * (a * a - i * i) < l * i * (1 + 2 * a / l + e.b * e.b)
            e.b < 0 and (c = not c)
        else
          f = e.c - e.a * t.x
          s = t.y - f
          h = t.x - r.x
          g = f - r.y
          c = s * s > h * h + g * g
        (if n.side is "l" then c else not c)

      endPoint: (n, e, r) ->
        n.ep[e] = r
        n.ep[Po[e]] and t(n)

      distance: (n, t) ->
        e = n.x - t.x
        r = n.y - t.y
        Math.sqrt e * e + r * r

    i =
      list: []
      insert: (n, t, e) ->
        n.vertex = t
        n.ystar = t.y + e

        r = 0
        u = i.list
        a = u.length

        while a > r
          o = u[r]
          break  unless n.ystar > o.ystar or n.ystar is o.ystar and t.x > o.vertex.x
          r++
        u.splice r, 0, n

      del: (n) ->
        t = 0
        e = i.list
        r = e.length

        while r > t and e[t] isnt n
          ++t
        e.splice t, 1

      empty: ->
        i.list.length is 0

      nextEvent: (n) ->
        t = 0
        e = i.list
        r = e.length

        while r > t
          return e[t + 1]  if e[t] is n
          ++t
        null

      min: ->
        n = i.list[0]
        x: n.vertex.x
        y: n.ystar

      extractMin: ->
        i.list.shift()

    r.init()
    e.bottomSite = e.list.shift()

    a = undefined
    o = undefined
    c = undefined
    l = undefined
    f = undefined
    s = undefined
    h = undefined
    g = undefined
    p = undefined
    d = undefined
    m = undefined
    v = undefined
    y = undefined
    M = e.list.shift()

    loop
      unless i.empty() or (a = i.min())
      M and (i.empty() or M.y < a.y or M.y is a.y and M.x < a.x)
        break  if i.empty()
        o = i.extractMin()
        l = r.left(o)
        c = r.right(o)
        f = r.right(c)
        h = r.leftRegion(o)
        g = r.rightRegion(c)
        m = o.vertex
        u.endPoint(o.edge, o.side, m)
        u.endPoint(c.edge, c.side, m)
        r.del(o)
        i.del(c)
        r.del(c)
        y = "l"
        h.y > g.y and (p = h
        h = g
        g = p
        y = "r"
        )
        v = u.bisect(h, g)
        s = r.createHalfEdge(v, y)
        r.insert(l, s)
        u.endPoint(v, Po[y], m)
        d = u.intersect(l, s)
        d and (i.del(l)
        i.insert(l, d, u.distance(d, h))
        )
        d = u.intersect(s, f)
        d and i.insert(s, d, u.distance(d, h))
    o = r.right(r.leftEnd)
    while o isnt r.rightEnd
      t o.edge
      o = r.right(o)
  ur = (n) ->
    n.x
  ir = (n) ->
    n.y
  ar = ->
    leaf: not 0
    nodes: []
    point: null
    x: null
    y: null
  or = (n, t, e, r, u, i) ->
    unless n(t, e, r, u, i)
      a = .5 * (e + u)
      o = .5 * (r + i)
      c = t.nodes
      c[0] and or_(n, c[0], e, r, a, o)
      c[1] and or_(n, c[1], a, r, u, o)
      c[2] and or_(n, c[2], e, o, a, i)
      c[3] and or_(n, c[3], a, o, u, i)
  cr = (n, t) ->
    n = ca.rgb(n)
    t = ca.rgb(t)

    e = n.r
    r = n.g
    u = n.b
    i = t.r - e
    a = t.g - r
    o = t.b - u
    (n) ->
      "#" + ut(Math.round(e + i * n)) + ut(Math.round(r + a * n)) + ut(Math.round(u + o * n))
  lr = (n) ->
    t = [n.a, n.b]
    e = [n.c, n.d]
    r = sr(t)
    u = fr(t, e)
    i = sr(hr(e, t, -u)) or 0
    t[0] * e[1] < e[0] * t[1] and (t[0] *= -1
    t[1] *= -1
    r *= -1
    u *= -1
    )
    @rotate = ((if r then Math.atan2(t[1], t[0]) else Math.atan2(-e[0], e[1]))) * Ra
    @translate = [n.e, n.f]
    @scale = [r, i]
    @skew = (if i then Math.atan2(u, i) * Ra else 0)
  fr = (n, t) ->
    n[0] * t[0] + n[1] * t[1]
  sr = (n) ->
    t = Math.sqrt(fr(n, n))
    t and (n[0] /= t
    n[1] /= t
    )
    t
  hr = (n, t, e) ->
    n[0] += e * t[0]
    n[1] += e * t[1]
    n
  gr = (n, t) ->
    t -= n = +n
    (e) ->
      n + t * e
  pr = (n, t) ->
    e = undefined
    r = []
    u = []
    i = ca.transform(n)
    a = ca.transform(t)
    o = i.translate
    c = a.translate
    l = i.rotate
    f = a.rotate
    s = i.skew
    h = a.skew
    g = i.scale
    p = a.scale
    (if o[0] isnt c[0] or o[1] isnt c[1] then (r.push("translate(", null, ",", null, ")")
    u.push(
      i: 1
      x: gr(o[0], c[0])
    ,
      i: 3
      x: gr(o[1], c[1])
    )
    ) else (if c[0] or c[1] then r.push("translate(" + c + ")") else r.push("")))
    (if l isnt f then ((if l - f > 180 then f += 360 else f - l > 180 and (l += 360))
    u.push(
      i: r.push(r.pop() + "rotate(", null, ")") - 2
      x: gr(l, f)
    )
    ) else f and r.push(r.pop() + "rotate(" + f + ")"))
    (if s isnt h then u.push(
      i: r.push(r.pop() + "skewX(", null, ")") - 2
      x: gr(s, h)
    ) else h and r.push(r.pop() + "skewX(" + h + ")"))
    (if g[0] isnt p[0] or g[1] isnt p[1] then (e = r.push(r.pop() + "scale(", null, ",", null, ")")
    u.push(
      i: e - 4
      x: gr(g[0], p[0])
    ,
      i: e - 2
      x: gr(g[1], p[1])
    )
    ) else (p[0] isnt 1 or p[1] isnt 1) and r.push(r.pop() + "scale(" + p + ")"))
    e = u.length
    (n) ->
      t = undefined
      i = -1

      while ++i < e
        r[(t = u[i]).i] = t.x(n)
      r.join ""
  dr = (n, t) ->
    e = undefined
    r = {}
    u = {}
    for e of n
      (if e of t then r[e] = yr(e)(n[e], t[e]) else u[e] = n[e])
    for e of t
      e of n or (u[e] = t[e])
    (n) ->
      for e of r
        u[e] = r[e](n)
      u
  mr = (n, t) ->
    e = undefined
    r = undefined
    u = undefined
    i = undefined
    a = undefined
    o = 0
    c = 0
    l = []
    f = []
    n += ""
    t += ""
    Oo.lastIndex = 0
    r = 0

    while e = Oo.exec(t)
      e.index and l.push(t.substring(o, c = e.index))
      f.push(
        i: l.length
        x: e[0]
      )
      l.push(null)
      o = Oo.lastIndex
      ++r
    o < t.length and l.push(t.substring(o))
    r = 0
    i = f.length

    while (e = Oo.exec(n)) and i > r
      if a = f[r]
      a.x is e[0]
        if a.i
          unless l[a.i + 1]?
            l[a.i - 1] += a.x
            l.splice(a.i, 1)
            u = r + 1

            while i > u
              f[u].i--
              ++u
          else
            l[a.i - 1] += a.x + l[a.i + 1]
            l.splice(a.i, 2)
            u = r + 1

            while i > u
              f[u].i -= 2
              ++u
        else unless l[a.i + 1]?
          l[a.i] = a.x
        else
          l[a.i] = a.x + l[a.i + 1]
          l.splice(a.i + 1, 1)
          u = r + 1

          while i > u
            f[u].i--
            ++u
        f.splice(r, 1)
        i--
        r--
      else
        a.x = gr(parseFloat(e[0]), parseFloat(a.x))
      ++r
    while i > r
      a = f.pop()
      (if not l[a.i + 1]? then l[a.i] = a.x else (l[a.i] = a.x + l[a.i + 1]
      l.splice(a.i + 1, 1)
      ))
      i--
    (if l.length is 1 then (if not l[0]? then f[0].x else ->
      t
    ) else (n) ->
      r = 0
      while i > r
        l[(a = f[r]).i] = a.x(n)
        ++r
      l.join ""
    )
  vr = (n, t) ->
    e = undefined
    r = ca.interpolators.length

    while --r >= 0 and not (e = ca.interpolators[r](n, t))

    e
  yr = (n) ->
    (if "transform" is n then pr else vr)
  Mr = (n, t) ->
    e = undefined
    r = []
    u = []
    i = n.length
    a = t.length
    o = Math.min(n.length, t.length)
    e = 0
    while o > e
      r.push vr(n[e], t[e])
      ++e
    while i > e
      u[e] = n[e]
      ++e
    while a > e
      u[e] = t[e]
      ++e
    (n) ->
      e = 0
      while o > e
        u[e] = r[e](n)
        ++e
      u
  xr = (n) ->
    (t) ->
      (if 0 >= t then 0 else (if t >= 1 then 1 else n(t)))
  br = (n) ->
    (t) ->
      1 - n(1 - t)
  _r = (n) ->
    (t) ->
      .5 * ((if .5 > t then n(2 * t) else 2 - n(2 - 2 * t)))
  wr = (n) ->
    n * n
  Sr = (n) ->
    n * n * n
  Er = (n) ->
    return 0  if 0 >= n
    return 1  if n >= 1
    t = n * n
    e = t * n
    4 * ((if .5 > n then e else 3 * (n - t) + e - .75))
  kr = (n) ->
    (t) ->
      Math.pow t, n
  Ar = (n) ->
    1 - Math.cos(n * Fa / 2)
  qr = (n) ->
    Math.pow 2, 10 * (n - 1)
  Nr = (n) ->
    1 - Math.sqrt(1 - n * n)
  Tr = (n, t) ->
    e = undefined
    arguments_.length < 2 and (t = .45)
    (if arguments_.length then e = t / (2 * Fa) * Math.asin(1 / n) else (n = 1
    e = t / 4
    ))
    (r) ->
      1 + n * Math.pow(2, 10 * -r) * Math.sin(2 * (r - e) * Fa / t)
  Cr = (n) ->
    n or (n = 1.70158)
    (t) ->
      t * t * ((n + 1) * t - n)
  zr = (n) ->
    (if 1 / 2.75 > n then 7.5625 * n * n else (if 2 / 2.75 > n then 7.5625 * (n -= 1.5 / 2.75) * n + .75 else (if 2.5 / 2.75 > n then 7.5625 * (n -= 2.25 / 2.75) * n + .9375 else 7.5625 * (n -= 2.625 / 2.75) * n + .984375)))
  Dr = (n, t) ->
    n = ca.hcl(n)
    t = ca.hcl(t)

    e = n.h
    r = n.c
    u = n.l
    i = t.h - e
    a = t.c - r
    o = t.l - u
    (if i > 180 then i -= 360 else -180 > i and (i += 360))
    (n) ->
      $(e + i * n, r + a * n, u + o * n) + ""
  jr = (n, t) ->
    n = ca.hsl(n)
    t = ca.hsl(t)

    e = n.h
    r = n.s
    u = n.l
    i = t.h - e
    a = t.s - r
    o = t.l - u
    (if i > 180 then i -= 360 else -180 > i and (i += 360))
    (n) ->
      R(e + i * n, r + a * n, u + o * n) + ""
  Lr = (n, t) ->
    n = ca.lab(n)
    t = ca.lab(t)

    e = n.l
    r = n.a
    u = n.b
    i = t.l - e
    a = t.a - r
    o = t.b - u
    (n) ->
      K(e + i * n, r + a * n, u + o * n) + ""
  Fr = (n, t) ->
    t -= n
    (e) ->
      Math.round n + t * e
  Hr = (n, t) ->
    t = (if t - (n = +n) then 1 / (t - n) else 0)
    (e) ->
      (e - n) * t
  Pr = (n, t) ->
    t = (if t - (n = +n) then 1 / (t - n) else 0)
    (e) ->
      Math.max 0, Math.min(1, (e - n) * t)
  Rr = (n) ->
    t = n.source
    e = n.target
    r = Yr(t, e)
    u = [t]

    while t isnt r
      t = t.parent
      u.push(t)
    i = u.length

    while e isnt r
      u.splice(i, 0, e)
      e = e.parent
    u
  Or = (n) ->
    t = []
    e = n.parent

    while null isnt e
      t.push(n)
      n = e
      e = e.parent
    t.push(n)
    t
  Yr = (n, t) ->
    return n  if n is t
    e = Or(n)
    r = Or(t)
    u = e.pop()
    i = r.pop()
    a = null

    while u is i
      a = u
      u = e.pop()
      i = r.pop()
    a
  Ur = (n) ->
    n.fixed |= 2
  Ir = (n) ->
    n.fixed &= -7
  Vr = (n) ->
    n.fixed |= 4
    n.px = n.x
    n.py = n.y
  Xr = (n) ->
    n.fixed &= -5
  Zr = (n, t, e) ->
    r = 0
    u = 0
    if n.charge = 0
    not n.leaf
      i = undefined
      a = n.nodes
      o = a.length
      c = -1

      while ++c < o
        i = a[c]
        null isnt i and (Zr(i, t, e)
        n.charge += i.charge
        r += i.charge * i.cx
        u += i.charge * i.cy
        )
    if n.point
      n.leaf or (n.point.x += Math.random() - .5
      n.point.y += Math.random() - .5
      )
      l = t * e[n.point.index]
      n.charge += n.pointCharge = l
      r += l * n.point.x
      u += l * n.point.y
    n.cx = r / n.charge
    n.cy = u / n.charge
  Br = (n, t) ->
    ca.rebind(n, t, "sort", "children", "value")
    n.nodes = n
    n.links = Kr
    n
  $r = (n) ->
    n.children
  Jr = (n) ->
    n.value
  Gr = (n, t) ->
    t.value - n.value
  Kr = (n) ->
    ca.merge n.map((n) ->
      (n.children or []).map (t) ->
        source: n
        target: t

    )
  Wr = (n) ->
    n.x
  Qr = (n) ->
    n.y
  nu = (n, t, e) ->
    n.y0 = t
    n.y = e
  tu = (n) ->
    ca.range n.length
  eu = (n) ->
    t = -1
    e = n[0].length
    r = []

    while ++t < e
      r[t] = 0
    r
  ru = (n) ->
    t = undefined
    e = 1
    r = 0
    u = n[0][1]
    i = n.length

    while i > e
      (t = n[e][1]) > u and (r = e
      u = t
      )
      ++e
    r
  uu = (n) ->
    n.reduce iu, 0
  iu = (n, t) ->
    n + t[1]
  au = (n, t) ->
    ou n, Math.ceil(Math.log(t.length) / Math.LN2 + 1)
  ou = (n, t) ->
    e = -1
    r = +n[0]
    u = (n[1] - r) / t
    i = []

    while ++e <= t
      i[e] = u * e + r
    i
  cu = (n) ->
    [ca.min(n), ca.max(n)]
  lu = (n, t) ->
    (if n.parent is t.parent then 1 else 2)
  fu = (n) ->
    t = n.children
    (if t and t.length then t[0] else n._tree.thread)
  su = (n) ->
    t = undefined
    e = n.children
    (if e and (t = e.length) then e[t - 1] else n._tree.thread)
  hu = (n, t) ->
    e = n.children
    if e and (u = e.length)
      r = undefined
      u = undefined
      i = -1

      while ++i < u
        t(r = hu(e[i], t), n) > 0 and (n = r)
    n
  gu = (n, t) ->
    n.x - t.x
  pu = (n, t) ->
    t.x - n.x
  du = (n, t) ->
    n.depth - t.depth
  mu = (n, t) ->
    e = (n, r) ->
      u = n.children
      if u and (a = u.length)
        i = undefined
        a = undefined
        o = null
        c = -1

        while ++c < a
          i = u[c]
          e(i, o)
          o = i
      t n, r
    e n, null
  vu = (n) ->
    t = undefined
    e = 0
    r = 0
    u = n.children
    i = u.length

    while --i >= 0
      t = u[i]._tree
      t.prelim += e
      t.mod += e
      e += t.shift + (r += t.change)
  yu = (n, t, e) ->
    n = n._tree
    t = t._tree

    r = e / (t.number - n.number)
    n.change += r
    t.change -= r
    t.shift += e
    t.prelim += e
    t.mod += e
  Mu = (n, t, e) ->
    (if n._tree.ancestor.parent is t.parent then n._tree.ancestor else e)
  xu = (n, t) ->
    n.value - t.value
  bu = (n, t) ->
    e = n._pack_next
    n._pack_next = t
    t._pack_prev = n
    t._pack_next = e
    e._pack_prev = t
  _u = (n, t) ->
    n._pack_next = t
    t._pack_prev = n
  wu = (n, t) ->
    e = t.x - n.x
    r = t.y - n.y
    u = n.r + t.r
    u * u - e * e - r * r > .001
  Su = (n) ->
    t = (n) ->
      f = Math.min(n.x - n.r, f)
      s = Math.max(n.x + n.r, s)
      h = Math.min(n.y - n.r, h)
      g = Math.max(n.y + n.r, g)
    if (e = n.children) and (l = e.length)
      e = undefined
      r = undefined
      u = undefined
      i = undefined
      a = undefined
      o = undefined
      c = undefined
      l = undefined
      f = 1 / 0
      s = -1 / 0
      h = 1 / 0
      g = -1 / 0
      if e.forEach(Eu)
      r = e[0]
      r.x = -r.r
      r.y = 0
      t(r)
      l > 1 and (u = e[1]
      u.x = u.r
      u.y = 0
      t(u)
      l > 2
      )
        i = e[2]
        qu(r, u, i)
        t(i)
        bu(r, i)
        r._pack_prev = i
        bu(i, u)
        u = r._pack_next
        a = 3

        while l > a
          qu r, u, i = e[a]
          p = 0
          d = 1
          m = 1
          o = u._pack_next
          while o isnt u
            if wu(o, i)
              p = 1
              break
            o = o._pack_next
            d++
          if 1 is p
            c = r._pack_prev
            while c isnt o._pack_prev and not wu(c, i)
              c = c._pack_prev
              m++
          (if p then ((if m > d or d is m and u.r < r.r then _u(r, u = o) else _u(r = c, u))
          a--
          ) else (bu(r, i)
          u = i
          t(i)
          ))
          a++
      v = (f + s) / 2
      y = (h + g) / 2
      M = 0
      a = 0
      while l > a
        i = e[a]
        i.x -= v
        i.y -= y
        M = Math.max(M, i.r + Math.sqrt(i.x * i.x + i.y * i.y))
        a++
      n.r = M
      e.forEach(ku)
  Eu = (n) ->
    n._pack_next = n._pack_prev = n
  ku = (n) ->
    delete n._pack_next

    delete n._pack_prev
  Au = (n, t, e, r) ->
    u = n.children
    if n.x = t += r * n.x
    n.y = e += r * n.y
    n.r *= r
    u
      i = -1
      a = u.length

      while ++i < a
        Au u[i], t, e, r
  qu = (n, t, e) ->
    r = n.r + e.r
    u = t.x - n.x
    i = t.y - n.y
    if r and (u or i)
      a = t.r + e.r
      o = u * u + i * i
      a *= a
      r *= r

      c = .5 + (r - a) / (2 * o)
      l = Math.sqrt(Math.max(0, 2 * a * (r + o) - (r -= o) * r - a * a)) / (2 * o)
      e.x = n.x + c * u + l * i
      e.y = n.y + c * i - l * u
    else
      e.x = n.x + r
      e.y = n.y
  Nu = (n) ->
    1 + ca.max(n, (n) ->
      n.y
    )
  Tu = (n) ->
    n.reduce((n, t) ->
      n + t.x
    , 0) / n.length
  Cu = (n) ->
    t = n.children
    (if t and t.length then Cu(t[0]) else n)
  zu = (n) ->
    t = undefined
    e = n.children
    (if e and (t = e.length) then zu(e[t - 1]) else n)
  Du = (n) ->
    x: n.x
    y: n.y
    dx: n.dx
    dy: n.dy
  ju = (n, t) ->
    e = n.x + t[3]
    r = n.y + t[0]
    u = n.dx - t[1] - t[3]
    i = n.dy - t[0] - t[2]
    0 > u and (e += u / 2
    u = 0
    )
    0 > i and (r += i / 2
    i = 0
    )

      x: e
      y: r
      dx: u
      dy: i
  Lu = (n) ->
    t = n[0]
    e = n[n.length - 1]
    (if e > t then [t, e] else [e, t])
  Fu = (n) ->
    (if n.rangeExtent then n.rangeExtent() else Lu(n.range()))
  Hu = (n, t, e, r) ->
    u = e(n[0], n[1])
    i = r(t[0], t[1])
    (n) ->
      i u(n)
  Pu = (n, t) ->
    e = undefined
    r = 0
    u = n.length - 1
    i = n[r]
    a = n[u]
    i > a and (e = r
    r = u
    u = e
    e = i
    i = a
    a = e
    )
    (t = t(a - i)) and (n[r] = t.floor(i)
    n[u] = t.ceil(a)
    )
    n
  Ru = (n, t, e, r) ->
    u = []
    i = []
    a = 0
    o = Math.min(n.length, t.length) - 1
    n[o] < n[0] and (n = n.slice().reverse()
    t = t.slice().reverse()
    )
    while ++a <= o
      u.push(e(n[a - 1], n[a]))
      i.push(r(t[a - 1], t[a]))
    (t) ->
      e = ca.bisect(n, t, 1, o) - 1
      i[e] u[e](t)
  Ou = (n, t, e, r) ->
    u = ->
      u = (if Math.min(n.length, t.length) > 2 then Ru else Hu)
      c = (if r then Pr else Hr)
      a = u(n, t, c, e)
      o = u(t, n, c, vr)
      i
    i = (n) ->
      a n
    a = undefined
    o = undefined
    i.invert = (n) ->
      o n

    i.domain = (t) ->
      (if arguments_.length then (n = t.map(Number)
      u()
      ) else n)

    i.range = (n) ->
      (if arguments_.length then (t = n
      u()
      ) else t)

    i.rangeRound = (n) ->
      i.range(n).interpolate Fr

    i.clamp = (n) ->
      (if arguments_.length then (r = n
      u()
      ) else r)

    i.interpolate = (n) ->
      (if arguments_.length then (e = n
      u()
      ) else e)

    i.ticks = (t) ->
      Vu n, t

    i.tickFormat = (t, e) ->
      Xu n, t, e

    i.nice = ->
      Pu(n, Uu)
      u()

    i.copy = ->
      Ou n, t, e, r

    u()
  Yu = (n, t) ->
    ca.rebind n, t, "range", "rangeRound", "interpolate", "clamp"
  Uu = (n) ->
    n = Math.pow(10, Math.round(Math.log(n) / Math.LN10) - 1)
    n and
      floor: (t) ->
        Math.floor(t / n) * n

      ceil: (t) ->
        Math.ceil(t / n) * n
  Iu = (n, t) ->
    e = Lu(n)
    r = e[1] - e[0]
    u = Math.pow(10, Math.floor(Math.log(r / t) / Math.LN10))
    i = t / r * u
    (if .15 >= i then u *= 10 else (if .35 >= i then u *= 5 else .75 >= i and (u *= 2)))
    e[0] = Math.ceil(e[0] / u) * u
    e[1] = Math.floor(e[1] / u) * u + .5 * u
    e[2] = u
    e
  Vu = (n, t) ->
    ca.range.apply ca, Iu(n, t)
  Xu = (n, t, e) ->
    r = -Math.floor(Math.log(Iu(n, t)[2]) / Math.LN10 + .01)
    ca.format (if e then e.replace(uo, (n, t, e, u, i, a, o, c, l, f) ->
      [t, e, u, i, a, o, c, l or "." + (r - 2 * ("%" is f)), f].join ""
    ) else ",." + r + "f")
  Zu = (n, t, e, r) ->
    u = (t) ->
      n e(t)
    u.invert = (t) ->
      r n.invert(t)

    u.domain = (t) ->
      (if arguments_.length then ((if t[0] < 0 then (e = Ju
      r = Gu
      ) else (e = Bu
      r = $u
      ))
      n.domain(t.map(e))
      u
      ) else n.domain().map(r))

    u.base = (n) ->
      (if arguments_.length then (t = +n
      u
      ) else t)

    u.nice = ->
      n.domain(Pu(n.domain(), Ku(t)))
      u

    u.ticks = ->
      u = Lu(n.domain())
      i = []
      if u.every(isFinite)
        a = Math.log(t)
        o = Math.floor(u[0] / a)
        c = Math.ceil(u[1] / a)
        l = r(u[0])
        f = r(u[1])
        s = (if t % 1 then 2 else t)
        unless e is Ju
          while c > o
            h = 1

            while s > h
              i.push Math.pow(t, o) * h
              h++
            o++
          i.push Math.pow(t, o)
        o = 0
        while i[o] < l
          o++
        c = i.length
        while i[c - 1] > f
          c--
        i = i.slice(o, c)
      i

    u.tickFormat = (n, i) ->
      return i  if arguments_.length < 2 and (i = Jo)
      not arguments_.length

      a = undefined
      o = Math.log(t)
      c = Math.max(.1, n / u.ticks().length)
      l = (if e is Ju then (a = -1e-12
      Math.floor
      ) else (a = 1e-12
      Math.ceil
      ))
      (n) ->
        (if n / r(o * l(e(n) / o + a)) <= c then i(n) else "")

    u.copy = ->
      Zu n.copy(), t, e, r

    Yu(u, n)
  Bu = (n) ->
    Math.log (if 0 > n then 0 else n)
  $u = (n) ->
    Math.exp n
  Ju = (n) ->
    -Math.log((if n > 0 then 0 else -n))
  Gu = (n) ->
    -Math.exp(-n)
  Ku = (n) ->
    n = Math.log(n)
    t =
      floor: (t) ->
        Math.floor(t / n) * n

      ceil: (t) ->
        Math.ceil(t / n) * n

    ->
      t
  Wu = (n, t) ->
    e = (t) ->
      n r(t)
    r = Qu(t)
    u = Qu(1 / t)
    e.invert = (t) ->
      u n.invert(t)

    e.domain = (t) ->
      (if arguments_.length then (n.domain(t.map(r))
      e
      ) else n.domain().map(u))

    e.ticks = (n) ->
      Vu e.domain(), n

    e.tickFormat = (n, t) ->
      Xu e.domain(), n, t

    e.nice = ->
      e.domain Pu(e.domain(), Uu)

    e.exponent = (n) ->
      return t  unless arguments_.length
      i = e.domain()
      r = Qu(t = n)
      u = Qu(1 / t)
      e.domain(i)

    e.copy = ->
      Wu n.copy(), t

    Yu(e, n)
  Qu = (n) ->
    (t) ->
      (if 0 > t then -Math.pow(-t, n) else Math.pow(t, n))
  ni = (n, t) ->
    e = (t) ->
      a[((i.get(t) or i.set(t, n.push(t))) - 1) % a.length]
    r = (t, e) ->
      ca.range(n.length).map (n) ->
        t + e * n

    i = undefined
    a = undefined
    o = undefined
    e.domain = (r) ->
      return n  unless arguments_.length
      n = []
      i = new u

      a = undefined
      o = -1
      c = r.length

      while ++o < c
        i.has(a = r[o]) or i.set(a, n.push(a))
      e[t.t].apply e, t.a

    e.range = (n) ->
      (if arguments_.length then (a = n
      o = 0
      t =
        t: "range"
        a: arguments_

      e
      ) else a)

    e.rangePoints = (u, i) ->
      arguments_.length < 2 and (i = 0)
      c = u[0]
      l = u[1]
      f = (l - c) / (Math.max(1, n.length - 1) + i)
      a = r((if n.length < 2 then (c + l) / 2 else c + f * i / 2), f)
      o = 0
      t =
        t: "rangePoints"
        a: arguments_

      e

    e.rangeBands = (u, i, c) ->
      arguments_.length < 2 and (i = 0)
      arguments_.length < 3 and (c = i)

      l = u[1] < u[0]
      f = u[l - 0]
      s = u[1 - l]
      h = (s - f) / (n.length - i + 2 * c)
      a = r(f + h * c, h)
      l and a.reverse()
      o = h * (1 - i)
      t =
        t: "rangeBands"
        a: arguments_

      e

    e.rangeRoundBands = (u, i, c) ->
      arguments_.length < 2 and (i = 0)
      arguments_.length < 3 and (c = i)

      l = u[1] < u[0]
      f = u[l - 0]
      s = u[1 - l]
      h = Math.floor((s - f) / (n.length - i + 2 * c))
      g = s - f - (n.length - i) * h
      a = r(f + Math.round(g / 2), h)
      l and a.reverse()
      o = Math.round(h * (1 - i))
      t =
        t: "rangeRoundBands"
        a: arguments_

      e

    e.rangeBand = ->
      o

    e.rangeExtent = ->
      Lu t.a[0]

    e.copy = ->
      ni n, t

    e.domain(n)
  ti = (n, t) ->
    e = ->
      e = 0
      i = t.length
      u = []
      while ++e < i
        u[e - 1] = ca.quantile(n, e / i)
      r
    r = (n) ->
      (if isNaN(n = +n) then 0 / 0 else t[ca.bisect(u, n)])
    u = undefined
    r.domain = (t) ->
      (if arguments_.length then (n = t.filter((n) ->
        not isNaN(n)
      ).sort(ca.ascending)
      e()
      ) else n)

    r.range = (n) ->
      (if arguments_.length then (t = n
      e()
      ) else t)

    r.quantiles = ->
      u

    r.copy = ->
      ti n, t

    e()
  ei = (n, t, e) ->
    r = (t) ->
      e[Math.max(0, Math.min(a, Math.floor(i * (t - n))))]
    u = ->
      i = e.length / (t - n)
      a = e.length - 1
      r
    i = undefined
    a = undefined
    r.domain = (e) ->
      (if arguments_.length then (n = +e[0]
      t = +e[e.length - 1]
      u()
      ) else [n, t])

    r.range = (n) ->
      (if arguments_.length then (e = n
      u()
      ) else e)

    r.copy = ->
      ei n, t, e

    u()
  ri = (n, t) ->
    e = (e) ->
      t[ca.bisect(n, e)]
    e.domain = (t) ->
      (if arguments_.length then (n = t
      e
      ) else n)

    e.range = (n) ->
      (if arguments_.length then (t = n
      e
      ) else t)

    e.copy = ->
      ri n, t

    e
  ui = (n) ->
    t = (n) ->
      +n
    t.invert = t
    t.domain = t.range = (e) ->
      (if arguments_.length then (n = e.map(t)
      t
      ) else n)

    t.ticks = (t) ->
      Vu n, t

    t.tickFormat = (t, e) ->
      Xu n, t, e

    t.copy = ->
      ui n

    t
  ii = (n) ->
    n.innerRadius
  ai = (n) ->
    n.outerRadius
  oi = (n) ->
    n.startAngle
  ci = (n) ->
    n.endAngle
  li = (n) ->
    t = undefined
    e = undefined
    r = undefined
    u = -1
    i = n.length

    while ++u < i
      t = n[u]
      e = t[0]
      r = t[1] + nc
      t[0] = e * Math.cos(r)
      t[1] = e * Math.sin(r)
    n
  fi = (n) ->
    t = (t) ->
      c = ->
        d.push "M", o(n(v), s), f, l(n(m.reverse()), s), "Z"
      h = undefined
      g = undefined
      p = undefined
      d = []
      m = []
      v = []
      y = -1
      M = t.length
      x = ft(e)
      b = ft(u)
      _ = (if e is r then ->
        g
       else ft(r))
      w = (if u is i then ->
        p
       else ft(i))

      while ++y < M
        (if a.call(this, h = t[y], y) then (m.push([g = +x.call(this, h, y), p = +b.call(this, h, y)])
        v.push([+_.call(this, h, y), +w.call(this, h, y)])
        ) else m.length and (c()
        m = []
        v = []
        ))
      m.length and c()
      (if d.length then d.join("") else null)
    e = De
    r = De
    u = 0
    i = je
    a = jt
    o = Le
    c = o.key
    l = o
    f = "L"
    s = .7
    t.x = (n) ->
      (if arguments_.length then (e = r = n
      t
      ) else r)

    t.x0 = (n) ->
      (if arguments_.length then (e = n
      t
      ) else e)

    t.x1 = (n) ->
      (if arguments_.length then (r = n
      t
      ) else r)

    t.y = (n) ->
      (if arguments_.length then (u = i = n
      t
      ) else i)

    t.y0 = (n) ->
      (if arguments_.length then (u = n
      t
      ) else u)

    t.y1 = (n) ->
      (if arguments_.length then (i = n
      t
      ) else i)

    t.defined = (n) ->
      (if arguments_.length then (a = n
      t
      ) else a)

    t.interpolate = (n) ->
      (if arguments_.length then (c = (if "function" is typeof n then o = n else (o = jo.get(n) or Le).key)
      l = o.reverse or o
      f = (if o.closed then "M" else "L")
      t
      ) else c)

    t.tension = (n) ->
      (if arguments_.length then (s = n
      t
      ) else s)

    t
  si = (n) ->
    n.radius
  hi = (n) ->
    [n.x, n.y]
  gi = (n) ->
    ->
      t = n.apply(this, arguments_)
      e = t[0]
      r = t[1] + nc
      [e * Math.cos(r), e * Math.sin(r)]
  pi = ->
    64
  di = ->
    "circle"
  mi = (n) ->
    t = Math.sqrt(n / Fa)
    "M0," + t + "A" + t + "," + t + " 0 1,1 0," + -t + "A" + t + "," + t + " 0 1,1 0," + t + "Z"
  vi = (n, t) ->
    xa(n, ac)
    n.id = t
    n
  yi = (n, t, e, r) ->
    u = n.id
    j n, (if "function" is typeof e then (n, i, a) ->
      n.__transition__[u].tween.set t, r(e.call(n, n.__data__, i, a))
     else (e = r(e)
    (n) ->
      n.__transition__[u].tween.set t, e

    ))
  Mi = (n) ->
    null is n and (n = "")
    ->
      @textContent = n
  xi = (n, t, e, r) ->
    i = n.__transition__ or (n.__transition__ =
      active: 0
      count: 0
    )
    a = i[e]
    unless a
      o = r.time
      a = i[e] =
        tween: new u
        event: ca.dispatch("start", "end")
        time: o
        ease: r.ease
        delay: r.delay
        duration: r.duration

      ++i.count
      ca.timer((r) ->
        u = (r) ->
          (if i.active > e then l() else (i.active = e
          h.start.call(n, f, t)
          a.tween.forEach((e, r) ->
            (r = r.call(n, f, t)) and d.push(r)
          )
          c(r) or ca.timer(c, 0, o)
          1
          ))
        c = (r) ->
          return l()  if i.active isnt e
          u = (r - g) / p
          a = s(u)
          o = d.length

          while o > 0
            d[--o].call n, a
          (if u >= 1 then (l()
          h.end.call(n, f, t)
          1
          ) else undefined)
        l = ->
          (if --i.count then delete i[e]
           else delete n.__transition__
          )
          1
        f = n.__data__
        s = a.ease
        h = a.event
        g = a.delay
        p = a.duration
        d = []
        (if r >= g then u(r) else ca.timer(u, g, o))
        1
      , 0, o)
      a
  bi = (n, t) ->
    n.attr "transform", (n) ->
      "translate(" + t(n) + ",0)"

  _i = (n, t) ->
    n.attr "transform", (n) ->
      "translate(0," + t(n) + ")"

  wi = (n, t, e) ->
    if r = []
    e and t.length > 1
      r = undefined
      u = undefined
      i = undefined
      a = Lu(n.domain())
      o = -1
      c = t.length
      l = (t[1] - t[0]) / ++e

      while ++o < c
        u = e
        while --u > 0
          (i = +t[o] - u * l) >= a[0] and r.push(i)
      --o
      u = 0

      while ++u < e and (i = +t[o] + u * l) < a[1]
        r.push i
    r
  Si = ->
    @_ = new Date((if arguments_.length > 1 then Date.UTC.apply(this, arguments_) else arguments_[0]))
  Ei = (n, t, e) ->
    r = (t) ->
      e = n(t)
      r = i(e, 1)
      (if r - t > t - e then e else r)
    u = (e) ->
      t(e = n(new gc(e - 1)), 1)
      e
    i = (n, e) ->
      t(n = new gc(+n), e)
      n
    a = (n, r, i) ->
      a = u(n)
      o = []
      if i > 1
        while r > a
          e(a) % i or o.push(new Date(+a))
          t(a, 1)
      else
        while r > a
          o.push(new Date(+a))
          t(a, 1)
      o
    o = (n, t, e) ->
      try
        gc = Si
        r = new Si
        return r._ = n
        a(r, t, e)
      finally
        gc = Date
    n.floor = n
    n.round = r
    n.ceil = u
    n.offset = i
    n.range = a

    c = n.utc = ki(n)
    c.floor = c
    c.round = ki(r)
    c.ceil = ki(u)
    c.offset = ki(i)
    c.range = o
    n
  ki = (n) ->
    (t, e) ->
      try
        gc = Si
        r = new Si
        return r._ = t
        n(r, e)._
      finally
        gc = Date
  Ai = (n, t, e, r) ->
    u = undefined
    i = undefined
    a = 0
    o = t.length
    c = e.length

    while o > a
      return -1  if r >= c
      if u = t.charCodeAt(a++)
      37 is u
        return -1  if i = Cc[t.charAt(a++)]
        not i or (r = i(n, e, r)) < 0
      else return -1  unless u is e.charCodeAt(r++)
    r
  qi = (n) ->
    RegExp "^(?:" + n.map(ca.requote).join("|") + ")", "i"
  Ni = (n) ->
    t = new u
    e = -1
    r = n.length

    while ++e < r
      t.set n[e].toLowerCase(), e
    t
  Ti = (n, t, e) ->
    n += ""
    r = n.length
    (if e > r then Array(e - r + 1).join(t) + n else n)
  Ci = (n, t, e) ->
    Sc.lastIndex = 0
    r = Sc.exec(t.substring(e))
    (if r then e += r[0].length else -1)
  zi = (n, t, e) ->
    wc.lastIndex = 0
    r = wc.exec(t.substring(e))
    (if r then e += r[0].length else -1)
  Di = (n, t, e) ->
    Ac.lastIndex = 0
    r = Ac.exec(t.substring(e))
    (if r then (n.m = qc.get(r[0].toLowerCase())
    e += r[0].length
    ) else -1)
  ji = (n, t, e) ->
    Ec.lastIndex = 0
    r = Ec.exec(t.substring(e))
    (if r then (n.m = kc.get(r[0].toLowerCase())
    e += r[0].length
    ) else -1)
  Li = (n, t, e) ->
    Ai n, "" + Tc.c, t, e
  Fi = (n, t, e) ->
    Ai n, "" + Tc.x, t, e
  Hi = (n, t, e) ->
    Ai n, "" + Tc.X, t, e
  Pi = (n, t, e) ->
    zc.lastIndex = 0
    r = zc.exec(t.substring(e, e + 4))
    (if r then (n.y = +r[0]
    e += r[0].length
    ) else -1)
  Ri = (n, t, e) ->
    zc.lastIndex = 0
    r = zc.exec(t.substring(e, e + 2))
    (if r then (n.y = Oi(+r[0])
    e += r[0].length
    ) else -1)
  Oi = (n) ->
    n + ((if n > 68 then 1900 else 2e3))
  Yi = (n, t, e) ->
    zc.lastIndex = 0
    r = zc.exec(t.substring(e, e + 2))
    (if r then (n.m = r[0] - 1
    e += r[0].length
    ) else -1)
  Ui = (n, t, e) ->
    zc.lastIndex = 0
    r = zc.exec(t.substring(e, e + 2))
    (if r then (n.d = +r[0]
    e += r[0].length
    ) else -1)
  Ii = (n, t, e) ->
    zc.lastIndex = 0
    r = zc.exec(t.substring(e, e + 2))
    (if r then (n.H = +r[0]
    e += r[0].length
    ) else -1)
  Vi = (n, t, e) ->
    zc.lastIndex = 0
    r = zc.exec(t.substring(e, e + 2))
    (if r then (n.M = +r[0]
    e += r[0].length
    ) else -1)
  Xi = (n, t, e) ->
    zc.lastIndex = 0
    r = zc.exec(t.substring(e, e + 2))
    (if r then (n.S = +r[0]
    e += r[0].length
    ) else -1)
  Zi = (n, t, e) ->
    zc.lastIndex = 0
    r = zc.exec(t.substring(e, e + 3))
    (if r then (n.L = +r[0]
    e += r[0].length
    ) else -1)
  Bi = (n, t, e) ->
    r = Dc.get(t.substring(e, e += 2).toLowerCase())
    (if null is r then -1 else (n.p = r
    e
    ))
  $i = (n) ->
    t = n.getTimezoneOffset()
    e = (if t > 0 then "-" else "+")
    r = ~~(Math.abs(t) / 60)
    u = Math.abs(t) % 60
    e + Ti(r, "0", 2) + Ti(u, "0", 2)
  Ji = (n) ->
    n.toISOString()
  Gi = (n, t, e) ->
    r = (t) ->
      n t
    r.invert = (t) ->
      Wi n.invert(t)

    r.domain = (t) ->
      (if arguments_.length then (n.domain(t)
      r
      ) else n.domain().map(Wi))

    r.nice = (n) ->
      r.domain Pu(r.domain(), ->
        n
      )

    r.ticks = (e, u) ->
      i = Ki(r.domain())
      unless "function" is typeof e
        a = i[1] - i[0]
        o = a / e
        c = ca.bisect(Lc, o)
        return t.year(i, e)  if c is Lc.length
        return n.ticks(e).map(Wi)  unless c
        Math.log(o / Lc[c - 1]) < Math.log(Lc[c] / o) and --c
        e = t[c]
        u = e[1]
        e = e[0].range
      e i[0], new Date(+i[1] + 1), u

    r.tickFormat = ->
      e

    r.copy = ->
      Gi n.copy(), t, e

    ca.rebind(r, n, "range", "rangeRound", "interpolate", "clamp")
  Ki = (n) ->
    t = n[0]
    e = n[n.length - 1]
    (if e > t then [t, e] else [e, t])
  Wi = (n) ->
    new Date(n)
  Qi = (n) ->
    (t) ->
      e = n.length - 1
      r = n[e]

      while not r[1](t)
        r = n[--e]
      r[0] t
  na = (n) ->
    t = new Date(n, 0, 1)
    t.setFullYear(n)
    t
  ta = (n) ->
    t = n.getFullYear()
    e = na(t)
    r = na(t + 1)
    t + (n - e) / (r - e)
  ea = (n) ->
    t = new Date(Date.UTC(n, 0, 1))
    t.setUTCFullYear(n)
    t
  ra = (n) ->
    t = n.getUTCFullYear()
    e = ea(t)
    r = ea(t + 1)
    t + (n - e) / (r - e)
  ua = (n) ->
    n.responseText
  ia = (n) ->
    JSON.parse n.responseText
  aa = (n) ->
    t = la.createRange()
    t.selectNode(la.body)
    t.createContextualFragment(n.responseText)
  oa = (n) ->
    n.responseXML
  ca = version: "3.1.5"
  Date.now or (Date.now = ->
    +new Date
  )
  la = document
  fa = window
  try
    la.createElement("div").style.setProperty "opacity", 0, ""
  catch sa
    ha = fa.CSSStyleDeclaration::
    ga = ha.setProperty
    ha.setProperty = (n, t, e) ->
      ga.call this, n, t + "", e
  ca.ascending = (n, t) ->
    (if t > n then -1 else (if n > t then 1 else (if n >= t then 0 else 0 / 0)))

  ca.descending = (n, t) ->
    (if n > t then -1 else (if t > n then 1 else (if t >= n then 0 else 0 / 0)))

  ca.min = (n, t) ->
    e = undefined
    r = undefined
    u = -1
    i = n.length
    if arguments_.length is 1
      while ++u < i and (not (e = n[u])? or e isnt e)
        e = undefined
      while ++u < i
        (r = n[u])? and e > r and (e = r)
    else
      while ++u < i and (not (e = t.call(n, n[u], u))? or e isnt e)
        e = undefined
      while ++u < i
        (r = t.call(n, n[u], u))? and e > r and (e = r)
    e

  ca.max = (n, t) ->
    e = undefined
    r = undefined
    u = -1
    i = n.length
    if arguments_.length is 1
      while ++u < i and (not (e = n[u])? or e isnt e)
        e = undefined
      while ++u < i
        (r = n[u])? and r > e and (e = r)
    else
      while ++u < i and (not (e = t.call(n, n[u], u))? or e isnt e)
        e = undefined
      while ++u < i
        (r = t.call(n, n[u], u))? and r > e and (e = r)
    e

  ca.extent = (n, t) ->
    e = undefined
    r = undefined
    u = undefined
    i = -1
    a = n.length
    if arguments_.length is 1
      while ++i < a and (not (e = u = n[i])? or e isnt e)
        e = u = undefined
      while ++i < a
        (r = n[i])? and (e > r and (e = r)
        r > u and (u = r)
        )
    else
      while ++i < a and (not (e = u = t.call(n, n[i], i))? or e isnt e)
        e = undefined
      while ++i < a
        (r = t.call(n, n[i], i))? and (e > r and (e = r)
        r > u and (u = r)
        )
    [e, u]

  ca.sum = (n, t) ->
    e = undefined
    r = 0
    u = n.length
    i = -1
    if arguments_.length is 1
      while ++i < u
        isNaN(e = +n[i]) or (r += e)
    else
      while ++i < u
        isNaN(e = +t.call(n, n[i], i)) or (r += e)
    r

  ca.mean = (t, e) ->
    r = undefined
    u = t.length
    i = 0
    a = -1
    o = 0
    if arguments_.length is 1
      while ++a < u
        n(r = t[a]) and (i += (r - i) / ++o)
    else
      while ++a < u
        n(r = e.call(t, t[a], a)) and (i += (r - i) / ++o)
    (if o then i else undefined)

  ca.quantile = (n, t) ->
    e = (n.length - 1) * t + 1
    r = Math.floor(e)
    u = +n[r - 1]
    i = e - r
    (if i then u + i * (n[r] - u) else u)

  ca.median = (t, e) ->
    arguments_.length > 1 and (t = t.map(e))
    t = t.filter(n)
    (if t.length then ca.quantile(t.sort(ca.ascending), .5) else undefined)

  ca.bisector = (n) ->
    left: (t, e, r, u) ->
      arguments_.length < 3 and (r = 0)
      arguments_.length < 4 and (u = t.length)

      while u > r
        i = r + u >>> 1
        (if n.call(t, t[i], i) < e then r = i + 1 else u = i)
      r

    right: (t, e, r, u) ->
      arguments_.length < 3 and (r = 0)
      arguments_.length < 4 and (u = t.length)

      while u > r
        i = r + u >>> 1
        (if e < n.call(t, t[i], i) then u = i else r = i + 1)
      r


  pa = ca.bisector((n) ->
    n
  )
  ca.bisectLeft = pa.left
  ca.bisect = ca.bisectRight = pa.right
  ca.shuffle = (n) ->
    t = undefined
    e = undefined
    r = n.length

    while r
      e = Math.random() * r-- | 0
      t = n[r]
      n[r] = n[e]
      n[e] = t
    n

  ca.permute = (n, t) ->
    e = []
    r = -1
    u = t.length

    while ++r < u
      e[r] = n[t[r]]
    e

  ca.zip = ->
    return []  unless u = arguments_.length
    n = -1
    e = ca.min(arguments_, t)
    r = Array(e)

    while ++n < e
      u = undefined
      i = -1
      a = r[n] = Array(u)

      while ++i < u
        a[i] = arguments_[i][n]
    r

  ca.transpose = (n) ->
    ca.zip.apply ca, n

  ca.keys = (n) ->
    t = []
    for e of n
      t.push e
    t

  ca.values = (n) ->
    t = []
    for e of n
      t.push n[e]
    t

  ca.entries = (n) ->
    t = []
    for e of n
      t.push
        key: e
        value: n[e]

    t

  ca.merge = (n) ->
    Array::concat.apply [], n

  ca.range = (n, t, r) ->
    throw Error("infinite range")  if arguments_.length < 3 and (r = 1
    arguments_.length < 2 and (t = n
    n = 0
    )
    )
    1 / 0 is (t - n) / r

    u = undefined
    i = []
    a = e(Math.abs(r))
    o = -1
    if n *= a
    t *= a
    r *= a
    0 > r
      while (u = n + r * ++o) > t
        i.push u / a
    else
      while (u = n + r * ++o) < t
        i.push u / a
    i

  ca.map = (n) ->
    t = new u
    for e of n
      t.set e, n[e]
    t

  r(u,
    has: (n) ->
      da + n of this

    get: (n) ->
      this[da + n]

    set: (n, t) ->
      this[da + n] = t

    remove: (n) ->
      n = da + n
      n of this and delete this[n]

    keys: ->
      n = []
      @forEach((t) ->
        n.push t
      )
      n

    values: ->
      n = []
      @forEach((t, e) ->
        n.push e
      )
      n

    entries: ->
      n = []
      @forEach((t, e) ->
        n.push
          key: t
          value: e

      )
      n

    forEach: (n) ->
      for t of this
        t.charCodeAt(0) is ma and n.call(this, t.substring(1), this[t])
  )

  da = "\u0000"
  ma = da.charCodeAt(0)
  ca.nest = ->
    n = (t, o, c) ->
      return (if r then r.call(i, o) else (if e then o.sort(e) else o))  if c >= a.length
      l = undefined
      f = undefined
      s = undefined
      h = undefined
      g = -1
      p = o.length
      d = a[c++]
      m = new u

      while ++g < p
        (if (h = m.get(l = d(f = o[g]))) then h.push(f) else m.set(l, [f]))
      (if t then (f = t()
      s = (e, r) ->
        f.set e, n(t, r, c)

      ) else (f = {}
      s = (e, r) ->
        f[e] = n(t, r, c)

      ))
      m.forEach(s)
      f
    t = (n, e) ->
      return n  if e >= a.length
      r = []
      u = o[e++]
      n.forEach((n, u) ->
        r.push
          key: n
          values: t(u, e)

      )
      (if u then r.sort((n, t) ->
        u n.key, t.key
      ) else r)
    e = undefined
    r = undefined
    i = {}
    a = []
    o = []
    i.map = (t, e) ->
      n e, t, 0

    i.entries = (e) ->
      t n(ca.map, e, 0), 0

    i.key = (n) ->
      a.push(n)
      i

    i.sortKeys = (n) ->
      o[a.length - 1] = n
      i

    i.sortValues = (n) ->
      e = n
      i

    i.rollup = (n) ->
      r = n
      i

    i

  ca.set = (n) ->
    t = new i
    if n
      e = 0

      while e < n.length
        t.add n[e]
        e++
    t

  r(i,
    has: (n) ->
      da + n of this

    add: (n) ->
      this[da + n] = not 0
      n

    remove: (n) ->
      n = da + n
      n of this and delete this[n]

    values: ->
      n = []
      @forEach((t) ->
        n.push t
      )
      n

    forEach: (n) ->
      for t of this
        t.charCodeAt(0) is ma and n.call(this, t.substring(1))
  )
  ca.behavior = {}
  ca.rebind = (n, t) ->
    e = undefined
    r = 1
    u = arguments_.length

    while ++r < u
      n[e = arguments_[r]] = a(n, t, t[e])
    n

  ca.dispatch = ->
    n = new o
    t = -1
    e = arguments_.length

    while ++t < e
      n[arguments_[t]] = c(n)
    n

  o::on = (n, t) ->
    e = n.indexOf(".")
    r = ""
    return (if arguments_.length < 2 then this[n].on(r) else this[n].on(r, t))  if e >= 0 and (r = n.substring(e + 1)
    n = n.substring(0, e)
    )
    n

    if arguments_.length is 2
      if null is t
        for n of this
          @hasOwnProperty(n) and this[n].on(r, null)
      this

  ca.event = null
  ca.mouse = (n) ->
    g n, f()


  va = (if /WebKit/.test(fa.navigator.userAgent) then -1 else 0)
  ya = d
  try
    ya(la.documentElement.childNodes)[0].nodeType
  catch Ma
    ya = p
  xa = (if [].__proto__ then (n, t) ->
    n.__proto__ = t
   else (n, t) ->
    for e of t
      n[e] = t[e]
  )
  ca.touches = (n, t) ->
    arguments_.length < 2 and (t = f().touches)
    (if t then ya(t).map((t) ->
      e = g(n, t)
      e.identifier = t.identifier
      e
    ) else [])

  ca.behavior.drag = ->
    n = ->
      @on("mousedown.drag", t).on "touchstart.drag", t
    t = ->
      n = ->
        n = a.parentNode
        (if null isnt f then ca.touches(n).filter((n) ->
          n.identifier is f
        )[0] else ca.mouse(n))
      t = ->
        return u()  unless a.parentNode
        t = n()
        e = t[0] - h[0]
        r = t[1] - h[1]
        g |= e | r
        h = t
        l()
        o(
          type: "drag"
          x: t[0] + i[0]
          y: t[1] + i[1]
          dx: e
          dy: r
        )
      u = ->
        o(type: "dragend")
        g and (l()
        ca.event.target is c and s(p, "click")
        )
        p.on((if null isnt f then "touchmove.drag-" + f else "mousemove.drag"), null).on((if null isnt f then "touchend.drag-" + f else "mouseup.drag"), null)
      i = undefined
      a = this
      o = e.of(a, arguments_)
      c = ca.event.target
      f = (if ca.event.touches then ca.event.changedTouches[0].identifier else null)
      h = n()
      g = 0
      p = ca.select(fa).on((if null isnt f then "touchmove.drag-" + f else "mousemove.drag"), t).on((if null isnt f then "touchend.drag-" + f else "mouseup.drag"), u, not 0)
      (if r then (i = r.apply(a, arguments_)
      i = [i.x - h[0], i.y - h[1]]
      ) else i = [0, 0])
      null is f and l()
      o(type: "dragstart")
    e = h(n, "drag", "dragstart", "dragend")
    r = null
    n.origin = (t) ->
      (if arguments_.length then (r = t
      n
      ) else r)

    ca.rebind(n, e, "on")


  ba = (n, t) ->
    t.querySelector n

  _a = (n, t) ->
    t.querySelectorAll n

  wa = la.documentElement
  Sa = wa.matchesSelector or wa.webkitMatchesSelector or wa.mozMatchesSelector or wa.msMatchesSelector or wa.oMatchesSelector
  Ea = (n, t) ->
    Sa.call n, t

  "function" is typeof Sizzle and (ba = (n, t) ->
    Sizzle(n, t)[0] or null

  _a = (n, t) ->
    Sizzle.uniqueSort Sizzle(n, t)

  Ea = Sizzle.matchesSelector
  )
  ka = []
  ca.selection = ->
    Ca

  ca.selection:: = ka
  ka.select = (n) ->
    t = undefined
    e = undefined
    r = undefined
    u = undefined
    i = []
    "function" isnt typeof n and (n = v(n))
    a = -1
    o = @length

    while ++a < o
      i.push(t = [])
      t.parentNode = (r = this[a]).parentNode

      c = -1
      l = r.length

      while ++c < l
        (if (u = r[c]) then (t.push(e = n.call(u, u.__data__, c))
        e and "__data__" of u and (e.__data__ = u.__data__)
        ) else t.push(null))
    m i

  ka.selectAll = (n) ->
    t = undefined
    e = undefined
    r = []
    "function" isnt typeof n and (n = y(n))
    u = -1
    i = @length

    while ++u < i
      a = this[u]
      o = -1
      c = a.length

      while ++o < c
        (e = a[o]) and (r.push(t = ya(n.call(e, e.__data__, o)))
        t.parentNode = e
        )
    m r


  Aa =
    svg: "http://www.w3.org/2000/svg"
    xhtml: "http://www.w3.org/1999/xhtml"
    xlink: "http://www.w3.org/1999/xlink"
    xml: "http://www.w3.org/XML/1998/namespace"
    xmlns: "http://www.w3.org/2000/xmlns/"

  ca.ns =
    prefix: Aa
    qualify: (n) ->
      t = n.indexOf(":")
      e = n
      t >= 0 and (e = n.substring(0, t)
      n = n.substring(t + 1)
      )
      (if Aa.hasOwnProperty(e) then
        space: Aa[e]
        local: n
       else n)

  ka.attr = (n, t) ->
    if arguments_.length < 2
      if "string" is typeof n
        e = @node()
        return n = ca.ns.qualify(n)
        (if n.local then e.getAttributeNS(n.space, n.local) else e.getAttribute(n))
      for t of n
        @each M(t, n[t])
      return this
    @each M(n, t)

  ca.requote = (n) ->
    n.replace qa, "\\$&"


  qa = /[\\\^\$\*\+\?\|\[\]\(\)\.\{\}]/g
  ka.classed = (n, t) ->
    if arguments_.length < 2
      if "string" is typeof n
        e = @node()
        r = (n = n.trim().split(/^|\s+/g)).length
        u = -1
        if t = e.classList
          while ++u < r
            return not 1  unless t.contains(n[u])
        else
          t = e.getAttribute("class")
          while ++u < r
            return not 1  unless _(n[u]).test(t)
        return not 0
      for t of n
        @each w(t, n[t])
      return this
    @each w(n, t)

  ka.style = (n, t, e) ->
    r = arguments_.length
    if 3 > r
      unless "string" is typeof n
        2 > r and (t = "")
        for e of n
          @each E(e, n[e], t)
        return this
      return fa.getComputedStyle(@node(), null).getPropertyValue(n)  if 2 > r
      e = ""
    @each E(n, t, e)

  ka.property = (n, t) ->
    if arguments_.length < 2
      return @node()[n]  if "string" is typeof n
      for t of n
        @each k(t, n[t])
      return this
    @each k(n, t)

  ka.text = (n) ->
    (if arguments_.length then @each((if "function" is typeof n then ->
      t = n.apply(this, arguments_)
      @textContent = (if null is t then "" else t)
     else (if null is n then ->
      @textContent = ""
     else ->
      @textContent = n
    ))) else @node().textContent)

  ka.html = (n) ->
    (if arguments_.length then @each((if "function" is typeof n then ->
      t = n.apply(this, arguments_)
      @innerHTML = (if null is t then "" else t)
     else (if null is n then ->
      @innerHTML = ""
     else ->
      @innerHTML = n
    ))) else @node().innerHTML)

  ka.append = (n) ->
    t = ->
      @appendChild la.createElementNS(@namespaceURI, n)
    e = ->
      @appendChild la.createElementNS(n.space, n.local)
    n = ca.ns.qualify(n)
    @select((if n.local then e else t))

  ka.insert = (n, t) ->
    e = (e, r) ->
      @insertBefore la.createElementNS(@namespaceURI, n), t.call(this, e, r)
    r = (e, r) ->
      @insertBefore la.createElementNS(n.space, n.local), t.call(this, e, r)
    n = ca.ns.qualify(n)
    "function" isnt typeof t and (t = v(t))
    @select((if n.local then r else e))

  ka.remove = ->
    @each ->
      n = @parentNode
      n and n.removeChild(this)


  ka.data = (n, t) ->
    e = (n, e) ->
      r = undefined
      i = undefined
      a = undefined
      o = n.length
      s = e.length
      h = Math.min(o, s)
      g = Array(s)
      p = Array(s)
      d = Array(o)
      if t
        m = undefined
        v = new u
        y = new u
        M = []
        r = -1
        while ++r < o
          m = t.call(i = n[r], i.__data__, r)
          (if v.has(m) then d[r] = i else v.set(m, i))
          M.push(m)
        r = -1
        while ++r < s
          m = t.call(e, a = e[r], r)
          (if (i = v.get(m)) then (g[r] = i
          i.__data__ = a
          ) else y.has(m) or (p[r] = A(a)))
          y.set(m, a)
          v.remove(m)
        r = -1
        while ++r < o
          v.has(M[r]) and (d[r] = n[r])
      else
        r = -1
        while ++r < h
          i = n[r]
          a = e[r]
          (if i then (i.__data__ = a
          g[r] = i
          ) else p[r] = A(a))
        while s > r
          p[r] = A(e[r])
          ++r
        while o > r
          d[r] = n[r]
          ++r
      p.update = g
      p.parentNode = g.parentNode = d.parentNode = n.parentNode
      c.push(p)
      l.push(g)
      f.push(d)
    r = undefined
    i = undefined
    a = -1
    o = @length
    unless arguments_.length
      n = Array(o = (r = this[0]).length)
      while ++a < o
        (i = r[a]) and (n[a] = i.__data__)
      return n
    c = L([])
    l = m([])
    f = m([])
    if "function" is typeof n
      while ++a < o
        e r = this[a], n.call(r, r.parentNode.__data__, a)
    else
      while ++a < o
        e r = this[a], n
    l.enter = ->
      c

    l.exit = ->
      f

    l

  ka.datum = (n) ->
    (if arguments_.length then @property("__data__", n) else @property("__data__"))

  ka.filter = (n) ->
    t = undefined
    e = undefined
    r = undefined
    u = []
    "function" isnt typeof n and (n = q(n))
    i = 0
    a = @length

    while a > i
      u.push(t = [])
      t.parentNode = (e = this[i]).parentNode

      o = 0
      c = e.length

      while c > o
        (r = e[o]) and n.call(r, r.__data__, o) and t.push(r)
        o++
      i++
    m u

  ka.order = ->
    n = -1
    t = @length

    while ++n < t
      e = undefined
      r = this[n]
      u = r.length - 1
      i = r[u]

      while --u >= 0
        (e = r[u]) and (i and i isnt e.nextSibling and i.parentNode.insertBefore(e, i)
        i = e
        )
    this

  ka.sort = (n) ->
    n = N.apply(this, arguments_)
    t = -1
    e = @length

    while ++t < e
      this[t].sort n
    @order()

  ka.on = (n, t, e) ->
    r = arguments_.length
    if 3 > r
      unless "string" is typeof n
        2 > r and (t = not 1)
        for e of n
          @each C(e, n[e], t)
        return this
      return (r = @node()["__on" + n]) and r._  if 2 > r
      e = not 1
    @each C(n, t, e)


  Na = ca.map(
    mouseenter: "mouseover"
    mouseleave: "mouseout"
  )
  Na.forEach((n) ->
    "on" + n of la and Na.remove(n)
  )
  ka.each = (n) ->
    j this, (t, e, r) ->
      n.call t, t.__data__, e, r


  ka.call = (n) ->
    t = ya(arguments_)
    n.apply(t[0] = this, t)
    this

  ka.empty = ->
    not @node()

  ka.node = ->
    n = 0
    t = @length

    while t > n
      e = this[n]
      r = 0
      u = e.length

      while u > r
        i = e[r]
        return i  if i
        r++
      n++
    null


  Ta = []
  ca.selection.enter = L
  ca.selection.enter:: = Ta
  Ta.append = ka.append
  Ta.insert = ka.insert
  Ta.empty = ka.empty
  Ta.node = ka.node
  Ta.select = (n) ->
    t = undefined
    e = undefined
    r = undefined
    u = undefined
    i = undefined
    a = []
    o = -1
    c = @length

    while ++o < c
      r = (u = this[o]).update
      a.push(t = [])
      t.parentNode = u.parentNode

      l = -1
      f = u.length

      while ++l < f
        (if (i = u[l]) then (t.push(r[l] = e = n.call(u.parentNode, i.__data__, l))
        e.__data__ = i.__data__
        ) else t.push(null))
    m a

  ka.transition = ->
    n = undefined
    t = undefined
    e = rc or ++oc
    r = []
    u = Object.create(cc)
    u.time = Date.now()
    i = -1
    a = @length

    while ++i < a
      r.push n = []
      o = this[i]
      c = -1
      l = o.length

      while ++c < l
        (t = o[c]) and xi(t, c, e, u)
        n.push(t)
    vi r, e


  Ca = m([[la]])
  Ca[0].parentNode = wa
  ca.select = (n) ->
    (if "string" is typeof n then Ca.select(n) else m([[n]]))

  ca.selectAll = (n) ->
    (if "string" is typeof n then Ca.selectAll(n) else m([ya(n)]))

  ca.behavior.zoom = ->
    n = ->
      @on("mousedown.zoom", o).on("mousemove.zoom", f).on(ja + ".zoom", c).on("dblclick.zoom", g).on("touchstart.zoom", p).on("touchmove.zoom", d).on "touchend.zoom", p
    t = (n) ->
      [(n[0] - w[0]) / S, (n[1] - w[1]) / S]
    e = (n) ->
      [n[0] * S + w[0], n[1] * S + w[1]]
    r = (n) ->
      S = Math.max(E[0], Math.min(E[1], n))
    u = (n, t) ->
      t = e(t)
      w[0] += n[0] - t[0]
      w[1] += n[1] - t[1]
    i = ->
      M and M.domain(y.range().map((n) ->
        (n - w[0]) / S
      ).map(y.invert))
      b and b.domain(x.range().map((n) ->
        (n - w[1]) / S
      ).map(x.invert))
    a = (n) ->
      i()
      ca.event.preventDefault()
      n(
        type: "zoom"
        scale: S
        translate: w
      )
    o = ->
      n = ->
        c = 1
        u(ca.mouse(r), h)
        a(i)
      e = ->
        c and l()
        f.on("mousemove.zoom", null).on("mouseup.zoom", null)
        c and ca.event.target is o and s(f, "click.zoom")
      r = this
      i = k.of(r, arguments_)
      o = ca.event.target
      c = 0
      f = ca.select(fa).on("mousemove.zoom", n).on("mouseup.zoom", e)
      h = t(ca.mouse(r))
      fa.focus()
      l()
    c = ->
      m or (m = t(ca.mouse(this)))
      r(Math.pow(2, za() * .002) * S)
      u(ca.mouse(this), m)
      a(k.of(this, arguments_))
    f = ->
      m = null
    g = ->
      n = ca.mouse(this)
      e = t(n)
      i = Math.log(S) / Math.LN2
      r(Math.pow(2, (if ca.event.shiftKey then Math.ceil(i) - 1 else Math.floor(i) + 1)))
      u(n, e)
      a(k.of(this, arguments_))
    p = ->
      n = ca.touches(this)
      e = Date.now()
      if v = S
      m = {}
      n.forEach((n) ->
        m[n.identifier] = t(n)
      )
      l()
      n.length is 1
        if 500 > e - _
          i = n[0]
          o = t(n[0])
          r(2 * S)
          u(i, o)
          a(k.of(this, arguments_))
        _ = e
    d = ->
      n = ca.touches(this)
      t = n[0]
      e = m[t.identifier]
      if i = n[1]
        i = undefined
        o = m[i.identifier]
        t = [(t[0] + i[0]) / 2, (t[1] + i[1]) / 2]
        e = [(e[0] + o[0]) / 2, (e[1] + o[1]) / 2]
        r(ca.event.scale * v)
      u(t, e)
      _ = null
      a(k.of(this, arguments_))
    m = undefined
    v = undefined
    y = undefined
    M = undefined
    x = undefined
    b = undefined
    _ = undefined
    w = [0, 0]
    S = 1
    E = Da
    k = h(n, "zoom")
    n.translate = (t) ->
      (if arguments_.length then (w = t.map(Number)
      i()
      n
      ) else w)

    n.scale = (t) ->
      (if arguments_.length then (S = +t
      i()
      n
      ) else S)

    n.scaleExtent = (t) ->
      (if arguments_.length then (E = (if null is t then Da else t.map(Number))
      n
      ) else E)

    n.x = (t) ->
      (if arguments_.length then (M = t
      y = t.copy()
      w = [0, 0]
      S = 1
      n
      ) else M)

    n.y = (t) ->
      (if arguments_.length then (b = t
      x = t.copy()
      w = [0, 0]
      S = 1
      n
      ) else b)

    ca.rebind(n, k, "on")


  za = undefined
  Da = [0, 1 / 0]
  ja = (if "onwheel" of la then (za = ->
    -ca.event.deltaY * ((if ca.event.deltaMode then 120 else 1))

  "wheel"
  ) else (if "onmousewheel" of la then (za = ->
    ca.event.wheelDelta

  "mousewheel"
  ) else (za = ->
    -ca.event.detail

  "MozMousePixelScroll"
  )))
  F::toString = ->
    @rgb() + ""

  ca.hsl = (n, t, e) ->
    (if arguments_.length is 1 then (if n instanceof P then H(n.h, n.s, n.l) else it("" + n, at, H)) else H(+n, +t, +e))


  La = P:: = new F
  La.brighter = (n) ->
    n = Math.pow(.7, (if arguments_.length then n else 1))
    H(@h, @s, @l / n)

  La.darker = (n) ->
    n = Math.pow(.7, (if arguments_.length then n else 1))
    H(@h, @s, n * @l)

  La.rgb = ->
    R @h, @s, @l


  Fa = Math.PI
  Ha = 1e-6
  Pa = Fa / 180
  Ra = 180 / Fa
  ca.hcl = (n, t, e) ->
    (if arguments_.length is 1 then (if n instanceof B then Z(n.h, n.c, n.l) else (if n instanceof G then W(n.l, n.a, n.b) else W((n = ot((n = ca.rgb(n)).r, n.g, n.b)).l, n.a, n.b))) else Z(+n, +t, +e))

  Oa = B:: = new F
  Oa.brighter = (n) ->
    Z @h, @c, Math.min(100, @l + Ya * ((if arguments_.length then n else 1)))

  Oa.darker = (n) ->
    Z @h, @c, Math.max(0, @l - Ya * ((if arguments_.length then n else 1)))

  Oa.rgb = ->
    $(@h, @c, @l).rgb()

  ca.lab = (n, t, e) ->
    (if arguments_.length is 1 then (if n instanceof G then J(n.l, n.a, n.b) else (if n instanceof B then $(n.l, n.c, n.h) else ot((n = ca.rgb(n)).r, n.g, n.b))) else J(+n, +t, +e))


  Ya = 18
  Ua = .95047
  Ia = 1
  Va = 1.08883
  Xa = G:: = new F
  Xa.brighter = (n) ->
    J Math.min(100, @l + Ya * ((if arguments_.length then n else 1))), @a, @b

  Xa.darker = (n) ->
    J Math.max(0, @l - Ya * ((if arguments_.length then n else 1))), @a, @b

  Xa.rgb = ->
    K @l, @a, @b

  ca.rgb = (n, t, e) ->
    (if arguments_.length is 1 then (if n instanceof rt then et(n.r, n.g, n.b) else it("" + n, et, R)) else et(~~n, ~~t, ~~e))


  Za = rt:: = new F
  Za.brighter = (n) ->
    n = Math.pow(.7, (if arguments_.length then n else 1))
    t = @r
    e = @g
    r = @b
    u = 30
    (if t or e or r then (t and u > t and (t = u)
    e and u > e and (e = u)
    r and u > r and (r = u)
    et(Math.min(255, Math.floor(t / n)), Math.min(255, Math.floor(e / n)), Math.min(255, Math.floor(r / n)))
    ) else et(u, u, u))

  Za.darker = (n) ->
    n = Math.pow(.7, (if arguments_.length then n else 1))
    et(Math.floor(n * @r), Math.floor(n * @g), Math.floor(n * @b))

  Za.hsl = ->
    at @r, @g, @b

  Za.toString = ->
    "#" + ut(@r) + ut(@g) + ut(@b)


  Ba = ca.map(
    aliceblue: "#f0f8ff"
    antiquewhite: "#faebd7"
    aqua: "#00ffff"
    aquamarine: "#7fffd4"
    azure: "#f0ffff"
    beige: "#f5f5dc"
    bisque: "#ffe4c4"
    black: "#000000"
    blanchedalmond: "#ffebcd"
    blue: "#0000ff"
    blueviolet: "#8a2be2"
    brown: "#a52a2a"
    burlywood: "#deb887"
    cadetblue: "#5f9ea0"
    chartreuse: "#7fff00"
    chocolate: "#d2691e"
    coral: "#ff7f50"
    cornflowerblue: "#6495ed"
    cornsilk: "#fff8dc"
    crimson: "#dc143c"
    cyan: "#00ffff"
    darkblue: "#00008b"
    darkcyan: "#008b8b"
    darkgoldenrod: "#b8860b"
    darkgray: "#a9a9a9"
    darkgreen: "#006400"
    darkgrey: "#a9a9a9"
    darkkhaki: "#bdb76b"
    darkmagenta: "#8b008b"
    darkolivegreen: "#556b2f"
    darkorange: "#ff8c00"
    darkorchid: "#9932cc"
    darkred: "#8b0000"
    darksalmon: "#e9967a"
    darkseagreen: "#8fbc8f"
    darkslateblue: "#483d8b"
    darkslategray: "#2f4f4f"
    darkslategrey: "#2f4f4f"
    darkturquoise: "#00ced1"
    darkviolet: "#9400d3"
    deeppink: "#ff1493"
    deepskyblue: "#00bfff"
    dimgray: "#696969"
    dimgrey: "#696969"
    dodgerblue: "#1e90ff"
    firebrick: "#b22222"
    floralwhite: "#fffaf0"
    forestgreen: "#228b22"
    fuchsia: "#ff00ff"
    gainsboro: "#dcdcdc"
    ghostwhite: "#f8f8ff"
    gold: "#ffd700"
    goldenrod: "#daa520"
    gray: "#808080"
    green: "#008000"
    greenyellow: "#adff2f"
    grey: "#808080"
    honeydew: "#f0fff0"
    hotpink: "#ff69b4"
    indianred: "#cd5c5c"
    indigo: "#4b0082"
    ivory: "#fffff0"
    khaki: "#f0e68c"
    lavender: "#e6e6fa"
    lavenderblush: "#fff0f5"
    lawngreen: "#7cfc00"
    lemonchiffon: "#fffacd"
    lightblue: "#add8e6"
    lightcoral: "#f08080"
    lightcyan: "#e0ffff"
    lightgoldenrodyellow: "#fafad2"
    lightgray: "#d3d3d3"
    lightgreen: "#90ee90"
    lightgrey: "#d3d3d3"
    lightpink: "#ffb6c1"
    lightsalmon: "#ffa07a"
    lightseagreen: "#20b2aa"
    lightskyblue: "#87cefa"
    lightslategray: "#778899"
    lightslategrey: "#778899"
    lightsteelblue: "#b0c4de"
    lightyellow: "#ffffe0"
    lime: "#00ff00"
    limegreen: "#32cd32"
    linen: "#faf0e6"
    magenta: "#ff00ff"
    maroon: "#800000"
    mediumaquamarine: "#66cdaa"
    mediumblue: "#0000cd"
    mediumorchid: "#ba55d3"
    mediumpurple: "#9370db"
    mediumseagreen: "#3cb371"
    mediumslateblue: "#7b68ee"
    mediumspringgreen: "#00fa9a"
    mediumturquoise: "#48d1cc"
    mediumvioletred: "#c71585"
    midnightblue: "#191970"
    mintcream: "#f5fffa"
    mistyrose: "#ffe4e1"
    moccasin: "#ffe4b5"
    navajowhite: "#ffdead"
    navy: "#000080"
    oldlace: "#fdf5e6"
    olive: "#808000"
    olivedrab: "#6b8e23"
    orange: "#ffa500"
    orangered: "#ff4500"
    orchid: "#da70d6"
    palegoldenrod: "#eee8aa"
    palegreen: "#98fb98"
    paleturquoise: "#afeeee"
    palevioletred: "#db7093"
    papayawhip: "#ffefd5"
    peachpuff: "#ffdab9"
    peru: "#cd853f"
    pink: "#ffc0cb"
    plum: "#dda0dd"
    powderblue: "#b0e0e6"
    purple: "#800080"
    red: "#ff0000"
    rosybrown: "#bc8f8f"
    royalblue: "#4169e1"
    saddlebrown: "#8b4513"
    salmon: "#fa8072"
    sandybrown: "#f4a460"
    seagreen: "#2e8b57"
    seashell: "#fff5ee"
    sienna: "#a0522d"
    silver: "#c0c0c0"
    skyblue: "#87ceeb"
    slateblue: "#6a5acd"
    slategray: "#708090"
    slategrey: "#708090"
    snow: "#fffafa"
    springgreen: "#00ff7f"
    steelblue: "#4682b4"
    tan: "#d2b48c"
    teal: "#008080"
    thistle: "#d8bfd8"
    tomato: "#ff6347"
    turquoise: "#40e0d0"
    violet: "#ee82ee"
    wheat: "#f5deb3"
    white: "#ffffff"
    whitesmoke: "#f5f5f5"
    yellow: "#ffff00"
    yellowgreen: "#9acd32"
  )
  Ba.forEach((n, t) ->
    Ba.set n, it(t, et, R)
  )
  ca.functor = ft
  ca.xhr = (n, t, e) ->
    r = ->
      n = c.status
      (if not n and c.responseText or n >= 200 and 300 > n or 304 is n then i.load.call(u, o.call(u, c)) else i.error.call(u, c))
    u = {}
    i = ca.dispatch("progress", "load", "error")
    a = {}
    o = st
    c = new ((if fa.XDomainRequest and /^(http(s)?:)?\/\//.test(n) then XDomainRequest else XMLHttpRequest))
    (if "onload" of c then c.onload = c.onerror = r else c.onreadystatechange = ->
      c.readyState > 3 and r()
    )
    c.onprogress = (n) ->
      t = ca.event
      ca.event = n
      try
        i.progress.call u, c
      finally
        ca.event = t

    u.header = (n, t) ->
      n = (n + "").toLowerCase()
      (if arguments_.length < 2 then a[n] else ((if null is t then delete a[n]
       else a[n] = t + "")
      u
      ))

    u.mimeType = (n) ->
      (if arguments_.length then (t = (if null is n then null else n + "")
      u
      ) else t)

    u.response = (n) ->
      o = n
      u

    ["get", "post"].forEach((n) ->
      u[n] = ->
        u.send.apply u, [n].concat(ya(arguments_))
    )
    u.send = (e, r, i) ->
      if arguments_.length is 2 and "function" is typeof r and (i = r
      r = null
      )
      c.open(e, n, not 0)
      null is t or "accept" of a or (a.accept = t + ",*/*")
      c.setRequestHeader
        for o of a
          c.setRequestHeader o, a[o]
      null isnt t and c.overrideMimeType and c.overrideMimeType(t)
      null isnt i and u.on("error", i).on("load", (n) ->
        i null, n
      )
      c.send((if null is r then null else r))
      u

    u.abort = ->
      c.abort()
      u

    ca.rebind(u, i, "on")
    arguments_.length is 2 and "function" is typeof t and (e = t
    t = null
    )
    (if null is e then u else u.get(ht(e)))

  ca.csv = gt(",", "text/csv")
  ca.tsv = gt("    ", "text/tab-separated-values")

  $a = undefined
  Ja = undefined
  Ga = 0
  Ka = {}
  Wa = null
  ca.timer = (n, t, e) ->
    if arguments_.length < 3
      if arguments_.length < 2
        t = 0
      else return  unless isFinite(t)
      e = Date.now()
    r = Ka[n.id]
    (if r and r.callback is n then (r.then = e
    r.delay = t
    ) else Ka[n.id = ++Ga] = Wa =
      callback: n
      then: e
      delay: t
      next: Wa
    )
    $a or (Ja = clearTimeout(Ja)
    $a = 1
    Qa(pt)
    )

  ca.timer.flush = ->
    n = undefined
    t = Date.now()
    e = Wa

    while e
      n = t - e.then
      e.delay or (e.flush = e.callback(n))
      e = e.next
    dt()


  Qa = fa.requestAnimationFrame or fa.webkitRequestAnimationFrame or fa.mozRequestAnimationFrame or fa.oRequestAnimationFrame or fa.msRequestAnimationFrame or (n) ->
    setTimeout n, 17

  no_ = "."
  to = ","
  eo = [3, 3]
  ro = ["y", "z", "a", "f", "p", "n", "µ", "m", "", "k", "M", "G", "T", "P", "E", "Z", "Y"].map(mt)
  ca.formatPrefix = (n, t) ->
    e = 0
    n and (0 > n and (n *= -1)
    t and (n = ca.round(n, vt(n, t)))
    e = 1 + Math.floor(1e-12 + Math.log(n) / Math.LN10)
    e = Math.max(-24, Math.min(24, Math.floor(((if 0 >= e then e + 1 else e - 1)) / 3) * 3))
    )
    ro[8 + e / 3]

  ca.round = (n, t) ->
    (if t then Math.round(n * (t = Math.pow(10, t))) / t else Math.round(n))

  ca.format = (n) ->
    t = uo.exec(n)
    e = t[1] or " "
    r = t[2] or ">"
    u = t[3] or ""
    i = t[4] or ""
    a = t[5]
    o = +t[6]
    c = t[7]
    l = t[8]
    f = t[9]
    s = 1
    h = ""
    g = not 1
    switch l and (l = +l.substring(1))
    (a or "0" is e and "=" is r) and (a = e = "0"
    r = "="
    c and (o -= Math.floor((o - 1) / 4))
    )
    f

      when "n"
        c = not 0
        f = "g"
      when "%"
        s = 100
        h = "%"
        f = "f"
      when "p"
        s = 100
        h = "%"
        f = "r"
      when "b", "o"
    , "x"
    , "X"
        i and (i = "0" + f.toLowerCase())
      when "c", "d"
        g = not 0
        l = 0
      when "s"
        s = -1
        f = "r"
    "#" is i and (i = "")
    "r" isnt f or l or (f = "g")
    null isnt l and ((if "g" is f then l = Math.max(1, Math.min(21, l)) else ("e" is f or "f" is f) and (l = Math.max(0, Math.min(20, l)))))
    f = io.get(f) or yt

    p = a and c
    (n) ->
      return ""  if g and n % 1
      t = (if 0 > n or 0 is n and 0 > 1 / n then (n = -n
      "-"
      ) else u)
      if 0 > s
        d = ca.formatPrefix(n, l)
        n = d.scale(n)
        h = d.symbol
      else
        n *= s
      n = f(n, l)
      not a and c and (n = ao(n))

      m = i.length + n.length + ((if p then 0 else t.length))
      v = (if o > m then Array(m = o - m + 1).join(e) else "")
      p and (n = ao(v + n))
      no_ and n.replace(".", no_)
      t += i
      ((if "<" is r then t + n + v else (if ">" is r then v + t + n else (if "^" is r then v.substring(0, m >>= 1) + t + n + v.substring(m) else t + ((if p then n else v + n)))))) + h


  uo = /(?:([^{])?([<>=^]))?([+\- ])?(#)?(0)?(\d+)?(,)?(\.-?\d+)?([a-z%])?/i
  io = ca.map(
    b: (n) ->
      n.toString 2

    c: (n) ->
      String.fromCharCode n

    o: (n) ->
      n.toString 8

    x: (n) ->
      n.toString 16

    X: (n) ->
      n.toString(16).toUpperCase()

    g: (n, t) ->
      n.toPrecision t

    e: (n, t) ->
      n.toExponential t

    f: (n, t) ->
      n.toFixed t

    r: (n, t) ->
      (n = ca.round(n, vt(n, t))).toFixed Math.max(0, Math.min(20, vt(n * (1 + 1e-15), t)))
  )
  ao = st
  if eo
    oo = eo.length
    ao = (n) ->
      t = n.lastIndexOf(".")
      e = (if t >= 0 then "." + n.substring(t + 1) else (t = n.length
      ""
      ))
      r = []
      u = 0
      i = eo[0]

      while t > 0 and i > 0
        r.push(n.substring(t -= i, t + i))
        i = eo[u = (u + 1) % oo]
      r.reverse().join(to or "") + e
  ca.geo = {}
  ca.geo.stream = (n, t) ->
    (if n and co.hasOwnProperty(n.type) then co[n.type](n, t) else Mt(n, t))


  co =
    Feature: (n, t) ->
      Mt n.geometry, t

    FeatureCollection: (n, t) ->
      e = n.features
      r = -1
      u = e.length

      while ++r < u
        Mt e[r].geometry, t

  lo =
    Sphere: (n, t) ->
      t.sphere()

    Point: (n, t) ->
      e = n.coordinates
      t.point e[0], e[1]

    MultiPoint: (n, t) ->
      e = undefined
      r = n.coordinates
      u = -1
      i = r.length

      while ++u < i
        e = r[u]
        t.point(e[0], e[1])

    LineString: (n, t) ->
      xt n.coordinates, t, 0

    MultiLineString: (n, t) ->
      e = n.coordinates
      r = -1
      u = e.length

      while ++r < u
        xt e[r], t, 0

    Polygon: (n, t) ->
      bt n.coordinates, t

    MultiPolygon: (n, t) ->
      e = n.coordinates
      r = -1
      u = e.length

      while ++r < u
        bt e[r], t

    GeometryCollection: (n, t) ->
      e = n.geometries
      r = -1
      u = e.length

      while ++r < u
        Mt e[r], t

  ca.geo.area = (n) ->
    fo = 0
    ca.geo.stream(n, go)
    fo

  fo = undefined
  so = undefined
  ho = undefined
  go =
    sphere: ->
      fo += 4 * Fa

    point: T
    lineStart: T
    lineEnd: T
    polygonStart: ->
      so = 1
      ho = 0
      go.lineStart = _t

    polygonEnd: ->
      n = 2 * Math.atan2(ho, so)
      fo += (if 0 > n then 4 * Fa + n else n)
      go.lineStart = go.lineEnd = go.point = T

  ca.geo.bounds = wt(st)
  ca.geo.centroid = (n) ->
    po = mo = vo = yo = Mo = 0
    ca.geo.stream(n, xo)

    t = undefined
    (if mo and Math.abs(t = Math.sqrt(vo * vo + yo * yo + Mo * Mo)) > Ha then [Math.atan2(yo, vo) * Ra, Math.asin(Math.max(-1, Math.min(1, Mo / t))) * Ra] else undefined)


  po = undefined
  mo = undefined
  vo = undefined
  yo = undefined
  Mo = undefined
  xo =
    sphere: ->
      2 > po and (po = 2
      mo = vo = yo = Mo = 0
      )

    point: St
    lineStart: kt
    lineEnd: At
    polygonStart: ->
      2 > po and (po = 2
      mo = vo = yo = Mo = 0
      )
      xo.lineStart = Et

    polygonEnd: ->
      xo.lineStart = kt

  bo = Rt(jt, Vt, Zt)
  _o = 1e9
  ca.geo.projection = Wt
  ca.geo.projectionMutator = Qt
  (ca.geo.equirectangular = ->
    Wt te
  ).raw = te.invert = te
  ca.geo.rotation = (n) ->
    t = (t) ->
      t = n(t[0] * Pa, t[1] * Pa)
      t[0] *= Ra
      t[1] *= Ra
      t
    n = ee(n[0] % 360 * Pa, n[1] * Pa, (if n.length > 2 then n[2] * Pa else 0))
    t.invert = (t) ->
      t = n.invert(t[0] * Pa, t[1] * Pa)
      t[0] *= Ra
      t[1] *= Ra
      t

    t

  ca.geo.circle = ->
    n = ->
      n = (if "function" is typeof r then r.apply(this, arguments_) else r)
      t = ee(-n[0] * Pa, -n[1] * Pa, 0).invert
      u = []
      e(null, null, 1,
        point: (n, e) ->
          u.push(n = t(n, e))
          n[0] *= Ra
          n[1] *= Ra
      )

        type: "Polygon"
        coordinates: [u]
    t = undefined
    e = undefined
    r = [0, 0]
    u = 6
    n.origin = (t) ->
      (if arguments_.length then (r = t
      n
      ) else r)

    n.angle = (r) ->
      (if arguments_.length then (e = ae((t = +r) * Pa, u * Pa)
      n
      ) else t)

    n.precision = (r) ->
      (if arguments_.length then (e = ae(t * Pa, (u = +r) * Pa)
      n
      ) else u)

    n.angle(90)

  ca.geo.distance = (n, t) ->
    e = undefined
    r = (t[0] - n[0]) * Pa
    u = n[1] * Pa
    i = t[1] * Pa
    a = Math.sin(r)
    o = Math.cos(r)
    c = Math.sin(u)
    l = Math.cos(u)
    f = Math.sin(i)
    s = Math.cos(i)
    Math.atan2 Math.sqrt((e = s * a) * e + (e = l * f - c * s * o) * e), c * f + l * s * o

  ca.geo.graticule = ->
    n = ->
      type: "MultiLineString"
      coordinates: t()
    t = ->
      ca.range(Math.ceil(i / m) * m, u, m).map(h).concat(ca.range(Math.ceil(l / v) * v, c, v).map(g)).concat(ca.range(Math.ceil(r / p) * p, e, p).filter((n) ->
        Math.abs(n % m) > Ha
      ).map(f)).concat ca.range(Math.ceil(o / d) * d, a, d).filter((n) ->
        Math.abs(n % v) > Ha
      ).map(s)
    e = undefined
    r = undefined
    u = undefined
    i = undefined
    a = undefined
    o = undefined
    c = undefined
    l = undefined
    f = undefined
    s = undefined
    h = undefined
    g = undefined
    p = 10
    d = p
    m = 90
    v = 360
    y = 2.5
    n.lines = ->
      t().map (n) ->
        type: "LineString"
        coordinates: n


    n.outline = ->
      type: "Polygon"
      coordinates: [h(i).concat(g(c).slice(1), h(u).reverse().slice(1), g(l).reverse().slice(1))]

    n.extent = (t) ->
      (if arguments_.length then n.majorExtent(t).minorExtent(t) else n.minorExtent())

    n.majorExtent = (t) ->
      (if arguments_.length then (i = +t[0][0]
      u = +t[1][0]
      l = +t[0][1]
      c = +t[1][1]
      i > u and (t = i
      i = u
      u = t
      )
      l > c and (t = l
      l = c
      c = t
      )
      n.precision(y)
      ) else [[i, l], [u, c]])

    n.minorExtent = (t) ->
      (if arguments_.length then (r = +t[0][0]
      e = +t[1][0]
      o = +t[0][1]
      a = +t[1][1]
      r > e and (t = r
      r = e
      e = t
      )
      o > a and (t = o
      o = a
      a = t
      )
      n.precision(y)
      ) else [[r, o], [e, a]])

    n.step = (t) ->
      (if arguments_.length then n.majorStep(t).minorStep(t) else n.minorStep())

    n.majorStep = (t) ->
      (if arguments_.length then (m = +t[0]
      v = +t[1]
      n
      ) else [m, v])

    n.minorStep = (t) ->
      (if arguments_.length then (p = +t[0]
      d = +t[1]
      n
      ) else [p, d])

    n.precision = (t) ->
      (if arguments_.length then (y = +t
      f = ce(o, a, 90)
      s = le(r, e, y)
      h = ce(l, c, 90)
      g = le(i, u, y)
      n
      ) else y)

    n.majorExtent([[-180, -90 + Ha], [180, 90 - Ha]]).minorExtent([[-180, -80 - Ha], [180, 80 + Ha]])

  ca.geo.greatArc = ->
    n = ->
      type: "LineString"
      coordinates: [t or r.apply(this, arguments_), e or u.apply(this, arguments_)]
    t = undefined
    e = undefined
    r = fe
    u = se
    n.distance = ->
      ca.geo.distance t or r.apply(this, arguments_), e or u.apply(this, arguments_)

    n.source = (e) ->
      (if arguments_.length then (r = e
      t = (if "function" is typeof e then null else e)
      n
      ) else r)

    n.target = (t) ->
      (if arguments_.length then (u = t
      e = (if "function" is typeof t then null else t)
      n
      ) else u)

    n.precision = ->
      (if arguments_.length then n else 0)

    n

  ca.geo.interpolate = (n, t) ->
    he n[0] * Pa, n[1] * Pa, t[0] * Pa, t[1] * Pa

  ca.geo.length = (n) ->
    wo = 0
    ca.geo.stream(n, So)
    wo


  wo = undefined
  So =
    sphere: T
    point: T
    lineStart: ge
    lineEnd: T
    polygonStart: T
    polygonEnd: T

  (ca.geo.conicEqualArea = ->
    pe de
  ).raw = de
  ca.geo.albersUsa = ->
    n = (n) ->
      t(n) n
    t = (n) ->
      t = n[0]
      e = n[1]
      (if e > 50 then a else (if -140 > t then o else (if 21 > e then c else i)))
    e = undefined
    r = undefined
    u = undefined
    i = ca.geo.conicEqualArea().rotate([98, 0]).center([0, 38]).parallels([29.5, 45.5])
    a = ca.geo.conicEqualArea().rotate([160, 0]).center([0, 60]).parallels([55, 65])
    o = ca.geo.conicEqualArea().rotate([160, 0]).center([0, 20]).parallels([8, 18])
    c = ca.geo.conicEqualArea().rotate([60, 0]).center([0, 10]).parallels([8, 18])
    n.invert = (n) ->
      e(n) or r(n) or u(n) or i.invert(n)

    n.scale = (t) ->
      (if arguments_.length then (i.scale(t)
      a.scale(.6 * t)
      o.scale(t)
      c.scale(1.5 * t)
      n.translate(i.translate())
      ) else i.scale())

    n.translate = (t) ->
      return i.translate()  unless arguments_.length
      l = i.scale()
      f = t[0]
      s = t[1]
      i.translate(t)
      a.translate([f - .4 * l, s + .17 * l])
      o.translate([f - .19 * l, s + .2 * l])
      c.translate([f + .58 * l, s + .43 * l])
      e = me(a, [[-180, 50], [-130, 72]])
      r = me(o, [[-164, 18], [-154, 24]])
      u = me(c, [[-67.5, 17.5], [-65, 19]])
      n

    n.scale(1e3)


  Eo = undefined
  ko = undefined
  Ao =
    point: T
    lineStart: T
    lineEnd: T
    polygonStart: ->
      ko = 0
      Ao.lineStart = ve

    polygonEnd: ->
      Ao.lineStart = Ao.lineEnd = Ao.point = T
      Eo += Math.abs(ko / 2)

  qo =
    point: Me
    lineStart: xe
    lineEnd: be
    polygonStart: ->
      qo.lineStart = _e

    polygonEnd: ->
      qo.point = Me
      qo.lineStart = xe
      qo.lineEnd = be

  ca.geo.path = ->
    n = (n) ->
      n and ca.geo.stream(n, r(u.pointRadius((if "function" is typeof i then +i.apply(this, arguments_) else i))))
      u.result()
    t = undefined
    e = undefined
    r = undefined
    u = undefined
    i = 4.5
    n.area = (n) ->
      Eo = 0
      ca.geo.stream(n, r(Ao))
      Eo

    n.centroid = (n) ->
      po = vo = yo = Mo = 0
      ca.geo.stream(n, r(qo))
      (if Mo then [vo / Mo, yo / Mo] else undefined)

    n.bounds = (n) ->
      wt(r) n

    n.projection = (e) ->
      (if arguments_.length then (r = (if (t = e) then e.stream or Ee(e) else st)
      n
      ) else t)

    n.context = (t) ->
      (if arguments_.length then (u = (if not (e = t)? then new ye else new we(t))
      n
      ) else e)

    n.pointRadius = (t) ->
      (if arguments_.length then (i = (if "function" is typeof t then t else +t)
      n
      ) else i)

    n.projection(ca.geo.albersUsa()).context(null)

  ca.geo.albers = ->
    ca.geo.conicEqualArea().parallels([29.5, 45.5]).rotate([98, 0]).center([0, 38]).scale 1e3


  No = ke((n) ->
    Math.sqrt 2 / (1 + n)
  , (n) ->
    2 * Math.asin(n / 2)
  )
  (ca.geo.azimuthalEqualArea = ->
    Wt No
  ).raw = No
  To = ke((n) ->
    t = Math.acos(n)
    t and t / Math.sin(t)
  , st)
  (ca.geo.azimuthalEquidistant = ->
    Wt To
  ).raw = To
  (ca.geo.conicConformal = ->
    pe Ae
  ).raw = Ae
  (ca.geo.conicEquidistant = ->
    pe qe
  ).raw = qe

  Co = ke((n) ->
    1 / n
  , Math.atan)
  (ca.geo.gnomonic = ->
    Wt Co
  ).raw = Co
  Ne.invert = (n, t) ->
    [n, 2 * Math.atan(Math.exp(t)) - Fa / 2]

  (ca.geo.mercator = ->
    Te Ne
  ).raw = Ne

  zo = ke(->
    1
  , Math.asin)
  (ca.geo.orthographic = ->
    Wt zo
  ).raw = zo
  Do = ke((n) ->
    1 / (1 + n)
  , (n) ->
    2 * Math.atan(n)
  )
  (ca.geo.stereographic = ->
    Wt Do
  ).raw = Do
  Ce.invert = (n, t) ->
    [Math.atan2(I(n), Math.cos(t)), U(Math.sin(t) / V(n))]

  (ca.geo.transverseMercator = ->
    Te Ce
  ).raw = Ce
  ca.geom = {}
  ca.svg = {}
  ca.svg.line = ->
    ze st


  jo = ca.map(
    linear: Le
    "linear-closed": Fe
    "step-before": He
    "step-after": Pe
    basis: Ve
    "basis-open": Xe
    "basis-closed": Ze
    bundle: Be
    cardinal: Ye
    "cardinal-open": Re
    "cardinal-closed": Oe
    monotone: Qe
  )
  jo.forEach (n, t) ->
    t.key = n
    t.closed = /-closed$/.test(n)

  Lo = [0, 2 / 3, 1 / 3, 0]
  Fo = [0, 1 / 3, 2 / 3, 0]
  Ho = [0, 1 / 6, 2 / 3, 1 / 6]
  ca.geom.hull = (n) ->
    t = (n) ->
      return []  if n.length < 3
      t = undefined
      u = undefined
      i = undefined
      a = undefined
      o = undefined
      c = undefined
      l = undefined
      f = undefined
      s = undefined
      h = undefined
      g = undefined
      p = undefined
      d = ft(e)
      m = ft(r)
      v = n.length
      y = v - 1
      M = []
      x = []
      b = 0
      if d is De and r is je
        t = n
      else
        i = 0
        t = []

        while v > i
          t.push [+d.call(this, u = n[i], i), +m.call(this, u, i)]
          ++i
      i = 1
      while v > i
        (if t[i][1] < t[b][1] then b = i else t[i][1] is t[b][1] and (b = (if t[i][0] < t[b][0] then i else b)))
        ++i
      i = 0
      while v > i
        i isnt b and (c = t[i][1] - t[b][1]
        o = t[i][0] - t[b][0]
        M.push(
          angle: Math.atan2(c, o)
          index: i
        )
        )
        ++i
      M.sort((n, t) ->
        n.angle - t.angle
      )
      g = M[0].angle
      h = M[0].index
      s = 0
      i = 1

      while y > i
        a = M[i].index
        (if g is M[i].angle then (o = t[h][0] - t[b][0]
        c = t[h][1] - t[b][1]
        l = t[a][0] - t[b][0]
        f = t[a][1] - t[b][1]
        (if o * o + c * c >= l * l + f * f then M[i].index = -1 else (M[s].index = -1
        g = M[i].angle
        s = i
        h = a
        ))
        ) else (g = M[i].angle
        s = i
        h = a
        ))
        ++i
      x.push(b)
      i = 0
      a = 0

      while 2 > i
        M[a].index isnt -1 and (x.push(M[a].index)
        i++
        )
        ++a
      p = x.length
      while y > a
        if M[a].index isnt -1
          while not nr(x[p - 2], x[p - 1], M[a].index, t)
            --p
          x[p++] = M[a].index
        ++a
      _ = []
      i = 0
      while p > i
        _.push n[x[i]]
        ++i
      _
    e = De
    r = je
    (if arguments_.length then t(n) else (t.x = (n) ->
      (if arguments_.length then (e = n
      t
      ) else e)

    t.y = (n) ->
      (if arguments_.length then (r = n
      t
      ) else r)

    t
    ))

  ca.geom.polygon = (n) ->
    n.area = ->
      t = 0
      e = n.length
      r = n[e - 1][1] * n[0][0] - n[e - 1][0] * n[0][1]

      while ++t < e
        r += n[t - 1][1] * n[t][0] - n[t - 1][0] * n[t][1]
      .5 * r

    n.centroid = (t) ->
      e = undefined
      r = undefined
      u = -1
      i = n.length
      a = 0
      o = 0
      c = n[i - 1]
      arguments_.length or (t = -1 / (6 * n.area()))
      while ++u < i
        e = c
        c = n[u]
        r = e[0] * c[1] - c[0] * e[1]
        a += (e[0] + c[0]) * r
        o += (e[1] + c[1]) * r
      [a * t, o * t]

    n.clip = (t) ->
      e = undefined
      r = undefined
      u = undefined
      i = undefined
      a = undefined
      o = undefined
      c = -1
      l = n.length
      f = n[l - 1]

      while ++c < l
        e = t.slice()
        t.length = 0
        i = n[c]
        a = e[(u = e.length) - 1]
        r = -1

        while ++r < u
          o = e[r]
          (if tr(o, f, i) then (tr(a, f, i) or t.push(er(a, o, f, i))
          t.push(o)
          ) else tr(a, f, i) and t.push(er(a, o, f, i)))
          a = o
        f = i
      t

    n

  ca.geom.delaunay = (n) ->
    t = n.map(->
      []
    )
    e = []
    rr(n, (e) ->
      t[e.region.l.index].push n[e.region.r.index]
    )
    t.forEach((t, r) ->
      u = n[r]
      i = u[0]
      a = u[1]
      t.forEach((n) ->
        n.angle = Math.atan2(n[0] - i, n[1] - a)
      )
      t.sort((n, t) ->
        n.angle - t.angle
      )

      o = 0
      c = t.length - 1

      while c > o
        e.push [u, t[o], t[o + 1]]
        o++
    )
    e

  ca.geom.voronoi = (n) ->
    t = (n) ->
      t = undefined
      r = undefined
      a = undefined
      o = n.map(->
        []
      )
      c = ft(u)
      l = ft(i)
      f = n.length
      s = 1e6
      if c is De and l is je
        t = n
      else
        t = []
        a = 0

        while f > a
          t.push [+c.call(this, r = n[a], a), +l.call(this, r, a)]
          ++a
      if rr(t, (n) ->
        t = undefined
        e = undefined
        r = undefined
        u = undefined
        i = undefined
        a = undefined
        (if n.a is 1 and n.b >= 0 then (t = n.ep.r
        e = n.ep.l
        ) else (t = n.ep.l
        e = n.ep.r
        ))
        (if n.a is 1 then (i = (if t then t.y else -s)
        r = n.c - n.b * i
        a = (if e then e.y else s)
        u = n.c - n.b * a
        ) else (r = (if t then t.x else -s)
        i = n.c - n.a * r
        u = (if e then e.x else s)
        a = n.c - n.a * u
        ))

        c = [r, i]
        l = [u, a]
        o[n.region.l.index].push(c, l)
        o[n.region.r.index].push(c, l)
      )
      o = o.map((n, e) ->
        r = t[e][0]
        u = t[e][1]
        i = n.map((n) ->
          Math.atan2 n[0] - r, n[1] - u
        )
        a = ca.range(n.length).sort((n, t) ->
          i[n] - i[t]
        )
        a.filter((n, t) ->
          not t or i[n] - i[a[t - 1]] > Ha
        ).map (t) ->
          n[t]

      )
      o.forEach((n, e) ->
        r = n.length
        return n.push([-s, -s], [-s, s], [s, s], [s, -s])  unless r
        unless r > 2
          u = t[e]
          i = n[0]
          a = n[1]
          o = u[0]
          c = u[1]
          l = i[0]
          f = i[1]
          h = a[0]
          g = a[1]
          p = Math.abs(h - l)
          d = g - f
          if Math.abs(d) < Ha
            m = (if f > c then -s else s)
            n.push [-s, m], [s, m]
          else if Ha > p
            v = (if l > o then -s else s)
            n.push [v, -s], [v, s]
          else
            m = (if (l - o) * (g - f) > (h - l) * (f - c) then s else -s)
            y = Math.abs(d) - p
            (if Math.abs(y) < Ha then n.push([(if 0 > d then m else -m), m]) else (y > 0 and (m *= -1)
            n.push([-s, m], [s, m])
            ))
      )
      e
        a = 0
        while f > a
          e o[a]
          ++a
      a = 0
      while f > a
        o[a].point = n[a]
        ++a
      o
    e = undefined
    r = null
    u = De
    i = je
    (if arguments_.length then t(n) else (t.x = (n) ->
      (if arguments_.length then (u = n
      t
      ) else u)

    t.y = (n) ->
      (if arguments_.length then (i = n
      t
      ) else i)

    t.size = (n) ->
      (if arguments_.length then ((if null is n then e = null else (r = [+n[0], +n[1]]
      e = ca.geom.polygon([[0, 0], [0, r[1]], r, [r[0], 0]]).clip
      ))
      t
      ) else r)

    t.links = (n) ->
      t = undefined
      e = undefined
      r = undefined
      a = n.map(->
        []
      )
      o = []
      c = ft(u)
      l = ft(i)
      f = n.length
      if c is De and l is je
        t = n
      else
        r = 0
        while f > r
          t.push [+c.call(this, e = n[r], r), +l.call(this, e, r)]
          ++r
      rr(t, (t) ->
        e = t.region.l.index
        r = t.region.r.index
        a[e][r] or (a[e][r] = a[r][e] = not 0
        o.push(
          source: n[e]
          target: n[r]
        )
        )
      )
      o

    t.triangles = (n) ->
      return ca.geom.delaunay(n)  if u is De and i is je
      t = undefined
      e = undefined
      r = undefined
      a = undefined
      o = undefined
      c = ft(u)
      l = ft(i)
      a = 0
      t = []
      o = n.length

      while o > a
        e = [+c.call(this, r = n[a], a), +l.call(this, r, a)]
        e.data = r
        t.push(e)
        ++a
      ca.geom.delaunay(t).map (n) ->
        n.map (n) ->
          n.data



    t
    ))


  Po =
    l: "r"
    r: "l"

  ca.geom.quadtree = (n, t, e, r, u) ->
    i = (n) ->
      i = (n, t, e, r, u, i, a, o) ->
        if not isNaN(e) and not isNaN(r)
          if n.leaf
            c = n.x
            f = n.y
            unless null is c
              unless Math.abs(c - e) + Math.abs(f - r) < .01
                s = n.point
                n.x = n.y = n.point = null
                l(n, s, c, f, u, i, a, o)
                l(n, t, e, r, u, i, a, o)
            else
              n.x = e
              n.y = r
              n.point = t
          else
            l n, t, e, r, u, i, a, o
      l = (n, t, e, r, u, a, o, c) ->
        l = .5 * (u + o)
        f = .5 * (a + c)
        s = e >= l
        h = r >= f
        g = (h << 1) + s
        n.leaf = not 1
        n = n.nodes[g] or (n.nodes[g] = ar())
        (if s then u = l else o = l)
        (if h then a = f else c = f)
        i(n, t, e, r, u, a, o, c)
      f = undefined
      s = undefined
      h = undefined
      g = undefined
      p = undefined
      d = undefined
      m = undefined
      v = undefined
      y = undefined
      M = ft(o)
      x = ft(c)
      unless null is t
        d = t
        m = e
        v = r
        y = u
      else if v = y = -(d = m = 1 / 0)
      s = []
      h = []
      p = n.length
      a
        g = 0
        while p > g
          f = n[g]
          f.x < d and (d = f.x)
          f.y < m and (m = f.y)
          f.x > v and (v = f.x)
          f.y > y and (y = f.y)
          s.push(f.x)
          h.push(f.y)
          ++g
      else
        g = 0
        while p > g
          b = +M(f = n[g], g)
          _ = +x(f, g)
          d > b and (d = b)
          m > _ and (m = _)
          b > v and (v = b)
          _ > y and (y = _)
          s.push(b)
          h.push(_)
          ++g
      w = v - d
      S = y - m
      (if w > S then y = m + w else v = d + S)
      E = ar()
      if E.add = (n) ->
        i E, n, +M(n, ++g), +x(n, g), d, m, v, y

      E.visit = (n) ->
        or_ n, E, d, m, v, y

      g = -1
      null is t
        while ++g < p
          i E, n[g], s[g], h[g], d, m, v, y
        --g
      else
        n.forEach E.add
      s = h = n = f = null
      E
    a = undefined
    o = De
    c = je
    (if (a = arguments_.length) then (o = ur
    c = ir
    3 is a and (u = e
    r = t
    e = t = 0
    )
    i(n)
    ) else (i.x = (n) ->
      (if arguments_.length then (o = n
      i
      ) else o)

    i.y = (n) ->
      (if arguments_.length then (c = n
      i
      ) else c)

    i.size = (n) ->
      (if arguments_.length then ((if null is n then t = e = r = u = null else (t = e = 0
      r = +n[0]
      u = +n[1]
      ))
      i
      ) else (if null is t then null else [r, u]))

    i
    ))

  ca.interpolateRgb = cr
  ca.transform = (n) ->
    t = la.createElementNS(ca.ns.prefix.svg, "g")
    (ca.transform = (n) ->
      t.setAttribute "transform", n
      e = t.transform.baseVal.consolidate()
      new lr((if e then e.matrix else Ro))
    ) n

  lr::toString = ->
    "translate(" + @translate + ")rotate(" + @rotate + ")skewX(" + @skew + ")scale(" + @scale + ")"


  Ro =
    a: 1
    b: 0
    c: 0
    d: 1
    e: 0
    f: 0

  ca.interpolateNumber = gr
  ca.interpolateTransform = pr
  ca.interpolateObject = dr
  ca.interpolateString = mr

  Oo = /[-+]?(?:\d+\.?\d*|\.?\d+)(?:[eE][-+]?\d+)?/g
  ca.interpolate = vr
  ca.interpolators = [(n, t) ->
    e = typeof t
    ((if "string" is e or e isnt typeof n then (if Ba.has(t) or /^(#|rgb\(|hsl\()/.test(t) then cr else mr) else (if t instanceof F then cr else (if "object" is e then (if Array.isArray(t) then Mr else dr) else gr)))) n, t
  ]
  ca.interpolateArray = Mr

  Yo = ->
    st

  Uo = ca.map(
    linear: Yo
    poly: kr
    quad: ->
      wr

    cubic: ->
      Sr

    sin: ->
      Ar

    exp: ->
      qr

    circle: ->
      Nr

    elastic: Tr
    back: Cr
    bounce: ->
      zr
  )
  Io = ca.map(
    in: st
    out: br
    "in-out": _r
    "out-in": (n) ->
      _r br(n)
  )
  ca.ease = (n) ->
    t = n.indexOf("-")
    e = (if t >= 0 then n.substring(0, t) else n)
    r = (if t >= 0 then n.substring(t + 1) else "in")
    e = Uo.get(e) or Yo
    r = Io.get(r) or st
    xr(r(e.apply(null, Array::slice.call(arguments_, 1))))

  ca.interpolateHcl = Dr
  ca.interpolateHsl = jr
  ca.interpolateLab = Lr
  ca.interpolateRound = Fr
  ca.layout = {}
  ca.layout.bundle = ->
    (n) ->
      t = []
      e = -1
      r = n.length

      while ++e < r
        t.push Rr(n[e])
      t

  ca.layout.chord = ->
    n = ->
      n = undefined
      l = undefined
      s = undefined
      h = undefined
      g = undefined
      p = {}
      d = []
      m = ca.range(i)
      v = []
      e = []
      r = []
      n = 0
      h = -1

      while ++h < i
        l = 0
        g = -1

        while ++g < i
          l += u[h][g]
        d.push(l)
        v.push(ca.range(i))
        n += l
      a and m.sort((n, t) ->
        a d[n], d[t]
      )
      o and v.forEach((n, t) ->
        n.sort (n, e) ->
          o u[t][n], u[t][e]

      )
      n = (2 * Fa - f * i) / n
      l = 0
      h = -1

      while ++h < i
        s = l
        g = -1

        while ++g < i
          y = m[h]
          M = v[y][g]
          x = u[y][M]
          b = l
          _ = l += x * n
          p[y + "-" + M] =
            index: y
            subindex: M
            startAngle: b
            endAngle: _
            value: x
        r[y] =
          index: y
          startAngle: s
          endAngle: l
          value: (l - s) / n

        l += f
      h = -1
      while ++h < i
        g = h - 1
        while ++g < i
          w = p[h + "-" + g]
          S = p[g + "-" + h]
          (w.value or S.value) and e.push((if w.value < S.value then
            source: S
            target: w
           else
            source: w
            target: S
          ))
      c and t()
    t = ->
      e.sort (n, t) ->
        c (n.source.value + n.target.value) / 2, (t.source.value + t.target.value) / 2

    e = undefined
    r = undefined
    u = undefined
    i = undefined
    a = undefined
    o = undefined
    c = undefined
    l = {}
    f = 0
    l.matrix = (n) ->
      (if arguments_.length then (i = (u = n) and u.length
      e = r = null
      l
      ) else u)

    l.padding = (n) ->
      (if arguments_.length then (f = n
      e = r = null
      l
      ) else f)

    l.sortGroups = (n) ->
      (if arguments_.length then (a = n
      e = r = null
      l
      ) else a)

    l.sortSubgroups = (n) ->
      (if arguments_.length then (o = n
      e = null
      l
      ) else o)

    l.sortChords = (n) ->
      (if arguments_.length then (c = n
      e and t()
      l
      ) else c)

    l.chords = ->
      e or n()
      e

    l.groups = ->
      r or n()
      r

    l

  ca.layout.force = ->
    n = (n) ->
      (t, e, r, u) ->
        if t.point isnt n
          i = t.cx - n.x
          a = t.cy - n.y
          o = 1 / Math.sqrt(i * i + a * a)
          if d > (u - e) * o
            c = t.charge * o * o
            return n.px -= i * c
            n.py -= a * c
            not 0
          if t.point and isFinite(o)
            c = t.pointCharge * o * o
            n.px -= i * c
            n.py -= a * c
        not t.charge
    t = (n) ->
      n.px = ca.event.x
      n.py = ca.event.y
      o.resume()
    e = undefined
    r = undefined
    u = undefined
    i = undefined
    a = undefined
    o = {}
    c = ca.dispatch("start", "tick", "end")
    l = [1, 1]
    f = .9
    s = Vo
    h = Xo
    g = -30
    p = .1
    d = .8
    m = []
    v = []
    o.tick = ->
      if (r *= .99) < .005
        return c.end(
          type: "end"
          alpha: r = 0
        )
        not 0
      t = undefined
      e = undefined
      o = undefined
      s = undefined
      h = undefined
      d = undefined
      y = undefined
      M = undefined
      x = undefined
      b = m.length
      _ = v.length
      e = 0
      while _ > e
        o = v[e]
        s = o.source
        h = o.target
        M = h.x - s.x
        x = h.y - s.y
        (d = M * M + x * x) and (d = r * i[e] * ((d = Math.sqrt(d)) - u[e]) / d
        M *= d
        x *= d
        h.x -= M * (y = s.weight / (h.weight + s.weight))
        h.y -= x * y
        s.x += M * (y = 1 - y)
        s.y += x * y
        )
        ++e
      if (y = r * p) and (M = l[0] / 2
      x = l[1] / 2
      e = -1
      y
      )
        while ++e < b
          o = m[e]
          o.x += (M - o.x) * y
          o.y += (x - o.y) * y
      if g
        Zr(t = ca.geom.quadtree(m), r, a)
        e = -1

        while ++e < b
          (o = m[e]).fixed or t.visit(n(o))
      e = -1
      while ++e < b
        o = m[e]
        (if o.fixed then (o.x = o.px
        o.y = o.py
        ) else (o.x -= (o.px - (o.px = o.x)) * f
        o.y -= (o.py - (o.py = o.y)) * f
        ))
      c.tick
        type: "tick"
        alpha: r


    o.nodes = (n) ->
      (if arguments_.length then (m = n
      o
      ) else m)

    o.links = (n) ->
      (if arguments_.length then (v = n
      o
      ) else v)

    o.size = (n) ->
      (if arguments_.length then (l = n
      o
      ) else l)

    o.linkDistance = (n) ->
      (if arguments_.length then (s = (if "function" is typeof n then n else +n)
      o
      ) else s)

    o.distance = o.linkDistance
    o.linkStrength = (n) ->
      (if arguments_.length then (h = (if "function" is typeof n then n else +n)
      o
      ) else h)

    o.friction = (n) ->
      (if arguments_.length then (f = +n
      o
      ) else f)

    o.charge = (n) ->
      (if arguments_.length then (g = (if "function" is typeof n then n else +n)
      o
      ) else g)

    o.gravity = (n) ->
      (if arguments_.length then (p = +n
      o
      ) else p)

    o.theta = (n) ->
      (if arguments_.length then (d = +n
      o
      ) else d)

    o.alpha = (n) ->
      (if arguments_.length then (n = +n
      (if r then r = (if n > 0 then n else 0) else n > 0 and (c.start(
        type: "start"
        alpha: r = n
      )
      ca.timer(o.tick)
      ))
      o
      ) else r)

    o.start = ->
      n = (n, r) ->
        u = undefined
        i = t(e)
        a = -1
        o = i.length

        while ++a < o
          return u  unless isNaN(u = i[a][n])
        Math.random() * r
      t = ->
        unless c
          c = []
          r = 0

          while p > r
            c[r] = []
            ++r
          r = 0
          while d > r
            n = v[r]
            c[n.source.index].push(n.target)
            c[n.target.index].push(n.source)
            ++r
        c[e]
      e = undefined
      r = undefined
      c = undefined
      f = undefined
      p = m.length
      d = v.length
      y = l[0]
      M = l[1]
      e = 0
      while p > e
        (f = m[e]).index = e
        f.weight = 0
        ++e
      e = 0
      while d > e
        f = v[e]
        typeof f.source is "number" and (f.source = m[f.source])
        typeof f.target is "number" and (f.target = m[f.target])
        ++f.source.weight
        ++f.target.weight
        ++e
      e = 0
      while p > e
        f = m[e]
        isNaN(f.x) and (f.x = n("x", y))
        isNaN(f.y) and (f.y = n("y", M))
        isNaN(f.px) and (f.px = f.x)
        isNaN(f.py) and (f.py = f.y)
        ++e
      if u = []
      "function" is typeof s
        e = 0
        while d > e
          u[e] = +s.call(this, v[e], e)
          ++e
      else
        e = 0
        while d > e
          u[e] = s
          ++e
      if i = []
      "function" is typeof h
        e = 0
        while d > e
          i[e] = +h.call(this, v[e], e)
          ++e
      else
        e = 0
        while d > e
          i[e] = h
          ++e
      if a = []
      "function" is typeof g
        e = 0
        while p > e
          a[e] = +g.call(this, m[e], e)
          ++e
      else
        e = 0
        while p > e
          a[e] = g
          ++e
      o.resume()

    o.resume = ->
      o.alpha .1

    o.stop = ->
      o.alpha 0

    o.drag = ->
      e or (e = ca.behavior.drag().origin(st).on("dragstart.force", Ur).on("drag.force", t).on("dragend.force", Ir))
      (if arguments_.length then (@on("mouseover.force", Vr).on("mouseout.force", Xr).call(e)
      undefined
      ) else e)

    ca.rebind(o, c, "on")


  Vo = 20
  Xo = 1
  ca.layout.hierarchy = ->
    n = (t, a, o) ->
      c = u.call(e, t, a)
      if t.depth = a
      o.push(t)
      c and (l = c.length)
        l = undefined
        f = undefined
        s = -1
        h = t.children = []
        g = 0
        p = a + 1

        while ++s < l
          f = n(c[s], p, o)
          f.parent = t
          h.push(f)
          g += f.value
        r and h.sort(r)
        i and (t.value = g)
      else
        i and (t.value = +i.call(e, t, a) or 0)
      t
    t = (n, r) ->
      u = n.children
      a = 0
      if u and (o = u.length)
        o = undefined
        c = -1
        l = r + 1

        while ++c < o
          a += t(u[c], l)
      else
        i and (a = +i.call(e, n, r) or 0)
      i and (n.value = a)
      a
    e = (t) ->
      e = []
      n(t, 0, e)
      e
    r = Gr
    u = $r
    i = Jr
    e.sort = (n) ->
      (if arguments_.length then (r = n
      e
      ) else r)

    e.children = (n) ->
      (if arguments_.length then (u = n
      e
      ) else u)

    e.value = (n) ->
      (if arguments_.length then (i = n
      e
      ) else i)

    e.revalue = (n) ->
      t(n, 0)
      n

    e

  ca.layout.partition = ->
    n = (t, e, r, u) ->
      i = t.children
      if t.x = e
      t.y = t.depth * u
      t.dx = r
      t.dy = u
      i and (a = i.length)
        a = undefined
        o = undefined
        c = undefined
        l = -1
        r = (if t.value then r / t.value else 0)
        while ++l < a
          n(o = i[l], e, c = o.value * r, u)
          e += c
    t = (n) ->
      e = n.children
      r = 0
      if e and (u = e.length)
        u = undefined
        i = -1

        while ++i < u
          r = Math.max(r, t(e[i]))
      1 + r
    e = (e, i) ->
      a = r.call(this, e, i)
      n(a[0], 0, u[0], u[1] / t(a[0]))
      a
    r = ca.layout.hierarchy()
    u = [1, 1]
    e.size = (n) ->
      (if arguments_.length then (u = n
      e
      ) else u)

    Br(e, r)

  ca.layout.pie = ->
    n = (i) ->
      a = i.map((e, r) ->
        +t.call(n, e, r)
      )
      o = +((if "function" is typeof r then r.apply(this, arguments_) else r))
      c = (((if "function" is typeof u then u.apply(this, arguments_) else u)) - o) / ca.sum(a)
      l = ca.range(i.length)
      null isnt e and l.sort((if e is Zo then (n, t) ->
        a[t] - a[n]
       else (n, t) ->
        e i[n], i[t]
      ))
      f = []
      l.forEach((n) ->
        t = undefined
        f[n] =
          data: i[n]
          value: t = a[n]
          startAngle: o
          endAngle: o += t * c
      )
      f
    t = Number
    e = Zo
    r = 0
    u = 2 * Fa
    n.value = (e) ->
      (if arguments_.length then (t = e
      n
      ) else t)

    n.sort = (t) ->
      (if arguments_.length then (e = t
      n
      ) else e)

    n.startAngle = (t) ->
      (if arguments_.length then (r = t
      n
      ) else r)

    n.endAngle = (t) ->
      (if arguments_.length then (u = t
      n
      ) else u)

    n


  Zo = {}
  ca.layout.stack = ->
    n = (o, c) ->
      l = o.map((e, r) ->
        t.call n, e, r
      )
      f = l.map((t) ->
        t.map (t, e) ->
          [i.call(n, t, e), a.call(n, t, e)]

      )
      s = e.call(n, f, c)
      l = ca.permute(l, s)
      f = ca.permute(f, s)

      h = undefined
      g = undefined
      p = undefined
      d = r.call(n, f, c)
      m = l.length
      v = l[0].length
      g = 0
      while v > g
        u.call(n, l[0][g], p = d[g], f[0][g][1])
        h = 1

        while m > h
          u.call n, l[h][g], p += f[h - 1][g][1], f[h][g][1]
          ++h
        ++g
      o
    t = st
    e = tu
    r = eu
    u = nu
    i = Wr
    a = Qr
    n.values = (e) ->
      (if arguments_.length then (t = e
      n
      ) else t)

    n.order = (t) ->
      (if arguments_.length then (e = (if "function" is typeof t then t else Bo.get(t) or tu)
      n
      ) else e)

    n.offset = (t) ->
      (if arguments_.length then (r = (if "function" is typeof t then t else $o.get(t) or eu)
      n
      ) else r)

    n.x = (t) ->
      (if arguments_.length then (i = t
      n
      ) else i)

    n.y = (t) ->
      (if arguments_.length then (a = t
      n
      ) else a)

    n.out = (t) ->
      (if arguments_.length then (u = t
      n
      ) else u)

    n

  Bo = ca.map(
    "inside-out": (n) ->
      t = undefined
      e = undefined
      r = n.length
      u = n.map(ru)
      i = n.map(uu)
      a = ca.range(r).sort((n, t) ->
        u[n] - u[t]
      )
      o = 0
      c = 0
      l = []
      f = []
      t = 0
      while r > t
        e = a[t]
        (if c > o then (o += i[e]
        l.push(e)
        ) else (c += i[e]
        f.push(e)
        ))
        ++t
      f.reverse().concat l

    reverse: (n) ->
      ca.range(n.length).reverse()

    default: tu
  )
  $o = ca.map(
    silhouette: (n) ->
      t = undefined
      e = undefined
      r = undefined
      u = n.length
      i = n[0].length
      a = []
      o = 0
      c = []
      e = 0
      while i > e
        t = 0
        r = 0

        while u > t
          r += n[t][e][1]
          t++
        r > o and (o = r)
        a.push(r)
        ++e
      e = 0
      while i > e
        c[e] = (o - a[e]) / 2
        ++e
      c

    wiggle: (n) ->
      t = undefined
      e = undefined
      r = undefined
      u = undefined
      i = undefined
      a = undefined
      o = undefined
      c = undefined
      l = undefined
      f = n.length
      s = n[0]
      h = s.length
      g = []
      g[0] = c = l = 0
      e = 1

      while h > e
        t = 0
        u = 0

        while f > t
          u += n[t][e][1]
          ++t
        t = 0
        i = 0
        o = s[e][0] - s[e - 1][0]

        while f > t
          r = 0
          a = (n[t][e][1] - n[t][e - 1][1]) / (2 * o)

          while t > r
            a += (n[r][e][1] - n[r][e - 1][1]) / o
            ++r
          i += a * n[t][e][1]
          ++t
        g[e] = c -= (if u then i / u * o else 0)
        l > c and (l = c)
        ++e
      e = 0
      while h > e
        g[e] -= l
        ++e
      g

    expand: (n) ->
      t = undefined
      e = undefined
      r = undefined
      u = n.length
      i = n[0].length
      a = 1 / u
      o = []
      e = 0
      while i > e
        t = 0
        r = 0

        while u > t
          r += n[t][e][1]
          t++
        if r
          t = 0
          while u > t
            n[t][e][1] /= r
            t++
        else
          t = 0
          while u > t
            n[t][e][1] = a
            t++
        ++e
      e = 0
      while i > e
        o[e] = 0
        ++e
      o

    zero: eu
  )
  ca.layout.histogram = ->
    n = (n, i) ->
      a = undefined
      o = undefined
      c = []
      l = n.map(e, this)
      f = r.call(this, l, i)
      s = u.call(this, f, l, i)
      i = -1
      h = l.length
      g = s.length - 1
      p = (if t then 1 else 1 / h)

      while ++i < g
        a = c[i] = []
        a.dx = s[i + 1] - (a.x = s[i])
        a.y = 0
      if g > 0
        i = -1
        while ++i < h
          o = l[i]
          o >= f[0] and o <= f[1] and (a = c[ca.bisect(s, o, 1, g) - 1]
          a.y += p
          a.push(n[i])
          )
      c
    t = not 0
    e = Number
    r = cu
    u = au
    n.value = (t) ->
      (if arguments_.length then (e = t
      n
      ) else e)

    n.range = (t) ->
      (if arguments_.length then (r = ft(t)
      n
      ) else r)

    n.bins = (t) ->
      (if arguments_.length then (u = (if "number" is typeof t then (n) ->
        ou n, t
       else ft(t))
      n
      ) else u)

    n.frequency = (e) ->
      (if arguments_.length then (t = !!e
      n
      ) else t)

    n

  ca.layout.tree = ->
    n = (n, u) ->
      i = (n, t) ->
        r = n.children
        u = n._tree
        if r and (a = r.length)
          a = undefined
          c = undefined
          l = undefined
          f = r[0]
          s = f
          h = -1

          while ++h < a
            l = r[h]
            i(l, c)
            s = o(l, c, s)
            c = l
          vu n
          g = .5 * (f._tree.prelim + l._tree.prelim)
          (if t then (u.prelim = t._tree.prelim + e(n, t)
          u.mod = u.prelim - g
          ) else u.prelim = g)
        else
          t and (u.prelim = t._tree.prelim + e(n, t))
      a = (n, t) ->
        n.x = n._tree.prelim + t
        e = n.children
        if e and (r = e.length)
          r = undefined
          u = -1
          t += n._tree.mod
          while ++u < r
            a e[u], t
      o = (n, t, r) ->
        if t
          u = undefined
          i = n
          a = n
          o = t
          c = n.parent.children[0]
          l = i._tree.mod
          f = a._tree.mod
          s = o._tree.mod
          h = c._tree.mod

          while o = su(o)
          i = fu(i)
          o and i
            c = fu(c)
            a = su(a)
            a._tree.ancestor = n
            u = o._tree.prelim + s - i._tree.prelim - l + e(o, i)
            u > 0 and (yu(Mu(o, n, r), n, u)
            l += u
            f += u
            )
            s += o._tree.mod
            l += i._tree.mod
            h += c._tree.mod
            f += a._tree.mod
          o and not su(a) and (a._tree.thread = o
          a._tree.mod += s - f
          )
          i and not fu(c) and (c._tree.thread = i
          c._tree.mod += l - h
          r = n
          )
        r
      c = t.call(this, n, u)
      l = c[0]
      mu(l, (n, t) ->
        n._tree =
          ancestor: n
          prelim: 0
          mod: 0
          change: 0
          shift: 0
          number: (if t then t._tree.number + 1 else 0)
      )
      i(l)
      a(l, -l._tree.prelim)

      f = hu(l, pu)
      s = hu(l, gu)
      h = hu(l, du)
      g = f.x - e(f, s) / 2
      p = s.x + e(s, f) / 2
      d = h.depth or 1
      mu(l, (n) ->
        n.x = (n.x - g) / (p - g) * r[0]
        n.y = n.depth / d * r[1]
        delete n._tree
      )
      c
    t = ca.layout.hierarchy().sort(null).value(null)
    e = lu
    r = [1, 1]
    n.separation = (t) ->
      (if arguments_.length then (e = t
      n
      ) else e)

    n.size = (t) ->
      (if arguments_.length then (r = t
      n
      ) else r)

    Br(n, t)

  ca.layout.pack = ->
    n = (n, u) ->
      i = t.call(this, n, u)
      a = i[0]
      a.x = 0
      a.y = 0
      mu(a, (n) ->
        n.r = Math.sqrt(n.value)
      )
      mu(a, Su)

      o = r[0]
      c = r[1]
      l = Math.max(2 * a.r / o, 2 * a.r / c)
      if e > 0
        f = e * l / 2
        mu(a, (n) ->
          n.r += f
        )
        mu(a, Su)
        mu(a, (n) ->
          n.r -= f
        )
        l = Math.max(2 * a.r / o, 2 * a.r / c)
      Au(a, o / 2, c / 2, 1 / l)
      i
    t = ca.layout.hierarchy().sort(xu)
    e = 0
    r = [1, 1]
    n.size = (t) ->
      (if arguments_.length then (r = t
      n
      ) else r)

    n.padding = (t) ->
      (if arguments_.length then (e = +t
      n
      ) else e)

    Br(n, t)

  ca.layout.cluster = ->
    n = (n, u) ->
      i = undefined
      a = t.call(this, n, u)
      o = a[0]
      c = 0
      mu o, (n) ->
        t = n.children
        (if t and t.length then (n.x = Tu(t)
        n.y = Nu(t)
        ) else (n.x = (if i then c += e(n, i) else 0)
        n.y = 0
        i = n
        ))

      l = Cu(o)
      f = zu(o)
      s = l.x - e(l, f) / 2
      h = f.x + e(f, l) / 2
      mu(o, (n) ->
        n.x = (n.x - s) / (h - s) * r[0]
        n.y = (1 - ((if o.y then n.y / o.y else 1))) * r[1]
      )
      a
    t = ca.layout.hierarchy().sort(null).value(null)
    e = lu
    r = [1, 1]
    n.separation = (t) ->
      (if arguments_.length then (e = t
      n
      ) else e)

    n.size = (t) ->
      (if arguments_.length then (r = t
      n
      ) else r)

    Br(n, t)

  ca.layout.treemap = ->
    n = (n, t) ->
      e = undefined
      r = undefined
      u = -1
      i = n.length

      while ++u < i
        r = (e = n[u]).value * ((if 0 > t then 0 else t))
        e.area = (if isNaN(r) or 0 >= r then 0 else r)
    t = (e) ->
      i = e.children
      if i and i.length
        a = undefined
        o = undefined
        c = undefined
        l = s(e)
        f = []
        h = i.slice()
        p = 1 / 0
        d = (if "slice" is g then l.dx else (if "dice" is g then l.dy else (if "slice-dice" is g then (if e.depth & 1 then l.dy else l.dx) else Math.min(l.dx, l.dy))))
        n(h, l.dx * l.dy / e.value)
        f.area = 0

        while (c = h.length) > 0
          f.push(a = h[c - 1])
          f.area += a.area
          (if "squarify" isnt g or (o = r(f, d)) <= p then (h.pop()
          p = o
          ) else (f.area -= f.pop().area
          u(f, d, l, not 1)
          d = Math.min(l.dx, l.dy)
          f.length = f.area = 0
          p = 1 / 0
          ))
        f.length and (u(f, d, l, not 0)
        f.length = f.area = 0
        )
        i.forEach(t)
    e = (t) ->
      r = t.children
      if r and r.length
        i = undefined
        a = s(t)
        o = r.slice()
        c = []
        n(o, a.dx * a.dy / t.value)
        c.area = 0

        while i = o.pop()
          c.push(i)
          c.area += i.area
          i.z? and (u(c, (if i.z then a.dx else a.dy), a, not o.length)
          c.length = c.area = 0
          )
        r.forEach e
    r = (n, t) ->
      e = undefined
      r = n.area
      u = 0
      i = 1 / 0
      a = -1
      o = n.length

      while ++a < o
        (e = n[a].area) and (i > e and (i = e)
        e > u and (u = e)
        )
      r *= r
      t *= t
      (if r then Math.max(t * u * p / r, r / (t * i * p)) else 1 / 0)
    u = (n, t, e, r) ->
      u = undefined
      i = -1
      a = n.length
      o = e.x
      l = e.y
      f = (if t then c(n.area / t) else 0)
      if t is e.dx
        (r or f > e.dy) and (f = e.dy)
        while ++i < a
          u = n[i]
          u.x = o
          u.y = l
          u.dy = f
          o += u.dx = Math.min(e.x + e.dx - o, (if f then c(u.area / f) else 0))
        u.z = not 0
        u.dx += e.x + e.dx - o
        e.y += f
        e.dy -= f
      else
        (r or f > e.dx) and (f = e.dx)
        while ++i < a
          u = n[i]
          u.x = o
          u.y = l
          u.dx = f
          l += u.dy = Math.min(e.y + e.dy - l, (if f then c(u.area / f) else 0))
        u.z = not 1
        u.dy += e.y + e.dy - l
        e.x += f
        e.dx -= f
    i = (r) ->
      u = a or o(r)
      i = u[0]
      i.x = 0
      i.y = 0
      i.dx = l[0]
      i.dy = l[1]
      a and o.revalue(i)
      n([i], i.dx * i.dy / i.value)
      ((if a then e else t))(i)
      h and (a = u)
      u
    a = undefined
    o = ca.layout.hierarchy()
    c = Math.round
    l = [1, 1]
    f = null
    s = Du
    h = not 1
    g = "squarify"
    p = .5 * (1 + Math.sqrt(5))
    i.size = (n) ->
      (if arguments_.length then (l = n
      i
      ) else l)

    i.padding = (n) ->
      t = (t) ->
        e = n.call(i, t, t.depth)
        (if null is e then Du(t) else ju(t, (if "number" is typeof e then [e, e, e, e] else e)))
      e = (t) ->
        ju t, n
      return f  unless arguments_.length
      r = undefined
      s = (if not (f = n)? then Du else (if (r = typeof n) is "function" then t else (if "number" is r then (n = [n, n, n, n]
      e
      ) else e)))
      i

    i.round = (n) ->
      (if arguments_.length then (c = (if n then Math.round else Number)
      i
      ) else c isnt Number)

    i.sticky = (n) ->
      (if arguments_.length then (h = n
      a = null
      i
      ) else h)

    i.ratio = (n) ->
      (if arguments_.length then (p = n
      i
      ) else p)

    i.mode = (n) ->
      (if arguments_.length then (g = n + ""
      i
      ) else g)

    Br(i, o)

  ca.random =
    normal: (n, t) ->
      e = arguments_.length
      2 > e and (t = 1)
      1 > e and (n = 0)
      ->
        e = undefined
        r = undefined
        u = undefined
        loop
          e = Math.random() * 2 - 1
          r = Math.random() * 2 - 1
          u = e * e + r * r
          break unless not u or u > 1
        n + t * e * Math.sqrt(-2 * Math.log(u) / u)

    logNormal: ->
      n = ca.random.normal.apply(ca, arguments_)
      ->
        Math.exp n()

    irwinHall: (n) ->
      ->
        t = 0
        e = 0

        while n > e
          t += Math.random()
          e++
        t / n

  ca.scale = {}
  ca.scale.linear = ->
    Ou [0, 1], [0, 1], vr, not 1

  ca.scale.log = ->
    Zu ca.scale.linear().domain([0, Math.LN10]), 10, Bu, $u


  Jo = ca.format(".0e")
  ca.scale.pow = ->
    Wu ca.scale.linear(), 1

  ca.scale.sqrt = ->
    ca.scale.pow().exponent .5

  ca.scale.ordinal = ->
    ni [],
      t: "range"
      a: [[]]


  ca.scale.category10 = ->
    ca.scale.ordinal().range Go

  ca.scale.category20 = ->
    ca.scale.ordinal().range Ko

  ca.scale.category20b = ->
    ca.scale.ordinal().range Wo

  ca.scale.category20c = ->
    ca.scale.ordinal().range Qo


  Go = ["#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd", "#8c564b", "#e377c2", "#7f7f7f", "#bcbd22", "#17becf"]
  Ko = ["#1f77b4", "#aec7e8", "#ff7f0e", "#ffbb78", "#2ca02c", "#98df8a", "#d62728", "#ff9896", "#9467bd", "#c5b0d5", "#8c564b", "#c49c94", "#e377c2", "#f7b6d2", "#7f7f7f", "#c7c7c7", "#bcbd22", "#dbdb8d", "#17becf", "#9edae5"]
  Wo = ["#393b79", "#5254a3", "#6b6ecf", "#9c9ede", "#637939", "#8ca252", "#b5cf6b", "#cedb9c", "#8c6d31", "#bd9e39", "#e7ba52", "#e7cb94", "#843c39", "#ad494a", "#d6616b", "#e7969c", "#7b4173", "#a55194", "#ce6dbd", "#de9ed6"]
  Qo = ["#3182bd", "#6baed6", "#9ecae1", "#c6dbef", "#e6550d", "#fd8d3c", "#fdae6b", "#fdd0a2", "#31a354", "#74c476", "#a1d99b", "#c7e9c0", "#756bb1", "#9e9ac8", "#bcbddc", "#dadaeb", "#636363", "#969696", "#bdbdbd", "#d9d9d9"]
  ca.scale.quantile = ->
    ti [], []

  ca.scale.quantize = ->
    ei 0, 1, [0, 1]

  ca.scale.threshold = ->
    ri [.5], [0, 1]

  ca.scale.identity = ->
    ui [0, 1]

  ca.svg.arc = ->
    n = ->
      n = t.apply(this, arguments_)
      i = e.apply(this, arguments_)
      a = r.apply(this, arguments_) + nc
      o = u.apply(this, arguments_) + nc
      c = (a > o and (c = a
      a = o
      o = c
      )
      o - a
      )
      l = (if Fa > c then "0" else "1")
      f = Math.cos(a)
      s = Math.sin(a)
      h = Math.cos(o)
      g = Math.sin(o)
      (if c >= tc then (if n then "M0," + i + "A" + i + "," + i + " 0 1,1 0," + -i + "A" + i + "," + i + " 0 1,1 0," + i + "M0," + n + "A" + n + "," + n + " 0 1,0 0," + -n + "A" + n + "," + n + " 0 1,0 0," + n + "Z" else "M0," + i + "A" + i + "," + i + " 0 1,1 0," + -i + "A" + i + "," + i + " 0 1,1 0," + i + "Z") else (if n then "M" + i * f + "," + i * s + "A" + i + "," + i + " 0 " + l + ",1 " + i * h + "," + i * g + "L" + n * h + "," + n * g + "A" + n + "," + n + " 0 " + l + ",0 " + n * f + "," + n * s + "Z" else "M" + i * f + "," + i * s + "A" + i + "," + i + " 0 " + l + ",1 " + i * h + "," + i * g + "L0,0" + "Z"))
    t = ii
    e = ai
    r = oi
    u = ci
    n.innerRadius = (e) ->
      (if arguments_.length then (t = ft(e)
      n
      ) else t)

    n.outerRadius = (t) ->
      (if arguments_.length then (e = ft(t)
      n
      ) else e)

    n.startAngle = (t) ->
      (if arguments_.length then (r = ft(t)
      n
      ) else r)

    n.endAngle = (t) ->
      (if arguments_.length then (u = ft(t)
      n
      ) else u)

    n.centroid = ->
      n = (t.apply(this, arguments_) + e.apply(this, arguments_)) / 2
      i = (r.apply(this, arguments_) + u.apply(this, arguments_)) / 2 + nc
      [Math.cos(i) * n, Math.sin(i) * n]

    n


  nc = -Fa / 2
  tc = 2 * Fa - 1e-6
  ca.svg.line.radial = ->
    n = ze(li)
    n.radius = n.x
    delete n.x

    n.angle = n.y
    delete n.y

    n

  He.reverse = Pe
  Pe.reverse = He
  ca.svg.area = ->
    fi st

  ca.svg.area.radial = ->
    n = fi(li)
    n.radius = n.x
    delete n.x

    n.innerRadius = n.x0
    delete n.x0

    n.outerRadius = n.x1
    delete n.x1

    n.angle = n.y
    delete n.y

    n.startAngle = n.y0
    delete n.y0

    n.endAngle = n.y1
    delete n.y1

    n

  ca.svg.chord = ->
    n = (n, o) ->
      c = t(this, i, n, o)
      l = t(this, a, n, o)
      "M" + c.p0 + r(c.r, c.p1, c.a1 - c.a0) + ((if e(c, l) then u(c.r, c.p1, c.r, c.p0) else u(c.r, c.p1, l.r, l.p0) + r(l.r, l.p1, l.a1 - l.a0) + u(l.r, l.p1, c.r, c.p0))) + "Z"
    t = (n, t, e, r) ->
      u = t.call(n, e, r)
      i = o.call(n, u, r)
      a = c.call(n, u, r) + nc
      f = l.call(n, u, r) + nc
      r: i
      a0: a
      a1: f
      p0: [i * Math.cos(a), i * Math.sin(a)]
      p1: [i * Math.cos(f), i * Math.sin(f)]
    e = (n, t) ->
      n.a0 is t.a0 and n.a1 is t.a1
    r = (n, t, e) ->
      "A" + n + "," + n + " 0 " + +(e > Fa) + ",1 " + t
    u = (n, t, e, r) ->
      "Q 0,0 " + r
    i = fe
    a = se
    o = si
    c = oi
    l = ci
    n.radius = (t) ->
      (if arguments_.length then (o = ft(t)
      n
      ) else o)

    n.source = (t) ->
      (if arguments_.length then (i = ft(t)
      n
      ) else i)

    n.target = (t) ->
      (if arguments_.length then (a = ft(t)
      n
      ) else a)

    n.startAngle = (t) ->
      (if arguments_.length then (c = ft(t)
      n
      ) else c)

    n.endAngle = (t) ->
      (if arguments_.length then (l = ft(t)
      n
      ) else l)

    n

  ca.svg.diagonal = ->
    n = (n, u) ->
      i = t.call(this, n, u)
      a = e.call(this, n, u)
      o = (i.y + a.y) / 2
      c = [i,
        x: i.x
        y: o
      ,
        x: a.x
        y: o
      , a]
      c = c.map(r)
      "M" + c[0] + "C" + c[1] + " " + c[2] + " " + c[3]
    t = fe
    e = se
    r = hi
    n.source = (e) ->
      (if arguments_.length then (t = ft(e)
      n
      ) else t)

    n.target = (t) ->
      (if arguments_.length then (e = ft(t)
      n
      ) else e)

    n.projection = (t) ->
      (if arguments_.length then (r = t
      n
      ) else r)

    n

  ca.svg.diagonal.radial = ->
    n = ca.svg.diagonal()
    t = hi
    e = n.projection
    n.projection = (n) ->
      (if arguments_.length then e(gi(t = n)) else t)

    n

  ca.svg.symbol = ->
    n = (n, r) ->
      (ec.get(t.call(this, n, r)) or mi) e.call(this, n, r)
    t = di
    e = pi
    n.type = (e) ->
      (if arguments_.length then (t = ft(e)
      n
      ) else t)

    n.size = (t) ->
      (if arguments_.length then (e = ft(t)
      n
      ) else e)

    n


  ec = ca.map(
    circle: mi
    cross: (n) ->
      t = Math.sqrt(n / 5) / 2
      "M" + -3 * t + "," + -t + "H" + -t + "V" + -3 * t + "H" + t + "V" + -t + "H" + 3 * t + "V" + t + "H" + t + "V" + 3 * t + "H" + -t + "V" + t + "H" + -3 * t + "Z"

    diamond: (n) ->
      t = Math.sqrt(n / (2 * ic))
      e = t * ic
      "M0," + -t + "L" + e + ",0" + " 0," + t + " " + -e + ",0" + "Z"

    square: (n) ->
      t = Math.sqrt(n) / 2
      "M" + -t + "," + -t + "L" + t + "," + -t + " " + t + "," + t + " " + -t + "," + t + "Z"

    "triangle-down": (n) ->
      t = Math.sqrt(n / uc)
      e = t * uc / 2
      "M0," + e + "L" + t + "," + -e + " " + -t + "," + -e + "Z"

    "triangle-up": (n) ->
      t = Math.sqrt(n / uc)
      e = t * uc / 2
      "M0," + -e + "L" + t + "," + e + " " + -t + "," + e + "Z"
  )
  ca.svg.symbolTypes = ec.keys()
  rc = undefined
  uc = Math.sqrt(3)
  ic = Math.tan(30 * Pa)
  ac = []
  oc = 0
  cc =
    ease: Er
    delay: 0
    duration: 250

  ac.call = ka.call
  ac.empty = ka.empty
  ac.node = ka.node
  ca.transition = (n) ->
    (if arguments_.length then (if rc then n.transition() else n) else Ca.transition())

  ca.transition:: = ac
  ac.select = (n) ->
    t = undefined
    e = undefined
    r = undefined
    u = @id
    i = []
    "function" isnt typeof n and (n = v(n))
    a = -1
    o = @length

    while ++a < o
      i.push t = []
      c = this[a]
      l = -1
      f = c.length

      while ++l < f
        (if (r = c[l]) and (e = n.call(r, r.__data__, l)) then ("__data__" of r and (e.__data__ = r.__data__)
        xi(e, l, u, r.__transition__[u])
        t.push(e)
        ) else t.push(null))
    vi i, u

  ac.selectAll = (n) ->
    t = undefined
    e = undefined
    r = undefined
    u = undefined
    i = undefined
    a = @id
    o = []
    "function" isnt typeof n and (n = y(n))
    c = -1
    l = @length

    while ++c < l
      f = this[c]
      s = -1
      h = f.length

      while ++s < h
        if r = f[s]
          i = r.__transition__[a]
          e = n.call(r, r.__data__, s)
          o.push(t = [])

          g = -1
          p = e.length

          while ++g < p
            xi(u = e[g], g, a, i)
            t.push(u)
    vi o, a

  ac.filter = (n) ->
    t = undefined
    e = undefined
    r = undefined
    u = []
    "function" isnt typeof n and (n = q(n))
    i = 0
    a = @length

    while a > i
      u.push t = []
      e = this[i]
      o = 0
      c = e.length

      while c > o
        (r = e[o]) and n.call(r, r.__data__, o) and t.push(r)
        o++
      i++
    vi(u, @id, @time).ease @ease()

  ac.tween = (n, t) ->
    e = @id
    (if arguments_.length < 2 then @node().__transition__[e].tween.get(n) else j(this, (if null is t then (t) ->
      t.__transition__[e].tween.remove n
     else (r) ->
      r.__transition__[e].tween.set n, t
    )))

  ac.attr = (n, t) ->
    e = ->
      @removeAttribute i
    r = ->
      @removeAttributeNS i.space, i.local
    if arguments_.length < 2
      for t of n
        @attr t, n[t]
      return this
    u = yr(n)
    i = ca.ns.qualify(n)
    yi this, "attr." + n, t, (n) ->
      t = ->
        t = undefined
        e = @getAttribute(i)
        e isnt n and (t = u(e, n)
        (n) ->
          @setAttribute i, t(n)

        )
      a = ->
        t = undefined
        e = @getAttributeNS(i.space, i.local)
        e isnt n and (t = u(e, n)
        (n) ->
          @setAttributeNS i.space, i.local, t(n)

        )
      (if null is n then (if i.local then r else e) else (n += ""
      (if i.local then a else t)
      ))


  ac.attrTween = (n, t) ->
    e = (n, e) ->
      r = t.call(this, n, e, @getAttribute(u))
      r and (n) ->
        @setAttribute u, r(n)
    r = (n, e) ->
      r = t.call(this, n, e, @getAttributeNS(u.space, u.local))
      r and (n) ->
        @setAttributeNS u.space, u.local, r(n)
    u = ca.ns.qualify(n)
    @tween "attr." + n, (if u.local then r else e)

  ac.style = (n, t, e) ->
    r = ->
      @style.removeProperty n
    u = arguments_.length
    if 3 > u
      unless "string" is typeof n
        2 > u and (t = "")
        for e of n
          @style e, n[e], t
        return this
      e = ""
    i = yr(n)
    yi this, "style." + n, t, (t) ->
      u = ->
        r = undefined
        u = fa.getComputedStyle(this, null).getPropertyValue(n)
        u isnt t and (r = i(u, t)
        (t) ->
          @style.setProperty n, r(t), e

        )
      (if null is t then r else (t += ""
      u
      ))


  ac.styleTween = (n, t, e) ->
    arguments_.length < 3 and (e = "")
    @tween("style." + n, (r, u) ->
      i = t.call(this, r, u, fa.getComputedStyle(this, null).getPropertyValue(n))
      i and (t) ->
        @style.setProperty n, i(t), e
    )

  ac.text = (n) ->
    yi this, "text", n, Mi

  ac.remove = ->
    @each "end.transition", ->
      n = undefined
      not @__transition__ and (n = @parentNode) and n.removeChild(this)


  ac.ease = (n) ->
    t = @id
    (if arguments_.length < 1 then @node().__transition__[t].ease else ("function" isnt typeof n and (n = ca.ease.apply(ca, arguments_))
    j(this, (e) ->
      e.__transition__[t].ease = n
    )
    ))

  ac.delay = (n) ->
    t = @id
    j this, (if "function" is typeof n then (e, r, u) ->
      e.__transition__[t].delay = n.call(e, e.__data__, r, u) | 0
     else (n |= 0
    (e) ->
      e.__transition__[t].delay = n

    ))

  ac.duration = (n) ->
    t = @id
    j this, (if "function" is typeof n then (e, r, u) ->
      e.__transition__[t].duration = Math.max(1, n.call(e, e.__data__, r, u) | 0)
     else (n = Math.max(1, 0 | n)
    (e) ->
      e.__transition__[t].duration = n

    ))

  ac.each = (n, t) ->
    e = @id
    if arguments_.length < 2
      r = cc
      u = rc
      rc = e
      j(this, (t, r, u) ->
        cc = t.__transition__[e]
        n.call(t, t.__data__, r, u)
      )
      cc = r
      rc = u
    else
      j this, (r) ->
        r.__transition__[e].event.on n, t

    this

  ac.transition = ->
    n = undefined
    t = undefined
    e = undefined
    r = undefined
    u = @id
    i = ++oc
    a = []
    o = 0
    c = @length

    while c > o
      a.push n = []
      t = this[o]
      l = 0
      f = t.length

      while f > l
        (e = t[l]) and (r = Object.create(e.__transition__[u])
        r.delay += r.duration
        xi(e, l, i, r)
        )
        n.push(e)
        l++
      o++
    vi a, i

  ca.svg.axis = ->
    n = (n) ->
      n.each ->
        n = undefined
        s = ca.select(this)
        h = (if null is l then (if e.ticks then e.ticks.apply(e, c) else e.domain()) else l)
        g = (if null is t then (if e.tickFormat then e.tickFormat.apply(e, c) else String) else t)
        p = wi(e, h, f)
        d = s.selectAll(".tick.minor").data(p, String)
        m = d.enter().insert("line", ".tick").attr("class", "tick minor").style("opacity", 1e-6)
        v = ca.transition(d.exit()).style("opacity", 1e-6).remove()
        y = ca.transition(d).style("opacity", 1)
        M = s.selectAll(".tick.major").data(h, String)
        x = M.enter().insert("g", "path").attr("class", "tick major").style("opacity", 1e-6)
        b = ca.transition(M.exit()).style("opacity", 1e-6).remove()
        _ = ca.transition(M).style("opacity", 1)
        w = Fu(e)
        S = s.selectAll(".domain").data([0])
        E = (S.enter().append("path").attr("class", "domain")
        ca.transition(S)
        )
        k = e.copy()
        A = @__chart__ or k
        @__chart__ = k
        x.append("line")
        x.append("text")

        q = x.select("line")
        N = _.select("line")
        T = M.select("text").text(g)
        C = x.select("text")
        z = _.select("text")
        switch r
          when "bottom"
            n = bi
            m.attr("y2", i)
            y.attr("x2", 0).attr("y2", i)
            q.attr("y2", u)
            C.attr("y", Math.max(u, 0) + o)
            N.attr("x2", 0).attr("y2", u)
            z.attr("x", 0).attr("y", Math.max(u, 0) + o)
            T.attr("dy", ".71em").style("text-anchor", "middle")
            E.attr("d", "M" + w[0] + "," + a + "V0H" + w[1] + "V" + a)
          when "top"
            n = bi
            m.attr("y2", -i)
            y.attr("x2", 0).attr("y2", -i)
            q.attr("y2", -u)
            C.attr("y", -(Math.max(u, 0) + o))
            N.attr("x2", 0).attr("y2", -u)
            z.attr("x", 0).attr("y", -(Math.max(u, 0) + o))
            T.attr("dy", "0em").style("text-anchor", "middle")
            E.attr("d", "M" + w[0] + "," + -a + "V0H" + w[1] + "V" + -a)
          when "left"
            n = _i
            m.attr("x2", -i)
            y.attr("x2", -i).attr("y2", 0)
            q.attr("x2", -u)
            C.attr("x", -(Math.max(u, 0) + o))
            N.attr("x2", -u).attr("y2", 0)
            z.attr("x", -(Math.max(u, 0) + o)).attr("y", 0)
            T.attr("dy", ".32em").style("text-anchor", "end")
            E.attr("d", "M" + -a + "," + w[0] + "H0V" + w[1] + "H" + -a)
          when "right"
            n = _i
            m.attr("x2", i)
            y.attr("x2", i).attr("y2", 0)
            q.attr("x2", u)
            C.attr("x", Math.max(u, 0) + o)
            N.attr("x2", u).attr("y2", 0)
            z.attr("x", Math.max(u, 0) + o).attr("y", 0)
            T.attr("dy", ".32em").style("text-anchor", "start")
            E.attr("d", "M" + a + "," + w[0] + "H0V" + w[1] + "H" + a)
        unless e.ticks
          D = k.rangeBand() / 2
          j = (n) ->
            k(n) + D

          x.call(n, j)
          _.call(n, j)

    t = undefined
    e = ca.scale.linear()
    r = lc
    u = 6
    i = 6
    a = 6
    o = 3
    c = [10]
    l = null
    f = 0
    n.scale = (t) ->
      (if arguments_.length then (e = t
      n
      ) else e)

    n.orient = (t) ->
      (if arguments_.length then (r = (if t of fc then t + "" else lc)
      n
      ) else r)

    n.ticks = ->
      (if arguments_.length then (c = arguments_
      n
      ) else c)

    n.tickValues = (t) ->
      (if arguments_.length then (l = t
      n
      ) else l)

    n.tickFormat = (e) ->
      (if arguments_.length then (t = e
      n
      ) else t)

    n.tickSize = (t, e) ->
      return u  unless arguments_.length
      r = arguments_.length - 1
      u = +t
      i = (if r > 1 then +e else u)
      a = (if r > 0 then +arguments_[r] else u)
      n

    n.tickPadding = (t) ->
      (if arguments_.length then (o = +t
      n
      ) else o)

    n.tickSubdivide = (t) ->
      (if arguments_.length then (f = +t
      n
      ) else f)

    n


  lc = "bottom"
  fc =
    top: 1
    right: 1
    bottom: 1
    left: 1

  ca.svg.brush = ->
    n = (i) ->
      i.each ->
        i = undefined
        a = ca.select(this)
        l = a.selectAll(".background").data([0])
        s = a.selectAll(".extent").data([0])
        h = a.selectAll(".resize").data(f, String)
        a.style("pointer-events", "all").on("mousedown.brush", u).on("touchstart.brush", u)
        l.enter().append("rect").attr("class", "background").style("visibility", "hidden").style("cursor", "crosshair")
        s.enter().append("rect").attr("class", "extent").style("cursor", "move")
        h.enter().append("g").attr("class", (n) ->
          "resize " + n
        ).style("cursor", (n) ->
          sc[n]
        ).append("rect").attr("x", (n) ->
          (if /[ew]$/.test(n) then -3 else null)
        ).attr("y", (n) ->
          (if /^[ns]/.test(n) then -3 else null)
        ).attr("width", 6).attr("height", 6).style("visibility", "hidden")
        h.style("display", (if n.empty() then "none" else null))
        h.exit().remove()
        o and (i = Fu(o)
        l.attr("x", i[0]).attr("width", i[1] - i[0])
        e(a)
        )
        c and (i = Fu(c)
        l.attr("y", i[0]).attr("height", i[1] - i[0])
        r(a)
        )
        t(a)

    t = (n) ->
      n.selectAll(".resize").attr "transform", (n) ->
        "translate(" + s[+/e$/.test(n)][0] + "," + s[+/^s/.test(n)][1] + ")"

    e = (n) ->
      n.select(".extent").attr("x", s[0][0])
      n.selectAll(".extent,.n>rect,.s>rect").attr("width", s[1][0] - s[0][0])
    r = (n) ->
      n.select(".extent").attr("y", s[0][1])
      n.selectAll(".extent,.e>rect,.w>rect").attr("height", s[1][1] - s[0][1])
    u = ->
      u = ->
        n = ca.event.changedTouches
        (if n then ca.touches(y, n)[0] else ca.mouse(y))
      f = ->
        ca.event.keyCode is 32 and (E or (m = null
        k[0] -= s[1][0]
        k[1] -= s[1][1]
        E = 2
        )
        l()
        )
      h = ->
        ca.event.keyCode is 32 and 2 is E and (k[0] += s[1][0]
        k[1] += s[1][1]
        E = 0
        l()
        )
      g = ->
        n = u()
        i = not 1
        v and (n[0] += v[0]
        n[1] += v[1]
        )
        E or ((if ca.event.altKey then (m or (m = [(s[0][0] + s[1][0]) / 2, (s[0][1] + s[1][1]) / 2])
        k[0] = s[+(n[0] < m[0])][0]
        k[1] = s[+(n[1] < m[1])][1]
        ) else m = null))
        w and p(n, o, 0) and (e(b)
        i = not 0
        )
        S and p(n, c, 1) and (r(b)
        i = not 0
        )
        i and (t(b)
        x(
          type: "brush"
          mode: (if E then "move" else "resize")
        )
        )
      p = (n, t, e) ->
        r = undefined
        u = undefined
        a = Fu(t)
        o = a[0]
        c = a[1]
        l = k[e]
        f = s[1][e] - s[0][e]
        E and (o -= l
        c -= f + l
        )
        r = Math.max(o, Math.min(c, n[e]))
        (if E then u = (r += l) + f else (m and (l = Math.max(o, Math.min(c, 2 * m[e] - r)))
        (if r > l then (u = r
        r = l
        ) else u = l)
        ))
        (if s[0][e] isnt r or s[1][e] isnt u then (i = null
        s[0][e] = r
        s[1][e] = u
        not 0
        ) else undefined)
      d = ->
        g()
        b.style("pointer-events", "all").selectAll(".resize").style("display", (if n.empty() then "none" else null))
        ca.select("body").style("cursor", null)
        A.on("mousemove.brush", null).on("mouseup.brush", null).on("touchmove.brush", null).on("touchend.brush", null).on("keydown.brush", null).on("keyup.brush", null)
        x(type: "brushend")
        l()
      m = undefined
      v = undefined
      y = this
      M = ca.select(ca.event.target)
      x = a.of(y, arguments_)
      b = ca.select(y)
      _ = M.datum()
      w = not /^(n|s)$/.test(_) and o
      S = not /^(e|w)$/.test(_) and c
      E = M.classed("extent")
      k = u()
      A = ca.select(fa).on("mousemove.brush", g).on("mouseup.brush", d).on("touchmove.brush", g).on("touchend.brush", d).on("keydown.brush", f).on("keyup.brush", h)
      if E
        k[0] = s[0][0] - k[0]
        k[1] = s[0][1] - k[1]
      else if _
        q = +/w$/.test(_)
        N = +/^n/.test(_)
        v = [s[1 - q][0] - k[0], s[1 - N][1] - k[1]]
        k[0] = s[q][0]
        k[1] = s[N][1]
      else
        ca.event.altKey and (m = k.slice())
      b.style("pointer-events", "none").selectAll(".resize").style("display", null)
      ca.select("body").style("cursor", M.style("cursor"))
      x(type: "brushstart")
      g()
      l()
    i = undefined
    a = h(n, "brushstart", "brush", "brushend")
    o = null
    c = null
    f = hc[0]
    s = [[0, 0], [0, 0]]
    n.x = (t) ->
      (if arguments_.length then (o = t
      f = hc[not o << 1 | not c]
      n
      ) else o)

    n.y = (t) ->
      (if arguments_.length then (c = t
      f = hc[not o << 1 | not c]
      n
      ) else c)

    n.extent = (t) ->
      e = undefined
      r = undefined
      u = undefined
      a = undefined
      l = undefined
      (if arguments_.length then (i = [[0, 0], [0, 0]]
      o and (e = t[0]
      r = t[1]
      c and (e = e[0]
      r = r[0]
      )
      i[0][0] = e
      i[1][0] = r
      o.invert and (e = o(e)
      r = o(r)
      )
      e > r and (l = e
      e = r
      r = l
      )
      s[0][0] = 0 | e
      s[1][0] = 0 | r
      )
      c and (u = t[0]
      a = t[1]
      o and (u = u[1]
      a = a[1]
      )
      i[0][1] = u
      i[1][1] = a
      c.invert and (u = c(u)
      a = c(a)
      )
      u > a and (l = u
      u = a
      a = l
      )
      s[0][1] = 0 | u
      s[1][1] = 0 | a
      )
      n
      ) else (t = i or s
      o and (e = t[0][0]
      r = t[1][0]
      i or (e = s[0][0]
      r = s[1][0]
      o.invert and (e = o.invert(e)
      r = o.invert(r)
      )
      e > r and (l = e
      e = r
      r = l
      )
      )
      )
      c and (u = t[0][1]
      a = t[1][1]
      i or (u = s[0][1]
      a = s[1][1]
      c.invert and (u = c.invert(u)
      a = c.invert(a)
      )
      u > a and (l = u
      u = a
      a = l
      )
      )
      )
      (if o and c then [[e, u], [r, a]] else (if o then [e, r] else c and [u, a]))
      ))

    n.clear = ->
      i = null
      s[0][0] = s[0][1] = s[1][0] = s[1][1] = 0
      n

    n.empty = ->
      o and s[0][0] is s[1][0] or c and s[0][1] is s[1][1]

    ca.rebind(n, a, "on")

  sc =
    n: "ns-resize"
    e: "ew-resize"
    s: "ns-resize"
    w: "ew-resize"
    nw: "nwse-resize"
    ne: "nesw-resize"
    se: "nwse-resize"
    sw: "nesw-resize"

  hc = [["n", "e", "s", "w", "nw", "ne", "se", "sw"], ["e", "w"], ["n", "s"], []]
  ca.time = {}
  gc = Date
  pc = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
  Si:: =
    getDate: ->
      @_.getUTCDate()

    getDay: ->
      @_.getUTCDay()

    getFullYear: ->
      @_.getUTCFullYear()

    getHours: ->
      @_.getUTCHours()

    getMilliseconds: ->
      @_.getUTCMilliseconds()

    getMinutes: ->
      @_.getUTCMinutes()

    getMonth: ->
      @_.getUTCMonth()

    getSeconds: ->
      @_.getUTCSeconds()

    getTime: ->
      @_.getTime()

    getTimezoneOffset: ->
      0

    valueOf: ->
      @_.valueOf()

    setDate: ->
      dc.setUTCDate.apply @_, arguments_

    setDay: ->
      dc.setUTCDay.apply @_, arguments_

    setFullYear: ->
      dc.setUTCFullYear.apply @_, arguments_

    setHours: ->
      dc.setUTCHours.apply @_, arguments_

    setMilliseconds: ->
      dc.setUTCMilliseconds.apply @_, arguments_

    setMinutes: ->
      dc.setUTCMinutes.apply @_, arguments_

    setMonth: ->
      dc.setUTCMonth.apply @_, arguments_

    setSeconds: ->
      dc.setUTCSeconds.apply @_, arguments_

    setTime: ->
      dc.setTime.apply @_, arguments_

  dc = Date::
  mc = "%a %b %e %X %Y"
  vc = "%m/%d/%Y"
  yc = "%H:%M:%S"
  Mc = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
  xc = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
  bc = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  _c = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
  ca.time.year = Ei((n) ->
    n = ca.time.day(n)
    n.setMonth(0, 1)
    n
  , (n, t) ->
    n.setFullYear n.getFullYear() + t
  , (n) ->
    n.getFullYear()
  )
  ca.time.years = ca.time.year.range
  ca.time.years.utc = ca.time.year.utc.range
  ca.time.day = Ei((n) ->
    t = new gc(1970, 0)
    t.setFullYear(n.getFullYear(), n.getMonth(), n.getDate())
    t
  , (n, t) ->
    n.setDate n.getDate() + t
  , (n) ->
    n.getDate() - 1
  )
  ca.time.days = ca.time.day.range
  ca.time.days.utc = ca.time.day.utc.range
  ca.time.dayOfYear = (n) ->
    t = ca.time.year(n)
    Math.floor (n - t - (n.getTimezoneOffset() - t.getTimezoneOffset()) * 6e4) / 864e5

  pc.forEach((n, t) ->
    n = n.toLowerCase()
    t = 7 - t

    e = ca.time[n] = Ei((n) ->
      (n = ca.time.day(n)).setDate(n.getDate() - (n.getDay() + t) % 7)
      n
    , (n, t) ->
      n.setDate n.getDate() + Math.floor(t) * 7
    , (n) ->
      e = ca.time.year(n).getDay()
      Math.floor((ca.time.dayOfYear(n) + (e + t) % 7) / 7) - (e isnt t)
    )
    ca.time[n + "s"] = e.range
    ca.time[n + "s"].utc = e.utc.range
    ca.time[n + "OfYear"] = (n) ->
      e = ca.time.year(n).getDay()
      Math.floor (ca.time.dayOfYear(n) + (e + t) % 7) / 7
  )
  ca.time.week = ca.time.sunday
  ca.time.weeks = ca.time.sunday.range
  ca.time.weeks.utc = ca.time.sunday.utc.range
  ca.time.weekOfYear = ca.time.sundayOfYear
  ca.time.format = (n) ->
    t = (t) ->
      r = undefined
      u = undefined
      i = undefined
      a = []
      o = -1
      c = 0

      while ++o < e
        n.charCodeAt(o) is 37 and (a.push(n.substring(c, o))
        (u = Nc[r = n.charAt(++o)])? and (r = n.charAt(++o))
        (i = Tc[r]) and (r = i(t, (if null is u then (if "e" is r then " " else "0") else u)))
        a.push(r)
        c = o + 1
        )
      a.push(n.substring(c, o))
      a.join("")
    e = n.length
    t.parse = (t) ->
      e =
        y: 1900
        m: 0
        d: 1
        H: 0
        M: 0
        S: 0
        L: 0

      r = Ai(e, n, t, 0)
      return null  unless r is t.length
      "p" of e and (e.H = e.H % 12 + e.p * 12)
      u = new gc
      u.setFullYear(e.y, e.m, e.d)
      u.setHours(e.H, e.M, e.S, e.L)
      u

    t.toString = ->
      n

    t


  wc = qi(Mc)
  Sc = qi(xc)
  Ec = qi(bc)
  kc = Ni(bc)
  Ac = qi(_c)
  qc = Ni(_c)
  Nc =
    "-": ""
    _: " "
    0: "0"

  Tc =
    a: (n) ->
      xc[n.getDay()]

    A: (n) ->
      Mc[n.getDay()]

    b: (n) ->
      _c[n.getMonth()]

    B: (n) ->
      bc[n.getMonth()]

    c: ca.time.format(mc)
    d: (n, t) ->
      Ti n.getDate(), t, 2

    e: (n, t) ->
      Ti n.getDate(), t, 2

    H: (n, t) ->
      Ti n.getHours(), t, 2

    I: (n, t) ->
      Ti n.getHours() % 12 or 12, t, 2

    j: (n, t) ->
      Ti 1 + ca.time.dayOfYear(n), t, 3

    L: (n, t) ->
      Ti n.getMilliseconds(), t, 3

    m: (n, t) ->
      Ti n.getMonth() + 1, t, 2

    M: (n, t) ->
      Ti n.getMinutes(), t, 2

    p: (n) ->
      (if n.getHours() >= 12 then "PM" else "AM")

    S: (n, t) ->
      Ti n.getSeconds(), t, 2

    U: (n, t) ->
      Ti ca.time.sundayOfYear(n), t, 2

    w: (n) ->
      n.getDay()

    W: (n, t) ->
      Ti ca.time.mondayOfYear(n), t, 2

    x: ca.time.format(vc)
    X: ca.time.format(yc)
    y: (n, t) ->
      Ti n.getFullYear() % 100, t, 2

    Y: (n, t) ->
      Ti n.getFullYear() % 1e4, t, 4

    Z: $i
    "%": ->
      "%"

  Cc =
    a: Ci
    A: zi
    b: Di
    B: ji
    c: Li
    d: Ui
    e: Ui
    H: Ii
    I: Ii
    L: Zi
    m: Yi
    M: Vi
    p: Bi
    S: Xi
    x: Fi
    X: Hi
    y: Ri
    Y: Pi

  zc = /^\s*\d+/
  Dc = ca.map(
    am: 0
    pm: 1
  )
  ca.time.format.utc = (n) ->
    t = (n) ->
      try
        gc = Si
        t = new gc
        return t._ = n
        e(t)
      finally
        gc = Date
    e = ca.time.format(n)
    t.parse = (n) ->
      try
        gc = Si
        t = e.parse(n)
        return t and t._
      finally
        gc = Date

    t.toString = e.toString
    t

  jc = ca.time.format.utc("%Y-%m-%dT%H:%M:%S.%LZ")
  ca.time.format.iso = (if Date::toISOString and +new Date("2000-01-01T00:00:00.000Z") then Ji else jc)
  Ji.parse = (n) ->
    t = new Date(n)
    (if isNaN(t) then null else t)

  Ji.toString = jc.toString
  ca.time.second = Ei((n) ->
    new gc(Math.floor(n / 1e3) * 1e3)
  , (n, t) ->
    n.setTime n.getTime() + Math.floor(t) * 1e3
  , (n) ->
    n.getSeconds()
  )
  ca.time.seconds = ca.time.second.range
  ca.time.seconds.utc = ca.time.second.utc.range
  ca.time.minute = Ei((n) ->
    new gc(Math.floor(n / 6e4) * 6e4)
  , (n, t) ->
    n.setTime n.getTime() + Math.floor(t) * 6e4
  , (n) ->
    n.getMinutes()
  )
  ca.time.minutes = ca.time.minute.range
  ca.time.minutes.utc = ca.time.minute.utc.range
  ca.time.hour = Ei((n) ->
    t = n.getTimezoneOffset() / 60
    new gc((Math.floor(n / 36e5 - t) + t) * 36e5)
  , (n, t) ->
    n.setTime n.getTime() + Math.floor(t) * 36e5
  , (n) ->
    n.getHours()
  )
  ca.time.hours = ca.time.hour.range
  ca.time.hours.utc = ca.time.hour.utc.range
  ca.time.month = Ei((n) ->
    n = ca.time.day(n)
    n.setDate(1)
    n
  , (n, t) ->
    n.setMonth n.getMonth() + t
  , (n) ->
    n.getMonth()
  )
  ca.time.months = ca.time.month.range
  ca.time.months.utc = ca.time.month.utc.range

  Lc = [1e3, 5e3, 15e3, 3e4, 6e4, 3e5, 9e5, 18e5, 36e5, 108e5, 216e5, 432e5, 864e5, 1728e5, 6048e5, 2592e6, 7776e6, 31536e6]
  Fc = [[ca.time.second, 1], [ca.time.second, 5], [ca.time.second, 15], [ca.time.second, 30], [ca.time.minute, 1], [ca.time.minute, 5], [ca.time.minute, 15], [ca.time.minute, 30], [ca.time.hour, 1], [ca.time.hour, 3], [ca.time.hour, 6], [ca.time.hour, 12], [ca.time.day, 1], [ca.time.day, 2], [ca.time.week, 1], [ca.time.month, 1], [ca.time.month, 3], [ca.time.year, 1]]
  Hc = [[ca.time.format("%Y"), jt], [ca.time.format("%B"), (n) ->
    n.getMonth()
  ], [ca.time.format("%b %d"), (n) ->
    n.getDate() isnt 1
  ], [ca.time.format("%a %d"), (n) ->
    n.getDay() and n.getDate() isnt 1
  ], [ca.time.format("%I %p"), (n) ->
    n.getHours()
  ], [ca.time.format("%I:%M"), (n) ->
    n.getMinutes()
  ], [ca.time.format(":%S"), (n) ->
    n.getSeconds()
  ], [ca.time.format(".%L"), (n) ->
    n.getMilliseconds()
  ]]
  Pc = ca.scale.linear()
  Rc = Qi(Hc)
  Fc.year = (n, t) ->
    Pc.domain(n.map(ta)).ticks(t).map na

  ca.time.scale = ->
    Gi ca.scale.linear(), Fc, Rc


  Oc = Fc.map((n) ->
    [n[0].utc, n[1]]
  )
  Yc = [[ca.time.format.utc("%Y"), jt], [ca.time.format.utc("%B"), (n) ->
    n.getUTCMonth()
  ], [ca.time.format.utc("%b %d"), (n) ->
    n.getUTCDate() isnt 1
  ], [ca.time.format.utc("%a %d"), (n) ->
    n.getUTCDay() and n.getUTCDate() isnt 1
  ], [ca.time.format.utc("%I %p"), (n) ->
    n.getUTCHours()
  ], [ca.time.format.utc("%I:%M"), (n) ->
    n.getUTCMinutes()
  ], [ca.time.format.utc(":%S"), (n) ->
    n.getUTCSeconds()
  ], [ca.time.format.utc(".%L"), (n) ->
    n.getUTCMilliseconds()
  ]]
  Uc = Qi(Yc)
  Oc.year = (n, t) ->
    Pc.domain(n.map(ra)).ticks(t).map ea

  ca.time.scale.utc = ->
    Gi ca.scale.linear(), Oc, Uc

  ca.text = ->
    ca.xhr.apply(ca, arguments_).response ua

  ca.json = (n, t) ->
    ca.xhr(n, "application/json", t).response ia

  ca.html = (n, t) ->
    ca.xhr(n, "text/html", t).response aa

  ca.xml = ->
    ca.xhr.apply(ca, arguments_).response oa

  ca
()