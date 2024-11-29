:-module(graph_false_positives, [background_knowledge/2,metarules/2,positive_example/2,negative_example/2,ancestor/2,blue_parent/2,parent/2,red_parent/2]).

background_knowledge(graph_false_positives/2, [ancestor/2]).

metarules(graph_false_positives/2,[identity,inverse,switch,swap]).

positive_example(graph_false_positives/2,graph_false_positives(a,b)).
positive_example(graph_false_positives/2,graph_false_positives(a,c)).
positive_example(graph_false_positives/2,graph_false_positives(a,e)).
positive_example(graph_false_positives/2,graph_false_positives(a,f)).
positive_example(graph_false_positives/2,graph_false_positives(a,g)).
positive_example(graph_false_positives/2,graph_false_positives(a,h)).
positive_example(graph_false_positives/2,graph_false_positives(a,i)).
positive_example(graph_false_positives/2,graph_false_positives(a,j)).
positive_example(graph_false_positives/2,graph_false_positives(a,k)).
positive_example(graph_false_positives/2,graph_false_positives(a,l)).
positive_example(graph_false_positives/2,graph_false_positives(a,n)).
positive_example(graph_false_positives/2,graph_false_positives(b,a)).
positive_example(graph_false_positives/2,graph_false_positives(b,c)).
positive_example(graph_false_positives/2,graph_false_positives(b,d)).
positive_example(graph_false_positives/2,graph_false_positives(b,e)).
positive_example(graph_false_positives/2,graph_false_positives(b,i)).
positive_example(graph_false_positives/2,graph_false_positives(b,j)).
positive_example(graph_false_positives/2,graph_false_positives(b,k)).
positive_example(graph_false_positives/2,graph_false_positives(b,l)).
positive_example(graph_false_positives/2,graph_false_positives(b,m)).
positive_example(graph_false_positives/2,graph_false_positives(c,a)).
positive_example(graph_false_positives/2,graph_false_positives(c,b)).
positive_example(graph_false_positives/2,graph_false_positives(c,d)).
positive_example(graph_false_positives/2,graph_false_positives(c,f)).
positive_example(graph_false_positives/2,graph_false_positives(c,g)).
positive_example(graph_false_positives/2,graph_false_positives(c,h)).
positive_example(graph_false_positives/2,graph_false_positives(c,i)).
positive_example(graph_false_positives/2,graph_false_positives(c,j)).
positive_example(graph_false_positives/2,graph_false_positives(c,k)).
positive_example(graph_false_positives/2,graph_false_positives(c,l)).
positive_example(graph_false_positives/2,graph_false_positives(c,n)).
positive_example(graph_false_positives/2,graph_false_positives(d,b)).
positive_example(graph_false_positives/2,graph_false_positives(d,e)).
positive_example(graph_false_positives/2,graph_false_positives(d,f)).
positive_example(graph_false_positives/2,graph_false_positives(d,h)).
positive_example(graph_false_positives/2,graph_false_positives(d,i)).
positive_example(graph_false_positives/2,graph_false_positives(d,j)).
positive_example(graph_false_positives/2,graph_false_positives(d,l)).
positive_example(graph_false_positives/2,graph_false_positives(d,m)).
positive_example(graph_false_positives/2,graph_false_positives(e,b)).
positive_example(graph_false_positives/2,graph_false_positives(e,d)).
positive_example(graph_false_positives/2,graph_false_positives(e,i)).
positive_example(graph_false_positives/2,graph_false_positives(e,j)).
positive_example(graph_false_positives/2,graph_false_positives(e,l)).
positive_example(graph_false_positives/2,graph_false_positives(e,m)).
positive_example(graph_false_positives/2,graph_false_positives(e,n)).
positive_example(graph_false_positives/2,graph_false_positives(f,a)).
positive_example(graph_false_positives/2,graph_false_positives(f,g)).
positive_example(graph_false_positives/2,graph_false_positives(f,h)).
positive_example(graph_false_positives/2,graph_false_positives(f,j)).
positive_example(graph_false_positives/2,graph_false_positives(f,k)).
positive_example(graph_false_positives/2,graph_false_positives(f,n)).
positive_example(graph_false_positives/2,graph_false_positives(g,a)).
positive_example(graph_false_positives/2,graph_false_positives(g,b)).
positive_example(graph_false_positives/2,graph_false_positives(g,c)).
positive_example(graph_false_positives/2,graph_false_positives(g,e)).
positive_example(graph_false_positives/2,graph_false_positives(g,f)).
positive_example(graph_false_positives/2,graph_false_positives(g,h)).
positive_example(graph_false_positives/2,graph_false_positives(g,j)).
positive_example(graph_false_positives/2,graph_false_positives(g,k)).
positive_example(graph_false_positives/2,graph_false_positives(g,m)).
positive_example(graph_false_positives/2,graph_false_positives(g,n)).
positive_example(graph_false_positives/2,graph_false_positives(h,a)).
positive_example(graph_false_positives/2,graph_false_positives(h,c)).
positive_example(graph_false_positives/2,graph_false_positives(h,e)).
positive_example(graph_false_positives/2,graph_false_positives(h,f)).
positive_example(graph_false_positives/2,graph_false_positives(h,g)).
positive_example(graph_false_positives/2,graph_false_positives(h,j)).
positive_example(graph_false_positives/2,graph_false_positives(h,k)).
positive_example(graph_false_positives/2,graph_false_positives(h,n)).
positive_example(graph_false_positives/2,graph_false_positives(i,a)).
positive_example(graph_false_positives/2,graph_false_positives(i,b)).
positive_example(graph_false_positives/2,graph_false_positives(i,c)).
positive_example(graph_false_positives/2,graph_false_positives(i,d)).
positive_example(graph_false_positives/2,graph_false_positives(i,e)).
positive_example(graph_false_positives/2,graph_false_positives(i,j)).
positive_example(graph_false_positives/2,graph_false_positives(i,k)).
positive_example(graph_false_positives/2,graph_false_positives(i,l)).
positive_example(graph_false_positives/2,graph_false_positives(i,n)).
positive_example(graph_false_positives/2,graph_false_positives(j,a)).
positive_example(graph_false_positives/2,graph_false_positives(j,b)).
positive_example(graph_false_positives/2,graph_false_positives(j,c)).
positive_example(graph_false_positives/2,graph_false_positives(j,d)).
positive_example(graph_false_positives/2,graph_false_positives(j,e)).
positive_example(graph_false_positives/2,graph_false_positives(j,g)).
positive_example(graph_false_positives/2,graph_false_positives(j,h)).
positive_example(graph_false_positives/2,graph_false_positives(j,i)).
positive_example(graph_false_positives/2,graph_false_positives(j,k)).
positive_example(graph_false_positives/2,graph_false_positives(j,l)).
positive_example(graph_false_positives/2,graph_false_positives(j,n)).
positive_example(graph_false_positives/2,graph_false_positives(k,a)).
positive_example(graph_false_positives/2,graph_false_positives(k,b)).
positive_example(graph_false_positives/2,graph_false_positives(k,c)).
positive_example(graph_false_positives/2,graph_false_positives(k,e)).
positive_example(graph_false_positives/2,graph_false_positives(k,f)).
positive_example(graph_false_positives/2,graph_false_positives(k,g)).
positive_example(graph_false_positives/2,graph_false_positives(k,h)).
positive_example(graph_false_positives/2,graph_false_positives(k,i)).
positive_example(graph_false_positives/2,graph_false_positives(k,j)).
positive_example(graph_false_positives/2,graph_false_positives(k,l)).
positive_example(graph_false_positives/2,graph_false_positives(k,n)).
positive_example(graph_false_positives/2,graph_false_positives(l,a)).
positive_example(graph_false_positives/2,graph_false_positives(l,b)).
positive_example(graph_false_positives/2,graph_false_positives(l,c)).
positive_example(graph_false_positives/2,graph_false_positives(l,d)).
positive_example(graph_false_positives/2,graph_false_positives(l,e)).
positive_example(graph_false_positives/2,graph_false_positives(l,g)).
positive_example(graph_false_positives/2,graph_false_positives(l,i)).
positive_example(graph_false_positives/2,graph_false_positives(l,j)).
positive_example(graph_false_positives/2,graph_false_positives(l,k)).
positive_example(graph_false_positives/2,graph_false_positives(l,m)).
positive_example(graph_false_positives/2,graph_false_positives(m,b)).
positive_example(graph_false_positives/2,graph_false_positives(m,d)).
positive_example(graph_false_positives/2,graph_false_positives(m,e)).
positive_example(graph_false_positives/2,graph_false_positives(m,l)).
positive_example(graph_false_positives/2,graph_false_positives(n,a)).
positive_example(graph_false_positives/2,graph_false_positives(n,c)).
positive_example(graph_false_positives/2,graph_false_positives(n,f)).
positive_example(graph_false_positives/2,graph_false_positives(n,g)).
positive_example(graph_false_positives/2,graph_false_positives(n,h)).
positive_example(graph_false_positives/2,graph_false_positives(n,j)).
positive_example(graph_false_positives/2,graph_false_positives(n,k)).
positive_example(graph_false_positives/2,graph_false_positives(n,l)).

negative_example(graph_false_positives/2,graph_false_positives(n,i)).
negative_example(graph_false_positives/2,graph_false_positives(n,e)).
negative_example(graph_false_positives/2,graph_false_positives(n,d)).
negative_example(graph_false_positives/2,graph_false_positives(n,b)).
negative_example(graph_false_positives/2,graph_false_positives(m,n)).
negative_example(graph_false_positives/2,graph_false_positives(m,k)).
negative_example(graph_false_positives/2,graph_false_positives(m,j)).
negative_example(graph_false_positives/2,graph_false_positives(m,i)).
negative_example(graph_false_positives/2,graph_false_positives(m,h)).
negative_example(graph_false_positives/2,graph_false_positives(m,g)).
negative_example(graph_false_positives/2,graph_false_positives(m,f)).
negative_example(graph_false_positives/2,graph_false_positives(m,c)).
negative_example(graph_false_positives/2,graph_false_positives(m,a)).
negative_example(graph_false_positives/2,graph_false_positives(l,n)).
negative_example(graph_false_positives/2,graph_false_positives(l,h)).
negative_example(graph_false_positives/2,graph_false_positives(l,f)).
negative_example(graph_false_positives/2,graph_false_positives(k,m)).
negative_example(graph_false_positives/2,graph_false_positives(k,d)).
negative_example(graph_false_positives/2,graph_false_positives(j,m)).
negative_example(graph_false_positives/2,graph_false_positives(j,f)).
negative_example(graph_false_positives/2,graph_false_positives(i,m)).
negative_example(graph_false_positives/2,graph_false_positives(i,h)).
negative_example(graph_false_positives/2,graph_false_positives(i,g)).
negative_example(graph_false_positives/2,graph_false_positives(i,f)).
negative_example(graph_false_positives/2,graph_false_positives(h,m)).
negative_example(graph_false_positives/2,graph_false_positives(h,l)).
negative_example(graph_false_positives/2,graph_false_positives(h,i)).
negative_example(graph_false_positives/2,graph_false_positives(h,d)).
negative_example(graph_false_positives/2,graph_false_positives(h,b)).
negative_example(graph_false_positives/2,graph_false_positives(g,l)).
negative_example(graph_false_positives/2,graph_false_positives(g,i)).
negative_example(graph_false_positives/2,graph_false_positives(g,d)).
negative_example(graph_false_positives/2,graph_false_positives(f,m)).
negative_example(graph_false_positives/2,graph_false_positives(f,l)).
negative_example(graph_false_positives/2,graph_false_positives(f,i)).
negative_example(graph_false_positives/2,graph_false_positives(f,e)).
negative_example(graph_false_positives/2,graph_false_positives(f,d)).
negative_example(graph_false_positives/2,graph_false_positives(f,c)).
negative_example(graph_false_positives/2,graph_false_positives(f,b)).
negative_example(graph_false_positives/2,graph_false_positives(e,k)).
negative_example(graph_false_positives/2,graph_false_positives(e,h)).
negative_example(graph_false_positives/2,graph_false_positives(e,g)).
negative_example(graph_false_positives/2,graph_false_positives(e,f)).
negative_example(graph_false_positives/2,graph_false_positives(e,c)).
negative_example(graph_false_positives/2,graph_false_positives(e,a)).
negative_example(graph_false_positives/2,graph_false_positives(d,n)).
negative_example(graph_false_positives/2,graph_false_positives(d,k)).
negative_example(graph_false_positives/2,graph_false_positives(d,g)).
negative_example(graph_false_positives/2,graph_false_positives(d,c)).
negative_example(graph_false_positives/2,graph_false_positives(d,a)).
negative_example(graph_false_positives/2,graph_false_positives(c,m)).
negative_example(graph_false_positives/2,graph_false_positives(c,e)).
negative_example(graph_false_positives/2,graph_false_positives(b,n)).
negative_example(graph_false_positives/2,graph_false_positives(b,h)).
negative_example(graph_false_positives/2,graph_false_positives(b,g)).
negative_example(graph_false_positives/2,graph_false_positives(b,f)).
negative_example(graph_false_positives/2,graph_false_positives(a,m)).
negative_example(graph_false_positives/2,graph_false_positives(a,d)).
negative_example(graph_false_positives/2,graph_false_positives(n,m)).

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

