import '../../lib/trees/trees.dart';

TreeNode<String> makeBeverageTree() {
  final tree = TreeNode('beverages');
  final hot = TreeNode('hot');
  final cold = TreeNode('cold');
  final tea = TreeNode('tea');
  final coffee = TreeNode('coffee');
  final chocolate = TreeNode('cocoa');
  final blackTea = TreeNode('black');
  final greenTea = TreeNode('green');
  final chaiTea = TreeNode('chai');
  final soda = TreeNode('soda');
  final milk = TreeNode('milk');
  final gingerAle = TreeNode('ginger ale');
  final bitterLemon = TreeNode('bitter lemon');

  tree.add(hot);
  tree.add(cold);

  hot.add(tea);
  hot.add(coffee);
  hot.add(chocolate);

  cold.add(soda);
  cold.add(milk);

  tea.add(blackTea);
  tea.add(greenTea);
  tea.add(chaiTea);

  soda.add(gingerAle);
  soda.add(bitterLemon);

  return tree;
}

void main(List<String> args) {
  final tree = makeBeverageTree();
  // tree.forEachUsingDepthFirst((node) => print(node.value));
  // tree.forEachUsingLevelOrder((node) => print(node.value));

  final searchResult1 = tree.search('ginger ale');
  print(searchResult1?.value);

  final searchResult2 = tree.search('water');
  print(searchResult2?.value); 
}
