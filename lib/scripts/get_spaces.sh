SPACES=$(/Users/sl31/homebrew/bin/yabai -m query --spaces)
WINDOWS=$(/Users/sl31/homebrew/bin/yabai -m query --windows | sed 's/inf/0/g' )
DISPLAYS=$(/Users/sl31/homebrew/bin/yabai -m query --displays)
SIP=$(csrutil status)

if [ -z "$SPACES" ]; then
  SPACES=$(/Users/sl31/homebrew/bin/yabai -m query --spaces)
fi

if [ -z "$WINDOWS" ]; then
  WINDOWS=$(/Users/sl31/homebrew/bin/yabai -m query --windows | sed 's/inf/0/g')
fi

if [ -z "$DISPLAYS" ]; then
  DISPLAYS=$(/Users/sl31/homebrew/bin/yabai -m query --displays)
fi

echo $(cat <<-EOF
  {
    "spaces": { "spaces": $SPACES, "windows": $WINDOWS },
    "displays": $DISPLAYS,
    "SIP": "$SIP"
  }
EOF
)
