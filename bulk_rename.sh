/bin/ls > files.buff
if $EDITOR files.buff
then
  paste <(/bin/ls) files.buff | sed 's/^/mv /' | bash
fi
