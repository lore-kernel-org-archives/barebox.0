Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uk7ZM-0007Cm-KK
 for barebox@lists.infradead.org; Wed, 05 Jun 2013 06:51:41 +0000
Date: Wed, 5 Jun 2013 08:51:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130605065118.GO32299@pengutronix.de>
References: <1370413065-27481-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370413065-27481-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MAKEALL: fix typos
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 05, 2013 at 10:17:45AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  MAKEALL |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/MAKEALL b/MAKEALL
> index 18ed862..bf9131a 100755
> --- a/MAKEALL
> +++ b/MAKEALL
> @@ -34,7 +34,7 @@ usage() {
>  	echo "The cross-compiler can be specify via"
>  	echo "    CROSS_COMPILE               default"
>  	echo "    CROSS_COMPILE_<arch>        arch default"
> -	echo "    CROSS_COMPILE_<target>      deconfig specifc"
> +	echo "    CROSS_COMPILE_<target>      defconfig specific"
>  	echo ""
>  	echo "it will be evaluated in the invert order"
>  	echo ""
> @@ -70,7 +70,7 @@ stats() {
>  	time_diff=$((${time_stop} - ${time_start}))
>  	printf "compiled in %4is\n" ${time_diff}
>  	if [ ${nb_errors} -gt 0 ] ; then
> -		echo "defcongids with warnings or errors: ${nb_errors} (${errors_list} )"
> +		echo "defconfigs with warnings or errors: ${nb_errors} (${errors_list} )"
>  	fi
>  	echo "----------------------------------------------------------"
>  
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
