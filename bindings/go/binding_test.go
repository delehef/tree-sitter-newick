package tree_sitter_newick_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_newick "github.com/delehef/tree-sitter-newick/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_newick.Language())
	if language == nil {
		t.Errorf("Error loading Newick grammar")
	}
}
