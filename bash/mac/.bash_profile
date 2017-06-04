# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

export PATH=${PATH}:/Users/lleejong/Library/Android/sdk/ndk-bundle/

ANDROID_NDK_ROOT=/Users/lleejong/Library/Android/sdk/ndk-bundle; export ADNROID_NDK_ROOT
NDK=$ANDROID_NDK_ROOT;export NDK

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"

#Setting nodejs & npm
PATH="/usr/local/bin/node:/usr/local/bin/npm:${PATH}"
export PATH
