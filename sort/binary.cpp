#include "binary.h"

binary::binary()
{

}

void binary::use()
{
    BTreeNode *root{};
    //    create(root);
    levelCreate(root);
    cout<<"pre :";
    preorderTree(root);
    cout<<endl;
    cout<<"in  :";
    inorderTree(root);
    cout<<endl;
    cout<<"post:";
    postorderTree(root);
    cout<<endl;
    cout<<"level:";
    levelTree(root);
    cout<<endl;
    cout<<"NodeNum:"<<getNodeNum(root)<<",depth:"<<depthOfTree(root)<<",leaf:"<<getLeafNum(root)<<endl;

    clear(root);
}

void binary::clear(BTreeNode *&Node)
{
    BTreeNode *p = Node;
    if(p != NULL){
        clear(Node->left);
        clear(Node->right);
        delete p;
    }
}

void binary::create(BTreeNode *&Node)
{
    int data;
    cin >> data;
    if(data){
        Node = new BTreeNode;
        Node->data = data;
        //cout<<"data:"<<data<<endl;
        create(Node->left);
        create(Node->right);
    } else{
        Node=NULL;
    }
}

void binary::levelCreate(BTreeNode *&Node)
{
    queue <BTreeNode*> que;
    int data;
    cin>>data;
    if(data){
        Node = new BTreeNode;
        Node->data = data;
        que.push(Node);
    } else {
        Node = NULL;
        return;
    }
    while(!que.empty()){
        BTreeNode *&Node = que.front();
        que.pop();
        //输入左边数据
        cin>>data;
        if(data){
            node->left = new BTreeNode;
            node->left->data = data;
            que.push(node->left);
        } else{
            node->left = NULL;
        }
        //输入右边数据
        cin >>data;
        if(data){
            node->right = new BTreeNode;
            node->right->data = data;
            que.push(node->right);
        } else{
            node->right = NULL;
        }
    }
}

void binary::preorderTree(BTreeNode *&Node)
{
    if(Node!=NULL){
        cout<<Node->data<<" ,";
        preorderTree(Node->left);
        preorderTree(Node->right);
    }
}

void binary::NnredursionPreorder(BTreeNode *&Node)
{
    stack<BTreeNode*> node;
    node.push(Node);
    BTreeNode *pNode = Node;
    while(pNode != NULL || !node.empty()){
        //1、先把节点打印，并且入栈，将节点的左孩子作为当前的节点
        //2、当节点不为空或者栈不为空，就取出栈顶，
        if(pNode != NULL){

            cout<<pNode->data<<" ";
            node.push(pNode);
            pNode = pNode->left;
        } else{
            BTreeNode *treeNode = node.top();
            node.pop();
            pNode = pNode->right;

        }
    }
}

void binary::inorderTree(BTreeNode *&Node)
{
    if(Node != NULL){
        inorderTree(Node->left);
        cout<<Node->data<<" ,";
        inorderTree(Node->right);
    }
}

void binary::postorderTree(BTreeNode *&Node)
{
    if(Node != NULL){
        postorderTree(Node->left);
        postorderTree(Node->right);
        cout<<Node->data<<" ,";
    }
}

void binary::levelTree(BTreeNode *&Node)
{
    queue<BTreeNode*> que;
    if(Node == NULL) return;
    else{
        que.push(Node);
        while(!que.empty()){
            BTreeNode *node = que.front();
            cout<<node->data<<" ";
            que.pop();
            if(node->left != NULL){
                que.push(node->left);
            }
            if(node->right!=NULL){
                que.push(node->right);
            }
        }
    }
}

int binary::getNodeNum(BTreeNode *&Node)
{
    if(Node){
        return 1+getNodeNum(Node->left)+getNodeNum(Node->right);
    } else{
        return 0;
    }
}

int binary::depthOfTree(BTreeNode *&Node)
{
    if(Node){
        return max(depthOfTree(Node->left),depthOfTree(Node->right))+1;
    } else{
        return 0;
    }
}

int binary::getLeafNum(BTreeNode *&Node)
{
    if(!Node){
        return 0;
    } else if(Node->left == NULL && Node->right == NULL){
        return 1;
    } else{
        return getLeafNum(Node->left)+getLeafNum(Node->right);
    }
}
