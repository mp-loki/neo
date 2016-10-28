function talkToNeo() {
  str="$1"
  array=($(echo $str|sed  's/\(.\)/\1/g'))
  size=${#str}

	i=0
	while [ "$i" -lt "${#str}" ]; do
	  echo -n "${str:$i:1}"
	  sleep 0.12
	  i=$((i+1))
	done
}

WAKE_UP="Wake up Neo ..."
MTX_HAS_YOU="The Matrix has you"
talkToNeo "$WAKE_UP"
echo
sleep 2 
talkToNeo "$MTX_HAS_YOU"
read 
