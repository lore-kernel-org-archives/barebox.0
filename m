Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TvZfA-0007zg-Vi
 for barebox@lists.infradead.org; Wed, 16 Jan 2013 20:32:45 +0000
Date: Wed, 16 Jan 2013 21:32:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130116203241.GY1906@pengutronix.de>
References: <1358282612-3140-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1358282612-3140-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] defaultenv-2: execute init/* before timeout
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 15, 2013 at 09:43:32PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so we can have splash, usb serial, etc...
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  defaultenv-2/base/bin/init |   12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
> index 2a1f6a1..b606b63 100644
> --- a/defaultenv-2/base/bin/init
> +++ b/defaultenv-2/base/bin/init
> @@ -21,8 +21,9 @@ else
>  	echo -e -n "\nHit any key to stop autoboot: "
>  fi
>  
> -timeout -a $global.autoboot_timeout -v key
> -autoboot="$?"
> +# allow to stop the boot before execute the /env/init/*
> +# but without waiting
> +timeout -s -a -v key 0
>  
>  if [ "${key}" = "q" ]; then
>  	exit
> @@ -32,6 +33,13 @@ for i in /env/init/*; do
>  	. $i
>  done
>  
> +timeout -a $global.autoboot_timeout -v key
> +autoboot="$?"
> +
> +if [ "${key}" = "q" ]; then
> +	exit
> +fi
> +
>  if [ "$autoboot" = 0 ]; then
>  	boot
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
