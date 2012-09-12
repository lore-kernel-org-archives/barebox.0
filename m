Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBop4-0004Fu-Gw
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 15:25:51 +0000
Date: Wed, 12 Sep 2012 17:25:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120912152546.GW6180@pengutronix.de>
References: <1347459131-16836-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347459131-16836-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] arm: armlinux: get the architecture before shutdown
 barebox
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 12, 2012 at 04:12:11PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> As we may try to get it from the env.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  arch/arm/lib/armlinux.c |    3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
> index 9f9dea8..191274e 100644
> --- a/arch/arm/lib/armlinux.c
> +++ b/arch/arm/lib/armlinux.c
> @@ -264,6 +264,7 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
>  		setup_tags(initrd_address, initrd_size, swap);
>  		params = armlinux_bootparams;
>  	}
> +	architecture = armlinux_get_architecture();
>  
>  	shutdown_barebox();
>  	if (swap) {
> @@ -273,8 +274,6 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
>  		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" :: "r" (reg));
>  	}
>  
> -	architecture = armlinux_get_architecture();
> -
>  #ifdef CONFIG_THUMB2_BAREBOX
>  	__asm__ __volatile__ (
>  		"mov r0, #0\n"
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
