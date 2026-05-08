
#   Breakdown:
#   - -gravity NorthWest -chop 10x20 — removes 10px from left, 20px from top
#   - -gravity SouthEast -chop 0x10 — removes 0px from right, 10px from bottom

mkdir -p images-2 && for f in images/*.png; do convert "$f" -gravity NorthWest -chop 65x90 -gravity SouthEast -chop 0x70 "images-2/$(basename "$f")"; done