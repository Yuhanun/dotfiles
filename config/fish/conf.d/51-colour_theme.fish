# Make sure we are in interactive mode.
status --is-interactive; or exit

# Import PyWal colour scheme
if test -d ~/.cache/wal
  cat ~/.cache/wal/sequences &
  bass source ~/.cache/wal/colors-tty.sh
end
