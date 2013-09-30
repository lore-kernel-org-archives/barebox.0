Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQYUs-0003ZB-DQ
 for barebox@lists.infradead.org; Mon, 30 Sep 2013 08:06:27 +0000
Date: Mon, 30 Sep 2013 10:06:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130930080602.GX30088@pengutronix.de>
References: <1380271641-23174-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380271641-23174-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] omap: xload: switch to generic bootstrap
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 27, 2013 at 10:47:21AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> dissimilarity index 76%
> index 3cce3f2..74a5f00 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c

How is this patch generated? It's strange that this file is completely removed
and added again.

> +/*
> + * Replaces the default shell in xload configuration
> + */
> +static __noreturn int omap_xload(void)
> +{
> +	int (*func)(void) = NULL;
> +
> +	switch (bootsource_get()) {
> +	case BOOTSOURCE_MMC:
> +		printf("booting from MMC\n");
> +		func = bootstrap_read_disk("disk0.0", "fat");
> +		break;
> +	case BOOTSOURCE_USB:
> +		if (IS_ENABLED(CONFIG_FS_OMAP4_USBBOOT)) {
> +			printf("booting from USB\n");
> +			func = bootstrap_read_disk("omap4_usbboot", "omap4_usbbootfs");
> +			break;
> +		} else {
> +			printf("booting from USB not enabled\n");
> +		}
> +	case BOOTSOURCE_NAND:
> +		printf("booting from NAND\n");
> +		func = bootstrap_read_devfs("nand0", true, SZ_128K, SZ_256K, SZ_1M);
> +		break;
> +	case BOOTSOURCE_SPI:
> +		printf("booting from SPI\n");
> +		func = bootstrap_read_devfs("m25p0", false, SZ_128K, SZ_256K, SZ_1M);
> +		break;
> +	default:
> +		printf("unknown boot source. Fall back to nand\n");
> +		func = bootstrap_read_devfs("nand0", true, SZ_128K, SZ_256K, SZ_1M);
> +		break;
> +	}
> +
> +	bootstrap_boot(func, false);

This won't work anymore since the omap barebox function now takes an
argument which is currently not supported by the bootstrap code.

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
