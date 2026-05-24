#!/bin/bash

# prompt
while [[ $# -gt 0 ]]; do
  case "$1" in
    -a)
      if [[ "$2" == "dark" || "$2" == "light" ]]; then
        THEME="$2"
        shift 2
      else
        echo "Error: -a must require an argument." >&2
        exit 1
      fi
      ;;
    *)
      echo "Unknown argument: $1" >&2
      exit 1
      ;;
  esac
done

case "$THEME" in
  dark)
    echo "Configuring environment for Dark Mode..."
    if [ ! -d "$HOME/.config/spicetify/Themes/flexoki-dark/" ]; then
      mkdir $HOME/.config/spicetify/Themes/flexoki-dark/
    fi

    cp src/flexoki-dark/color.ini $HOME/.config/spicetify/Themes/flexoki-dark/color.ini
    ;;
  light)
    echo "Configuring environment for Light Mode..."
    if [ ! -d "$HOME/.config/spicetify/Themes/flexoki-light/" ]; then
      mkdir $HOME/.config/spicetify/Themes/flexoki-light/
    fi

    cp src/flexoki-light/color.ini $HOME/.config/spicetify/Themes/flexoki-light/color.ini
    ;;
esac

echo "Installation done! Please change the theme to apply the changes to your client!"