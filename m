Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SISFa-0001XM-Qa
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 22:12:23 +0000
Date: Fri, 13 Apr 2012 00:12:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120412221215.GF3852@pengutronix.de>
References: <20120412175041.GD621@greenwood>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120412175041.GD621@greenwood>
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
Subject: Re: [PATCH] menuconfig: Show "Barebox", not "Linux" at the top.
To: Uwe Hermann <uwe@hermann-uwe.de>
Cc: barebox@lists.infradead.org

On Thu, Apr 12, 2012 at 07:50:41PM +0200, Uwe Hermann wrote:
> The menuconfig configures Barebox, not the Linux kernel, so no reason
> to print "Linux" there.
> 
> Signed-off-by: Uwe Hermann <uwe@hermann-uwe.de>

Applied, thanks.

I think a patch like this was applied before. It seems it gets lost when
we update to a newer Kconfig version. Note to myself: Keep an eye on it.

Sascha

> ---
>  Kconfig |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Kconfig b/Kconfig
> index 8e994df..53d4f5a 100644
> --- a/Kconfig
> +++ b/Kconfig
> @@ -2,7 +2,7 @@
>  # For a description of the syntax of this configuration file,
>  # see Documentation/kbuild/kconfig-language.txt.
>  #
> -mainmenu "Linux/$ARCH $KERNELVERSION Barebox Configuration"
> +mainmenu "Barebox/$ARCH $KERNELVERSION Configuration"
>  
>  config SRCARCH
>  	string
> -- 
> 1.7.9.5
> 
> 
> -- 
> http://hermann-uwe.de     | http://sigrok.org
> http://randomprojects.org | http://unmaintained-free-software.org
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
