describe "One Light UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('one-light-small-tabs-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('one-light-small-tabs-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('one-light-small-tabs-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the layout mode to be set via config", ->
    expect(document.documentElement.getAttribute('theme-one-light-small-tabs-ui-layoutmode')).toBe 'auto'

    atom.config.set('one-light-small-tabs-ui.layoutMode', 'Spacious')
    expect(document.documentElement.getAttribute('theme-one-light-small-tabs-ui-layoutmode')).toBe 'spacious'

  it "allows the tab sizing to be set via config", ->
    expect(document.documentElement.getAttribute('theme-one-light-small-tabs-ui-tabsizing')).toBe 'auto'

    atom.config.set('one-light-small-tabs-ui.tabSizing', 'Minimum')
    expect(document.documentElement.getAttribute('theme-one-light-small-tabs-ui-tabsizing')).toBe 'minimum'
