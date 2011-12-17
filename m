Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RbvJ8-0004sb-Vl
 for barebox@lists.infradead.org; Sat, 17 Dec 2011 14:32:16 +0000
Date: Sat, 17 Dec 2011 15:32:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111217143201.GY27267@pengutronix.de>
References: <1323939509-10174-1-git-send-email-a.aring@phytec.de>
 <1323939509-10174-4-git-send-email-a.aring@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323939509-10174-4-git-send-email-a.aring@phytec.de>
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
Subject: Re: [PATCH 3/4] omap_hsmmc: setup mmc voltage on twl6030
To: Alexander Aring <a.aring@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 15, 2011 at 09:58:28AM +0100, Alexander Aring wrote:
> Support the setup of the mmc voltage, when booting OMAP4 with twl6030
> from nand.
> 
>  
> +config MCI_OMAP_TWL6030_FIX
> +	bool "OMAP HSMMC TWL6030 FIX"
> +	depends on I2C_TWLCORE && MCI_OMAP_HSMMC && ARCH_OMAP4
> +	help
> +	  Enable TWL6030 support for mci device. OMAP4 Bootloader doesn't setup
> +	  mmc voltage. So to setup mmc voltage you need to enable this.

We do not need a config switch for this.

Please instead of putting this into driver code just put all code in
this patch into some function in arch/arm/mach-omap/omap4_twl6030_mmc.c
which you then call from your board code. This may not be the cleanest
way to do it but moving it into the mmc driver is not a good solution
either.

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
