# cdeh -- an automatic history and environment switch system.
#
# Copyright (C) 2007, Carlo Wood <carlo@alinoe.com>

# Write history on exit.
function exit ()
{
  history -a $HISTFILE
  unset -f exit
  rm -rf "/tmp/cdeh.$CDEHUSER/$$"
  exit $1
}

function cdeh_santity()
{
  # If CDEHROOT is not set, print a warning and do nothing.
  if test -z "$CDEHROOT"; then
    echo "cdeh: CDEHROOT is not set prior to sourcing env.bashrc. cdeh disabled." >&2
    return 0
  fi
  if test ! -d "$CDEHROOT"; then
    echo "cdeh: CDEHROOT = \"$CDEHROOT\"" 2>&1
    echo "cdeh: $CDEHROOT: No such directory. cdeh disabled." 2>&1
    return 0
  fi
  if test ! -d "$CDEHROOT/history"; then
    echo "cdeh: CDEHROOT = \"$CDEHROOT\"" 2>&1
    echo "cdeh: $CDEHROOT/history: No such directory. cdeh disabled." 2>&1
    return 0
  fi
  if test ! -d "$CDEHROOT/history/$CDEHUSER"; then
    if ! mkdir "$CDEHROOT/history/$CDEHUSER"; then
      echo "cdeh: Disabled. Please run as root: chmod 1777 $CDEHROOT/history" 2>&1
      return 0
    fi
  fi
  return 1
}

export CDEHUSER="`/usr/bin/whoami`"
# Do some sanity checks.
if cdeh_santity; then
  unset -f exit
  # This is just to clear PROMPT_COMMAND in case an error was
  # introduced after first having succesfully set PROMPT_COMMAND.
  CDEHTEST=`echo $PROMPT_COMMAND | grep do_prompt`;
  if test -n "$CDEHTEST"; then
    unset PROMPT_COMMAND
  fi
  unset CDEHTEST
  unset CDEHUSER
else

# Keep backup of the value of HISTSIZE if any.
# Default value is 1000.
export CDEHHISTSIZE=${HISTSIZE-1000}
# Erase history
HISTFILE=
HISTSIZE=0
# Set sane value for HISTFILESIZE
test ${HISTFILESIZE-0} -lt $CDEHHISTSIZE && HISTFILESIZE=$CDEHHISTSIZE
export HISTFILESIZE
export CDEHTMP="/tmp/cdeh.$CDEHUSER/$$"
export CDEHHISTROOT="$CDEHROOT/history/$CDEHUSER"
mkdir -p "$CDEHTMP"
echo -n > "$CDEHTMP/prevwd"
echo -n > "$CDEHTMP/prevhd"
echo -n > "$CDEHTMP/preved"
export PROMPT_COMMAND='if $CDEHROOT/do_prompt $$ "$HISTFILE"; then if test -f "$CDEHTMP/histfile"; then HISTSIZE=0; HISTSIZE=$CDEHHISTSIZE; export HISTFILE="`cat $CDEHTMP/histfile`"; history -r; fi; if test -f "$CDEHTMP/envfile"; then export CDEHENVFILE="`cat $CDEHTMP/envfile`"; source "$CDEHENVFILE"; fi; fi'

fi
