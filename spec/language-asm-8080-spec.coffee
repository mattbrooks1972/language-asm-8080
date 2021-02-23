describe "asm-8080 grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-asm-8080")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.asm-8080")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.asm-8080"
