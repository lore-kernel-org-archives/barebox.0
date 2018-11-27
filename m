Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRYSU-0001hy-L3
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 08:11:04 +0000
Date: Tue, 27 Nov 2018 09:10:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181127081050.46tyoovepsl5sids@pengutronix.de>
References: <20181127073714.16472-1-o.rempel@pengutronix.de>
 <20181127073714.16472-9-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181127073714.16472-9-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 08/10] MIPS: port all mach* to multiimage
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 27, 2018 at 08:37:12AM +0100, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 524375a81a..3934b803a5 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -58,6 +58,9 @@ config MACH_MIPS_MALTA
>  	select HAS_DEBUG_LL
>  	select GPIOLIB
>  	select HW_HAS_PCI
> +	select HAVE_PBL_IMAGE
> +	select HAVE_IMAGE_COMPRESSION
> +	select HAVE_PBL_MULTI_IMAGES
>  
>  config MACH_MIPS_AR231X
>  	bool "Atheros ar231x-based boards"
> @@ -67,6 +70,8 @@ config MACH_MIPS_AR231X
>  	select CSRC_R4K_LIB
>  	select DRIVER_SERIAL_NS16550
>  	select HAS_DEBUG_LL
> +	select HAVE_IMAGE_COMPRESSION
> +	select HAVE_PBL_MULTI_IMAGES
>  
>  config MACH_MIPS_ATH79
>  	bool "Atheros AR71XX/AR724X/AR913X/AR933X based boards"
> @@ -80,6 +85,7 @@ config MACH_MIPS_ATH79
>  	select CLKDEV_LOOKUP
>  	select OFTREE
>  	select GPIOLIB
> +	select HAVE_PBL_MULTI_IMAGES
>  
>  config MACH_MIPS_BCM47XX
>  	bool "Broadcom BCM47xx-based boards"
> @@ -101,6 +107,7 @@ config MACH_MIPS_XBURST
>  	select HAS_DEBUG_LL
>  	select HAVE_PBL_IMAGE
>  	select HAVE_IMAGE_COMPRESSION
> +	select HAVE_PBL_MULTI_IMAGES

When you ported all boards maybe we should move these options up to some
generic mips place?

I think with this patch arch/mips/boot/start-pbl.S becomes unused and
can be removed.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
