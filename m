Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2Hpm-0004OF-63
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 08:55:26 +0000
Date: Mon, 4 Feb 2013 09:55:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130204085523.GI1906@pengutronix.de>
References: <1359886615-18302-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359886615-18302-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] MAKEALL: add regex support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Feb 03, 2013 at 11:16:55AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow to compile only a subset of defconfig
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  MAKEALL |   16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/MAKEALL b/MAKEALL
> index c08e484..18ed862 100755
> --- a/MAKEALL
> +++ b/MAKEALL
> @@ -56,6 +56,7 @@ usage() {
>  	echo "JOBS      -j      jobs"
>  	echo "BUILDDIR  -O      build dir"
>  	echo "LOGDIR    -l      log dir"
> +	echo "REGEX     -e      regex"
>  	echo ""
>  }
>  
> @@ -152,8 +153,9 @@ do_build_target() {
>  
>  do_build() {
>  	local arch=$1
> +	local regex=$2
>  
> -	for i in arch/${arch}/configs/*_defconfig
> +	find arch/${arch}/configs -name "${regex}_defconfig" | while read i
>  	do
>  		local target=$(basename $i)
>  
> @@ -178,7 +180,7 @@ do_build_all() {
>  	return $build_target
>  }
>  
> -while getopts "hc:j:O:l:a:" Option
> +while getopts "hc:j:O:l:a:e:" Option
>  do
>  case $Option in
>  	a )
> @@ -196,6 +198,9 @@ case $Option in
>  	O )
>  		BUILDDIR=${OPTARG}
>  		;;
> +	e )
> +		REGEX=${OPTARG}
> +		;;
>  	h )
>  		usage
>  		exit 0
> @@ -241,6 +246,11 @@ fi
>  
>  [ -d "${LOGDIR}" ] || mkdir ${LOGDIR} || exit 1
>  
> +if [ ! "${REGEX}" ]
> +then
> +	REGEX="*"
> +fi
> +
>  if [ ! "${CONFIG}" ] && [ ! "${CROSS_COMPILE+set}" ]
>  then
>  	echo "You need to specify a CONFIG or a CROSS_COMPILE"
> @@ -262,7 +272,7 @@ fi
>  
>  if [ $# -eq 0 ]
>  then
> -	do_build ${ARCH}
> +	do_build ${ARCH} "${REGEX}"
>  else
>  	do_build_target ${ARCH} $1
>  fi
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
