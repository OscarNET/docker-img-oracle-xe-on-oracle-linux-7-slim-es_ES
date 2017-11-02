#!/bin/sh
cat >/usr/bin/free <<'EOF'
#!/bin/sh
cat <<'__eof'
              total        used        free      shared  buff/cache   available
Mem:        2027764      164892      783924      168236     1078948     1514804
Swap:       2027764           0     2027764
__eof
exit
EOF
chmod 755 /usr/bin/free
exit
