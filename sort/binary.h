/*二叉树*/
#ifndef BINARY_H
#define BINARY_H

#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
#include <queue>
#include <stack>

using namespace std;
struct BTreeNode {
    int data = 0;
    BTreeNode *left;
    BTreeNode *right;
};

class binary
{
public:
    binary();
    void use();
    void clear(BTreeNode* &Node);
    void create(BTreeNode* &Node);
    void levelCreate(BTreeNode* &Node);
    void preorderTree(BTreeNode* &Node);
    void NnredursionPreorder(BTreeNode* &Node);
    void inorderTree(BTreeNode* &Node);
    void postorderTree(BTreeNode* &Node);
    void levelTree(BTreeNode* &Node);
    int getNodeNum(BTreeNode* &Node);
    int depthOfTree(BTreeNode* &Node);
    int getLeafNum(BTreeNode* &Node);
};

#endif // BINARY_H
