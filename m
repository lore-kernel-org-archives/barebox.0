Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RutZT-00067e-Bf
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 22:31:32 +0000
Date: Tue, 7 Feb 2012 23:31:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120207223126.GK3852@pengutronix.de>
References: <alpine.DEB.2.02.1202071607150.747@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1202071607150.747@oneiric>
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
Subject: Re: [PATCH] Add CONFIG_MCI_STARTUP=y to BeagleBoard defconfig.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, Feb 07, 2012 at 04:08:36PM -0500, Robert P. J. Day wrote:
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 

Applied to master.

Sascha

> ---
> 
>   i can't see why you wouldn't want this as a default setting for a
> BeagleBoard.
> 
> diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
> index e0688ae..621bd49 100644
> --- a/arch/arm/configs/omap3530_beagle_defconfig
> +++ b/arch/arm/configs/omap3530_beagle_defconfig
> @@ -55,6 +55,7 @@ CONFIG_USB_EHCI=y
>  CONFIG_USB_EHCI_OMAP=y
>  CONFIG_USB_TWL4030=y
>  CONFIG_MCI=y
> +CONFIG_MCI_STARTUP=y
>  CONFIG_MCI_OMAP_HSMMC=y
>  CONFIG_I2C_TWL4030=y
>  CONFIG_FS_FAT=y
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
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
