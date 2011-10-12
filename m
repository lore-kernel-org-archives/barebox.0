Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RDuCZ-0003uP-4V
	for barebox@lists.infradead.org; Wed, 12 Oct 2011 08:30:12 +0000
Date: Wed, 12 Oct 2011 10:30:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111012083005.GN13898@pengutronix.de>
References: <1314693807.22308@milas.spb.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1314693807.22308@milas.spb.ru>
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
Subject: Re: ID fix for mx51 SDHC2
To: Alexander Shiyan <shc@milas.spb.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Tue, Aug 30, 2011 at 12:43:27PM +0400, Alexander Shiyan wrote:
> Hello.
> 
> Please review this patch.

Sorry for the delay. The patch is fine and now applied.

Thanks
 Sascha

> 
> diff -urN barebox-v2011.09.0.orig/arch/arm/mach-imx/include/mach/devices-imx51.h barebox-v2011.09.0/arch/arm/mach-imx/include/mach/devices-imx51.h
> --- barebox-v2011.09.0.orig/arch/arm/mach-imx/include/mach/devices-imx51.h	2011-08-26 18:23:46.000000000 +0400
> +++ barebox-v2011.09.0/arch/arm/mach-imx/include/mach/devices-imx51.h	2011-08-30 12:35:08.000000000 +0400
> @@ -48,7 +48,7 @@
> 
>  static inline struct device_d *imx51_add_mmc1(void *pdata)
>  {
> -	return imx_add_esdhc((void *)MX51_MMC_SDHC2_BASE_ADDR, 0, pdata);
> +	return imx_add_esdhc((void *)MX51_MMC_SDHC2_BASE_ADDR, 1, pdata);
>  }
> 
>  static inline struct device_d *imx51_add_nand(struct imx_nand_platform_data *pdata)

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
