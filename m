Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEO9Q-0001iM-7d
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 17:33:28 +0000
Date: Wed, 19 Sep 2012 19:33:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120919173326.GL6180@pengutronix.de>
References: <1348047642-13041-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348047642-13041-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1 for master] MAKEALL: accept defconfig with '-' in it
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 19, 2012 at 11:40:42AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> replace '-' with '_' for the configuration option
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
> Hi,
> 
> 	this is a fix
> 
> Best Regards,
> J.
>  MAKEALL |    6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/MAKEALL b/MAKEALL
> index 056a4d0..c08e484 100755
> --- a/MAKEALL
> +++ b/MAKEALL
> @@ -96,8 +96,10 @@ do_build_target() {
>  	mkdir -p "${LOGDIR}/${target}"
>  	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
>  
> -	cross_compile=`eval echo '$CROSS_COMPILE_'${target}`
> -	cross_compile_set=`eval echo '${CROSS_COMPILE_'${target}'+set}'`
> +	tmp=`echo "${target}" | tr - _`
> +
> +	cross_compile=`eval echo '$CROSS_COMPILE_'${tmp}`
> +	cross_compile_set=`eval echo '${CROSS_COMPILE_'${tmp}'+set}'`
>  	if [ "${cross_compile_set}" = "" ]
>  	then
>  		cross_compile=`eval echo '$CROSS_COMPILE_'${arch}`
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
