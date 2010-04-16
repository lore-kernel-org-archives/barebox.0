Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O2gQ6-000661-Dh
	for barebox@lists.infradead.org; Fri, 16 Apr 2010 07:56:59 +0000
Date: Fri, 16 Apr 2010 09:56:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100416075656.GX7882@pengutronix.de>
References: <alpine.LRH.2.00.1004141327120.2049@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LRH.2.00.1004141327120.2049@localhost.localdomain>
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
Subject: Re: [PATCH] MX25PDK: Add support for 64MiB DDR2 SDRAM
To: Ivo Clarysse <ivo.clarysse@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 14, 2010 at 01:29:45PM +0200, Ivo Clarysse wrote:
> Newer Freescale 3-Stack development systems are equipped
> with 64MiB of DDR2 SDRAM, instead of the 128MiB of mDDR SDRAM
> with which earlier versions were shipped.
> 
> Signed-off-by: Ivo Clarysse <ivo.clarysse@gmail.com>
> ---
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 10561f0..6942c64 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -6,7 +6,7 @@ config ARCH_TEXT_BASE
>  	default 0x08f00000 if MACH_MX1ADS
>  	default 0xc0000000 if MACH_IMX21ADS
>  	default 0xa0000000 if MACH_IMX27ADS
> -	default 0x87f00000 if MACH_FREESCALE_MX25_3STACK
> +	default 0x83f00000 if MACH_FREESCALE_MX25_3STACK

Does Kconfig support something like

	default 0x83f00000 if MACH_FREESCALE_MX25_3STACK && FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
	default 0x87f00000 if MACH_FREESCALE_MX25_3STACK && FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR

?

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
