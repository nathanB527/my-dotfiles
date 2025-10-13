#/bin/sh

notify() 
{
    title="Playback"
    message=$(playerctl --format '{{artist}} - {{title}}' metadata)
    art_url=$(playerctl metadata mpris:artUrl)

    notify-send -i "$art_url" "$title" "$message" 
    
}


notify