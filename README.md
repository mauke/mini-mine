To build and run:

    cabal run

This is a simple Minesweeper clone.

Controls:

- `q`: Quit.
- `h`, `j`, `k`, `l`: Move the cursor left, down, up, right, respectively.
- If you're lucky, the arrow keys will also work.
- `Space`: Reveal the tile under the cursor; if it contains a mine, you lose.
- `Tab`: Toggle a tile marker. Marked tiles will not be revealed by `Space`.

The game ends automatically when all non-mine tiles are revealed.

To change the size of the board, modify `w=10;h=10` in the first line (e.g.
`w=20;h=15`). To change the number of mines, modify `10r` (e.g. `20r`).
