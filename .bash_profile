alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; 
killall Finder /System/Library/CoreServices/Finder.app'

alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; 
killall Finder /System/Library/CoreServices/Finder.app'

# cd to the path of the front Finder window
cdf() {
	target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
	if [ "$target" != "" ]; then
		cd "$target"; pwd
	else
		echo 'No Finder window found' >&2
	fi
}

alias f='open -a Finder ./'
alias s='open -a Sublime\ Text ./'