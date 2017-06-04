efs() {
  # check arguments
  if [ $# -eq 0 ];then
      echo "No arguments specified."
  fi
  # upload stdin or file
  file=$1

  if [ ! -e $file ]; then
      echo "File $file doesn't exists."
      return 1
  fi
  for file in "$@"; do
    echo "Uploading file ..."
    url="$(curl -# -L -T "$file" "https://igeek.io")"
    echo "$url"
    if which pbcopy > /dev/null; then
      echo -n "$url" | pbcopy
    elif which xclip > /dev/null; then
      echo -n "$url" | xclip -selection clipboard
    fi
    echo
    sleep 1
  done
}
