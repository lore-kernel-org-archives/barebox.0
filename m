Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QiTUv-0007lB-JD
	for barebox@lists.infradead.org; Sun, 17 Jul 2011 15:43:14 +0000
Date: Sun, 17 Jul 2011 17:43:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110717154311.GS6069@pengutronix.de>
References: <1310790512-32022-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1310790512-32022-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] at91sam9263ek: fix env location and size
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

On Sat, Jul 16, 2011 at 06:28:31AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 256k(barebox)ro,128k(bareboxenv),1536k(kernel),-(root)
> 
> so we will match the erase block size

Applied to master.

Sascha

> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
> Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
> ---
>  arch/arm/boards/at91sam9263ek/env/config |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/boards/at91sam9263ek/env/config b/arch/arm/boards/at91sam9263ek/env/config
> index f1cb751..4e29232 100644
> --- a/arch/arm/boards/at91sam9263ek/env/config
> +++ b/arch/arm/boards/at91sam9263ek/env/config
> @@ -30,7 +30,7 @@ kernelimage=uImage
>  #kernelimage=Image.lzo
>  
>  nand_device=atmel_nand
> -nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
> +nand_parts="256k(barebox)ro,128k(bareboxenv),1536k(kernel),-(root)"
>  rootfs_mtdblock_nand=3
>  
>  autoboot_timeout=3
> -- 
> 1.7.5.4
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
