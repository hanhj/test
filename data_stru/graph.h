/*
 * File Name: graph.h
 * Author: hanhj
 * Mail: hanhj@zx-jy.com 
 * Created Time: 2019-07-12 21:55:18 week:5
*/
#ifndef __graph_h
#define __graph_h
#include "data_type.h"
#include "common.h"
#include <queue>
#include <vector>
#define MaxPoint 100
#define INFI 9999
template <class T>
class MGraph{
	public:
		int **edge;
		int *visitor;
		T *vec;
		int cur_n;
		int n,e;//points and edges
		MGraph(){
			n=0;
			e=0;
			cur_n=0;
			vec=NULL;
			edge=NULL;
		}
		MGraph(int size){
			n=size;
			cur_n=0;
			e=0;
			vec=new T[size];
			visitor=new int[size];
			edge=new int *[size];
			for(int i=0;i<size;i++){
				edge[i]=new int [size];
				visitor[i]=0;
				for(int j=0;j<size;j++){
					if(i==j)
						edge[i][j]=0;
					else
						edge[i][j]=INFI;
				}
			}
		}
		~MGraph(){
			if(vec)
				delete []vec;
			vec=NULL;
			if(edge){
				for(int i=0;i<n;i++){
					if(edge[i])
						delete []edge[i];
				}
				delete []edge;
			}
			n=0;
			e=0;
			if(visitor)
				delete []visitor;
		}
		void visit(int k){
			if(k>n-1||k<0)
				return;
			visitor[k]=1;
			cout<<vec[k]<<",";
		}
		void clear_visitor(){
			int i;
			for(i=0;i<n;i++)
				visitor[i]=0;
		}
		void insert_element(T da){
			if(cur_n>=n)
				return ;
			vec[cur_n++]=da;
		}
		void insert_edge(int v,int w,int weight){
			if(v>n-1||v<0)
				return ;
			if(w>n-1||w<0)
				return ;
			edge[v][w]=weight;
			e++;
		}
		void create_edge(int *e[],int size){
			n=size;
			for(int i=0;i<n;i++){
				for(int j=0;j<n;j++)
					edge[i][j]=e[i][j];
			}
		}
		int _dfs(int root){
			int i;
			int weight;
			visit(root);
			for(i=0;i<n;i++){
				weight=edge[root][i];
				if(weight!=INFI && weight!=0){
					if(visitor[i]==0)
						_dfs(i);
				}
			}
			return 1;
		}
		void dfs(){
			int count=0;
			int ret;
			for(int i=0;i<n;i++){
				if(visitor[i]==0){
					ret=_dfs(i);
					count=count+ret;
				}
			}
			cout<<"max connect child graph:"<<count;
		}
		int _bfs(int root){
			int i;
			int p;
			int weight;
			int ret=0;
			queue<int> queue;
			queue.push(root);
			while(queue.empty()==false){
				p=queue.front();
				queue.pop();
				visit(p);
				for(i=0;i<n;i++){
					weight=edge[p][i];
					if(weight!=INFI && weight !=0){
						if(visitor[i]==0)
							queue.push(i);
					}
				}
				ret=1;
			}
			return ret;
		}
		void bfs(){
			int count=0;
			int ret;
			for(int i=0;i<n;i++){
				if(visitor[i]==0){
					ret=_bfs(i);
					count=count+ret;
				}
			}
			cout<<"max connect child graph:"<<count;
		}
};
template <class T>
ostream & operator <<(ostream &os,MGraph<T>&g ){
	int i;
	int j;
	for(i=0;i<g.n;i++){
		os<<g.vec[i]<<":";
		for(j=0;j<g.n;j++){
			if(g.edge[i][j]!=INFI)
				os<<g.vec[j]<<"("<<g.edge[i][j]<<")"<<",";
			else
				os<<"INFI,";
		}
		os<<endl;
	}
	return os;
}
class EdgeNode{
	public:
		int no;
		int weight;
		EdgeNode *next;
};
template <class T>
class VecNode{
	public:
		T data;
		int no;
		int vis;
		EdgeNode *first;
};
template <class T>
class AdjGraph{
	public:
		vector<VecNode<T> *> vec;
		int n,e;
		AdjGraph(){
			n=0;
			e=0;
		}
		~AdjGraph(){
			int i;
			EdgeNode *p,*q;
			for(i=0;i<n;i++){
				p=vec[i]->first;
				while(p){
					q=p;
					p=p->next;
					delete q;
				}
				delete vec[i];
			}
			vec.clear();
			n=0;
			e=0;
		}
		void insert_element(T da){
			VecNode<T> *p;
			p=new VecNode<T>;
			p->data=da;
			p->first=NULL;
			p->vis=0;
			p->no=n;
			vec.push_back(p);
			n++;
		}
		void insert_edge(int v,int w,int weight){
			if(v>n-1||v<0)
				return ;
			if(w>n-1||w<0)
				return ;
			EdgeNode *p;
			p=new EdgeNode;
			p->no=w;
			p->weight=weight;
			p->next=vec[v]->first;
			vec[v]->first=p;
			e++;
		}
		void create_edge(int *e[],int size){
			EdgeNode *p;
			int i;
			int j;
			if(size!=n){
				cout<<"error edge size.edge size must equal to vec size:"<<"edge size="<<size<<" vec size="<<n<<endl;
				return;
			}

			for(i=0;i<size;i++){
				for(j=0;j<size;j++){
					if(e[i][j]!=0 && e[i][j]!=INFI){
						p=new EdgeNode;
						p->no=j;
						p->weight=e[i][j];
						p->next=vec[i]->first;
						vec[i]->first=p;
						e++;
					}
				}
			}
		}
		void visit(int root){
			if(root<0||root>n-1)
				return;
			vec[root]->vis=1;
			cout<<vec[root]->data<<",";
		}
		void clear_visitor(){
			int i;
			for(i=0;i<n;i++)
				vec[i]->vis=0;
		}
		EdgeNode * firstAdj(int root){
			if(vec[root]->first==NULL)
				return NULL;
			return vec[root]->first;
		}
		EdgeNode * nextAdj(EdgeNode *p){
			if(p==NULL)
				return NULL;
			else
				return p->next;
		}
		int _dfs(int root){
			EdgeNode *p;
			visit(root);
			for(p=firstAdj(root);p;p=nextAdj(p)){
				if(vec[p->no]->vis==0)
					_dfs(p->no);
			}
			return 1;
		}
		void dfs(){
			int count;
			int ret;
			count=0;
			for(int i=0;i<n;i++){
				if(vec[i]->vis==0){
					ret=_dfs(i);
					count=count+ret;
				}
			}
			cout<<"max connect child graph:"<<count;
		}
		int  _bfs(VecNode<T> *root){
			if(root==NULL)
				return 0;
			queue<VecNode<T>*> queue;
			VecNode<T> *p;
			EdgeNode *e;
			queue.push(root);
			while(queue.empty()!=true){
				p=queue.front();
				queue.pop();
				visit(p->no);
				e=p->first;
				while(e){
					queue.push(vec[e->no]);
					e=e->next;
				}
			}
			return 1;
		}
		void bfs(){
			int count=0;
			int ret;
			for(int i=0;i<n;i++){
				if(vec[i]->vis==0){
					ret=_bfs(vec[i]);
					count=count+ret;
				}
			}
			cout<<"max connect child graph:"<<count;
		}
};

template <class T>
ostream & operator <<(ostream &os,AdjGraph<T>&g ){
	int i;
	EdgeNode *p;
	for(i=0;i<g.n;i++){
		os<<g.vec[i]->data<<":";
		p=g.vec[i]->first;
		while(p){
			os<<g.vec[p->no]->data<<"("<<p->weight<<")"<<",";
			p=p->next;
		}
		os<<endl;
	}
	return os;
}
void test_graph();
#endif //__graph_h
// vim:tw=72 
