:-module(graph_false_negatives, [background_knowledge/2,metarules/2,positive_example/2,negative_example/2,ancestor/2,blue_parent/2,parent/2,red_parent/2]).

background_knowledge(graph_false_negatives/2, [ancestor/2]).

metarules(graph_false_negatives/2,[identity,inverse,switch,swap]).

positive_example(graph_false_negatives/2,graph_false_negatives(n,a)).
positive_example(graph_false_negatives/2,graph_false_negatives(m,l)).
positive_example(graph_false_negatives/2,graph_false_negatives(m,e)).
positive_example(graph_false_negatives/2,graph_false_negatives(m,b)).
positive_example(graph_false_negatives/2,graph_false_negatives(l,m)).
positive_example(graph_false_negatives/2,graph_false_negatives(l,k)).
positive_example(graph_false_negatives/2,graph_false_negatives(l,j)).
positive_example(graph_false_negatives/2,graph_false_negatives(l,i)).
positive_example(graph_false_negatives/2,graph_false_negatives(l,e)).
positive_example(graph_false_negatives/2,graph_false_negatives(l,c)).
positive_example(graph_false_negatives/2,graph_false_negatives(l,b)).
positive_example(graph_false_negatives/2,graph_false_negatives(k,l)).
positive_example(graph_false_negatives/2,graph_false_negatives(k,i)).
positive_example(graph_false_negatives/2,graph_false_negatives(k,g)).
positive_example(graph_false_negatives/2,graph_false_negatives(k,f)).
positive_example(graph_false_negatives/2,graph_false_negatives(k,c)).
positive_example(graph_false_negatives/2,graph_false_negatives(k,b)).
positive_example(graph_false_negatives/2,graph_false_negatives(j,n)).
positive_example(graph_false_negatives/2,graph_false_negatives(j,l)).
positive_example(graph_false_negatives/2,graph_false_negatives(j,k)).
positive_example(graph_false_negatives/2,graph_false_negatives(j,i)).
positive_example(graph_false_negatives/2,graph_false_negatives(j,h)).
positive_example(graph_false_negatives/2,graph_false_negatives(j,e)).
positive_example(graph_false_negatives/2,graph_false_negatives(j,d)).
positive_example(graph_false_negatives/2,graph_false_negatives(j,b)).
positive_example(graph_false_negatives/2,graph_false_negatives(j,a)).
positive_example(graph_false_negatives/2,graph_false_negatives(i,l)).
positive_example(graph_false_negatives/2,graph_false_negatives(i,e)).
positive_example(graph_false_negatives/2,graph_false_negatives(i,d)).
positive_example(graph_false_negatives/2,graph_false_negatives(i,c)).
positive_example(graph_false_negatives/2,graph_false_negatives(i,b)).
positive_example(graph_false_negatives/2,graph_false_negatives(i,a)).
positive_example(graph_false_negatives/2,graph_false_negatives(h,n)).
positive_example(graph_false_negatives/2,graph_false_negatives(h,k)).
positive_example(graph_false_negatives/2,graph_false_negatives(h,f)).
positive_example(graph_false_negatives/2,graph_false_negatives(h,c)).
positive_example(graph_false_negatives/2,graph_false_negatives(h,a)).
positive_example(graph_false_negatives/2,graph_false_negatives(g,n)).
positive_example(graph_false_negatives/2,graph_false_negatives(g,j)).
positive_example(graph_false_negatives/2,graph_false_negatives(g,h)).
positive_example(graph_false_negatives/2,graph_false_negatives(g,f)).
positive_example(graph_false_negatives/2,graph_false_negatives(g,c)).
positive_example(graph_false_negatives/2,graph_false_negatives(g,a)).
positive_example(graph_false_negatives/2,graph_false_negatives(f,n)).
positive_example(graph_false_negatives/2,graph_false_negatives(f,h)).
positive_example(graph_false_negatives/2,graph_false_negatives(f,g)).
positive_example(graph_false_negatives/2,graph_false_negatives(e,m)).
positive_example(graph_false_negatives/2,graph_false_negatives(e,l)).
positive_example(graph_false_negatives/2,graph_false_negatives(e,d)).
positive_example(graph_false_negatives/2,graph_false_negatives(e,b)).
positive_example(graph_false_negatives/2,graph_false_negatives(d,m)).
positive_example(graph_false_negatives/2,graph_false_negatives(d,l)).
positive_example(graph_false_negatives/2,graph_false_negatives(d,j)).
positive_example(graph_false_negatives/2,graph_false_negatives(d,i)).
positive_example(graph_false_negatives/2,graph_false_negatives(d,e)).
positive_example(graph_false_negatives/2,graph_false_negatives(d,b)).
positive_example(graph_false_negatives/2,graph_false_negatives(c,l)).
positive_example(graph_false_negatives/2,graph_false_negatives(c,k)).
positive_example(graph_false_negatives/2,graph_false_negatives(c,j)).
positive_example(graph_false_negatives/2,graph_false_negatives(c,i)).
positive_example(graph_false_negatives/2,graph_false_negatives(c,h)).
positive_example(graph_false_negatives/2,graph_false_negatives(c,g)).
positive_example(graph_false_negatives/2,graph_false_negatives(c,b)).
positive_example(graph_false_negatives/2,graph_false_negatives(c,a)).
positive_example(graph_false_negatives/2,graph_false_negatives(b,k)).
positive_example(graph_false_negatives/2,graph_false_negatives(b,j)).
positive_example(graph_false_negatives/2,graph_false_negatives(b,i)).
positive_example(graph_false_negatives/2,graph_false_negatives(b,e)).
positive_example(graph_false_negatives/2,graph_false_negatives(b,d)).
positive_example(graph_false_negatives/2,graph_false_negatives(b,c)).
positive_example(graph_false_negatives/2,graph_false_negatives(b,a)).
positive_example(graph_false_negatives/2,graph_false_negatives(a,n)).
positive_example(graph_false_negatives/2,graph_false_negatives(a,l)).
positive_example(graph_false_negatives/2,graph_false_negatives(a,k)).
positive_example(graph_false_negatives/2,graph_false_negatives(a,j)).
positive_example(graph_false_negatives/2,graph_false_negatives(a,i)).
positive_example(graph_false_negatives/2,graph_false_negatives(a,h)).
positive_example(graph_false_negatives/2,graph_false_negatives(a,g)).
positive_example(graph_false_negatives/2,graph_false_negatives(a,f)).
positive_example(graph_false_negatives/2,graph_false_negatives(a,c)).
positive_example(graph_false_negatives/2,graph_false_negatives(a,b)).
positive_example(graph_false_negatives/2,graph_false_negatives(n,f)).
positive_example(graph_false_negatives/2,graph_false_negatives(n,g)).
positive_example(graph_false_negatives/2,graph_false_negatives(n,h)).
positive_example(graph_false_negatives/2,graph_false_negatives(n,j)).
positive_example(graph_false_negatives/2,graph_false_negatives(n,k)).

negative_example(graph_false_negatives/2,graph_false_negatives(a,d)).
negative_example(graph_false_negatives/2,graph_false_negatives(a,e)).
negative_example(graph_false_negatives/2,graph_false_negatives(a,m)).
negative_example(graph_false_negatives/2,graph_false_negatives(b,f)).
negative_example(graph_false_negatives/2,graph_false_negatives(b,g)).
negative_example(graph_false_negatives/2,graph_false_negatives(b,h)).
negative_example(graph_false_negatives/2,graph_false_negatives(b,l)).
negative_example(graph_false_negatives/2,graph_false_negatives(b,m)).
negative_example(graph_false_negatives/2,graph_false_negatives(b,n)).
negative_example(graph_false_negatives/2,graph_false_negatives(c,d)).
negative_example(graph_false_negatives/2,graph_false_negatives(c,e)).
negative_example(graph_false_negatives/2,graph_false_negatives(c,f)).
negative_example(graph_false_negatives/2,graph_false_negatives(c,m)).
negative_example(graph_false_negatives/2,graph_false_negatives(c,n)).
negative_example(graph_false_negatives/2,graph_false_negatives(d,a)).
negative_example(graph_false_negatives/2,graph_false_negatives(d,c)).
negative_example(graph_false_negatives/2,graph_false_negatives(d,f)).
negative_example(graph_false_negatives/2,graph_false_negatives(d,g)).
negative_example(graph_false_negatives/2,graph_false_negatives(d,h)).
negative_example(graph_false_negatives/2,graph_false_negatives(d,k)).
negative_example(graph_false_negatives/2,graph_false_negatives(d,n)).
negative_example(graph_false_negatives/2,graph_false_negatives(e,a)).
negative_example(graph_false_negatives/2,graph_false_negatives(e,c)).
negative_example(graph_false_negatives/2,graph_false_negatives(e,f)).
negative_example(graph_false_negatives/2,graph_false_negatives(e,g)).
negative_example(graph_false_negatives/2,graph_false_negatives(e,h)).
negative_example(graph_false_negatives/2,graph_false_negatives(e,i)).
negative_example(graph_false_negatives/2,graph_false_negatives(e,j)).
negative_example(graph_false_negatives/2,graph_false_negatives(e,k)).
negative_example(graph_false_negatives/2,graph_false_negatives(e,n)).
negative_example(graph_false_negatives/2,graph_false_negatives(f,a)).
negative_example(graph_false_negatives/2,graph_false_negatives(f,b)).
negative_example(graph_false_negatives/2,graph_false_negatives(f,c)).
negative_example(graph_false_negatives/2,graph_false_negatives(f,d)).
negative_example(graph_false_negatives/2,graph_false_negatives(f,e)).
negative_example(graph_false_negatives/2,graph_false_negatives(f,i)).
negative_example(graph_false_negatives/2,graph_false_negatives(f,j)).
negative_example(graph_false_negatives/2,graph_false_negatives(f,k)).
negative_example(graph_false_negatives/2,graph_false_negatives(f,l)).
negative_example(graph_false_negatives/2,graph_false_negatives(f,m)).
negative_example(graph_false_negatives/2,graph_false_negatives(g,b)).
negative_example(graph_false_negatives/2,graph_false_negatives(g,d)).
negative_example(graph_false_negatives/2,graph_false_negatives(g,e)).
negative_example(graph_false_negatives/2,graph_false_negatives(g,i)).
negative_example(graph_false_negatives/2,graph_false_negatives(g,k)).
negative_example(graph_false_negatives/2,graph_false_negatives(g,l)).
negative_example(graph_false_negatives/2,graph_false_negatives(g,m)).
negative_example(graph_false_negatives/2,graph_false_negatives(h,b)).
negative_example(graph_false_negatives/2,graph_false_negatives(h,d)).
negative_example(graph_false_negatives/2,graph_false_negatives(h,e)).
negative_example(graph_false_negatives/2,graph_false_negatives(h,g)).
negative_example(graph_false_negatives/2,graph_false_negatives(h,i)).
negative_example(graph_false_negatives/2,graph_false_negatives(h,j)).
negative_example(graph_false_negatives/2,graph_false_negatives(h,l)).
negative_example(graph_false_negatives/2,graph_false_negatives(h,m)).
negative_example(graph_false_negatives/2,graph_false_negatives(i,f)).
negative_example(graph_false_negatives/2,graph_false_negatives(i,g)).
negative_example(graph_false_negatives/2,graph_false_negatives(i,h)).
negative_example(graph_false_negatives/2,graph_false_negatives(i,j)).
negative_example(graph_false_negatives/2,graph_false_negatives(i,k)).
negative_example(graph_false_negatives/2,graph_false_negatives(i,m)).
negative_example(graph_false_negatives/2,graph_false_negatives(i,n)).
negative_example(graph_false_negatives/2,graph_false_negatives(j,c)).
negative_example(graph_false_negatives/2,graph_false_negatives(j,f)).
negative_example(graph_false_negatives/2,graph_false_negatives(j,g)).
negative_example(graph_false_negatives/2,graph_false_negatives(j,m)).
negative_example(graph_false_negatives/2,graph_false_negatives(k,a)).
negative_example(graph_false_negatives/2,graph_false_negatives(k,d)).
negative_example(graph_false_negatives/2,graph_false_negatives(k,e)).
negative_example(graph_false_negatives/2,graph_false_negatives(k,h)).
negative_example(graph_false_negatives/2,graph_false_negatives(k,j)).
negative_example(graph_false_negatives/2,graph_false_negatives(k,m)).
negative_example(graph_false_negatives/2,graph_false_negatives(k,n)).
negative_example(graph_false_negatives/2,graph_false_negatives(l,a)).
negative_example(graph_false_negatives/2,graph_false_negatives(l,d)).
negative_example(graph_false_negatives/2,graph_false_negatives(l,f)).
negative_example(graph_false_negatives/2,graph_false_negatives(l,g)).
negative_example(graph_false_negatives/2,graph_false_negatives(l,h)).
negative_example(graph_false_negatives/2,graph_false_negatives(l,n)).
negative_example(graph_false_negatives/2,graph_false_negatives(m,a)).
negative_example(graph_false_negatives/2,graph_false_negatives(m,c)).
negative_example(graph_false_negatives/2,graph_false_negatives(m,d)).
negative_example(graph_false_negatives/2,graph_false_negatives(m,f)).
negative_example(graph_false_negatives/2,graph_false_negatives(m,g)).
negative_example(graph_false_negatives/2,graph_false_negatives(m,h)).
negative_example(graph_false_negatives/2,graph_false_negatives(m,i)).
negative_example(graph_false_negatives/2,graph_false_negatives(m,j)).
negative_example(graph_false_negatives/2,graph_false_negatives(m,k)).
negative_example(graph_false_negatives/2,graph_false_negatives(m,n)).
negative_example(graph_false_negatives/2,graph_false_negatives(n,b)).
negative_example(graph_false_negatives/2,graph_false_negatives(n,c)).
negative_example(graph_false_negatives/2,graph_false_negatives(n,d)).
negative_example(graph_false_negatives/2,graph_false_negatives(n,e)).
negative_example(graph_false_negatives/2,graph_false_negatives(n,i)).
negative_example(graph_false_negatives/2,graph_false_negatives(n,l)).
negative_example(graph_false_negatives/2,graph_false_negatives(n,m)).

ancestor(A,B):-parent(A,B).
ancestor(C,D):-parent(C,E),ancestor(E,D).

parent(A,B):-blue_parent(A,B).
parent(C,D):-red_parent(C,D).

blue_parent(a,c).
blue_parent(a,n).
blue_parent(b,i).
blue_parent(b,d).
blue_parent(c,j).
blue_parent(d,e).
blue_parent(f,g).
blue_parent(f,h).

red_parent(k,c).
red_parent(k,n).
red_parent(l,i).
red_parent(l,d).
red_parent(i,j).
red_parent(m,e).
red_parent(n,g).
red_parent(n,h).

