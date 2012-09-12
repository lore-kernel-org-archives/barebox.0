Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBhH3-0005jx-KI
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 07:22:14 +0000
Date: Wed, 12 Sep 2012 09:20:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120912072035.GG6180@pengutronix.de>
References: <1347358767-1180-1-git-send-email-plagnioj@jcrosoft.com>
 <1347358767-1180-7-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347358767-1180-7-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 7/7] defaultenv-2: add boot sequence
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 11, 2012 at 12:19:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Boot will boot run sequentially the script in /env/boot.d
> 
> diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
> index 103eb87..68e9e89 100644
> --- a/defaultenv-2/base/bin/boot
> +++ b/defaultenv-2/base/bin/boot
> @@ -2,6 +2,8 @@
>  
>  verbose=
>  dryrun=
> +# ensure sequence is init at something
> +sequence=t

This looks unnecessary.

>  
>  usage="
>  $0 [OPTIONS] [source]\n
> @@ -10,11 +12,27 @@ $0 [OPTIONS] [source]\n
>   -l  list boot sources\n
>   -h  help"
>  
> +. /env/data/ansi-colors
> +
>  for i in /env/boot/*; do
>  	basename $i s
>  	sources="$sources$s "
>  done
>  
> +if [ -d /env/boot.d ]; then
> +	sources="$sources\n\nboot sequence:"
> +	for i in /env/boot.d/*; do
> +		readlink -f $i s
> +		basename $s link
> +		basename $i s
> +		sources="$sources\n ${YELLOW}${s}${NC} -> ${CYAN}${link}${NC}"
> +	done
> +else
> +	sequence=n
> +	sources="$sources\n\nboot sequence:\nnone"
> +	echo "${RED}WARNING: boot sequence: none${NC}"
> +fi
> +
>  while getopt "vdhl" opt; do
>  	if [ ${opt} = v ]; then
>  		if [ -n "$verbose" ]; then
> @@ -23,7 +41,7 @@ while getopt "vdhl" opt; do
>  			verbose="-v"
>  		fi
>  	elif [ ${opt} = d ]; then
> -		dryrun=1
> +		dryrun="-d"
>  	elif [ ${opt} = l ]; then
>  		echo -e "boot sources:\n$sources"
>  		exit 0
> @@ -37,18 +55,39 @@ done
>  global -r linux.bootargs.dyn.
>  global -r bootm.
>  
> -if [ $# = 0 ]; then
> -	scr="$global.boot.default"
> +if [ $# = 0 -a "x$sequence" = "xt" ]; then
> +	sequence=y
>  else
>  	scr="$1"
>  fi

You could merge the 'if [ -d /env/boot.d ]' above with this if/else. The
result would be easier to read IMO.
Also you don't seem to catch the case when no /env/boot.d/* exist and
nothing is given on the command line.

>  
> +if [ "x$sequence" = "xy" ]; then

This x quirk is not necessary anymore. Do if [ "$sequence" = y ]
instead.

> +	if [ ! -d /env/boot.d ]; then
> +		echo -e "${GREEN}boot sequence ${RED}none${NC}"
> +		exit 1
> +	fi
> +	echo -e "${GREEN}Start boot sequence${NC}"
> +	for i in /env/boot.d/*; do
> +		readlink -f $i s
> +		basename $s link
> +		basename $i s
> +		msg="${GREEN}boot${NC} ${YELLOW}${s}${NC} -> ${CYAN}${link}${NC}"
> +		echo -e "${msg}"
> +		boot $dryrun $s
> +		echo -e "${msg} ${RED}failled${NC}"
> +		ret=$?
> +	done
> +	echo -e "${GREEN}boot sequence ${RED}failled${NC}"

s/failled/failed/

> +	exit $ret
> +fi
> +
>  if [ -n "$scr" ]; then
> -	if [ ! -f /env/boot/$scr ]; then
> -		echo -e "/env/boot/$scr does not exist.Valid choices:\n$sources"
> +	if [ ! -f /env/boot.d/$scr -a ! -f /env/boot/$scr ]; then
> +		echo -e "/env/boot/$scr or /env/boot.d/$scr does not exist.Valid choices:\n$sources"

You could add the missing whitespace between 'exist' and 'valid'

>  		exit
>  	fi
> -	/env/boot/$scr
> +	[ -f /env/boot.d/$scr ] && /env/boot.d/$scr
> +	[ -f /env/boot/$scr ] && /env/boot/$scr
>  fi
>  
>  if [ -n "$dryrun" ]; then
> diff --git a/defaultenv-2/base/init/general b/defaultenv-2/base/init/general
> index 98a92d1..e7fffdd 100644
> --- a/defaultenv-2/base/init/general
> +++ b/defaultenv-2/base/init/general
> @@ -10,6 +10,3 @@ global.user=sha
>  
>  # timeout in seconds before the default boot entry is started
>  global.autoboot_timeout=3
> -
> -# default boot entry (one of /env/boot/*)
> -global.boot.default=net
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
