#! /bin/bash

echo "What is your preferred scripting language?"
read -p "1)bash  2)perl  3)python  4)ruby : " lang

case "$lang" in
  1)
    echo "You selected bash" 
    ;;
  2)
    echo "You selected perl"
    ;;
  3)
    echo "You selected python"
    ;;
  4)
    echo "You selected ruby"
    ;;
  *)
    echo "$lang Didn't match anything"
esac
