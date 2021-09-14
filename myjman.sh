#!/bin/sh

JMAN='jman'

export PAGER='lv'
export LV='-Ou8'

# エントリはあるか？ マニュアルページはあるか？
if [ ! -f `$JMAN -w $*` ]
then
	exit 1
fi

MANFILE=`$JMAN -w $*`

# マニュアルページは圧縮されているか？
if file -bi $MANFILE | grep -qe '^application/gzip'
then
	# エンコードは UTF-8 か？
	if gzip -dc $MANFILE | file -bi - | grep -iq 'utf-8'
	then
		# jman で開くと虚無が表示されることがある
		if [ `jman $* | wc -w | sed -e 's/[[:space:]]//g'` -ne 0 ]
		then
			jman $*
		else
			man $*
		fi
	else
		if [ `jman $* | wc -w | sed -e 's/[[:space:]]//g'` -ne 0 ]
		then
			LC_CTYPE=ja_JP.eucJP jman $*
		else
			man $*
		fi
	fi
else
	# エンコードは UTF-8 か？
	if file -bi $MANFILE | grep -iq 'utf-8'
	then
		# jman で開くと虚無が表示されることがある
		if [ `jman $* | wc -w | sed -e 's/[[:space:]]//g'` -ne 0 ]
		then
			jman $*
		else
			man $*
		fi
	else
		if [ `jman $* | wc -w | sed -e 's/[[:space:]]//g'` -ne 0 ]
		then
			LC_CTYPE=ja_JP.eucJP jman $*
		else
			man $*
		fi
	fi
fi
