describe "8080 grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-8080")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.8080")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.8080"
