import Import;w=10;h=10;u x=putStrLn$"\27["++ś(h+1)++";1H\n"++x;o=T(F 0)C;e=elem
data T=T{d::D,s::S};data S=R|C|V deriving Eq;data D=M|F Int deriving Eq;k=range
 z;z=((1,1),(h,w));a i@(l,r)b=do{q i b;hFlush stdout;if all(\t->(s t==R)/=(d t==
M))$elems b then u"☺"else getChar>>= \c->case c of{'q'->putStr$"\27["++ś(h+1)++
";1H";'\t'->let t=b!i in case s t of{V->a i(b//[(i,t{s=C})]);C->a i(b//[(i,t{s=V
})]);R->a i b};' '->case b!i of{T M C->q i((\t->t{s=R})<$>b)>>u"☹";_->a(l,r)$v i
b};_|e c"hD"->a(l,ć(1,w)(r-1))b|e c"lC"->a(l,ć(1,w)(r+1))b|e c"kA"->a(ć(1,h)(l-1
),r)b|e c"jB"->a(ć(1,h)(l+1),r)b;_->a(l,r)b}};ś=show;ć=clamp;p b=do{y<-[1..h];x
<-[1..w];f(b!(y,x))++['\n'|x==w]};f t=case s t of{C->"▓";V->"\27[7m⚑\27[m";R->
case d t of M->"\27[31;1m✷\27[m";F 0->" ";F n->ś n};g(x,y)=filter(inRange z)[(i,
 j)|i<-[x-1..x+1],j<-[y-1..y+1]];main=do{hSetEcho stdin$0>1;hSetBuffering stdin
NoBuffering;r<-shuffleM k;let{b=listArray z(repeat o)//map(\c->(c,o{d=M}))(take
10r)};a(1,1)(b//[(i,o{d=F$length[j|j<-g i,d(b!j)==M]})|i<-k,d(b!i)/=M])};q(l,r)b
 =putStr$"\27[2J\27[1;1H"++p b++"\27["++ś l++";"++ś r++"H";v i b=let t=b!i in
 case t of{T{s=V}->const b;T(F 0)C->foldr((.).v)id $g i;_->id}$b//[(i,t{s=R})]
----------------------------------------------------------------------------80-|
{- To build and run:

     cabal run

This is a simple Minesweeper clone.

Controls:

    - q: Quit.
    - h, j, k, l: Move the cursor left, down, up, right, respectively.
    - If you're lucky, the arrow keys will also work.
    - Space: Reveal the tile under the cursor; if it contains a mine, you lose.
    - Tab: Toggle a tile marker. Marked tiles will not be revealed by Space.

The game ends automatically when all non-mine tiles are revealed.

To change the size of the board, modify `w=10;h=10` in the first line (e.g.
`w=20;h=15`). To change the number of mines, modify `10r` (e.g. `20r`).
-}
