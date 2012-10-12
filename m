Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMaEK-0007Km-Ok
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 08:04:25 +0000
Date: Fri, 12 Oct 2012 10:04:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121012080423.GJ27665@pengutronix.de>
References: <1349876750-7292-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349876750-7292-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] defaultenv-2: boot: add missing space in error message
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 10, 2012 at 03:45:50PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  defaultenv-2/base/bin/boot |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
> index 103eb87..ebbd951 100644
> --- a/defaultenv-2/base/bin/boot
> +++ b/defaultenv-2/base/bin/boot
> @@ -45,7 +45,7 @@ fi
>  
>  if [ -n "$scr" ]; then
>  	if [ ! -f /env/boot/$scr ]; then
> -		echo -e "/env/boot/$scr does not exist.Valid choices:\n$sources"
> +		echo -e "/env/boot/$scr does not exist. Valid choices:\n$sources"
>  		exit
>  	fi
>  	/env/boot/$scr
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
