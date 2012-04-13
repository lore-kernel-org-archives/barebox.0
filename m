Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIfvB-0000yG-E6
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 12:48:14 +0000
Date: Fri, 13 Apr 2012 14:48:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120413124808.GN3852@pengutronix.de>
References: <1334315120-23538-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334315120-23538-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] mx53/loco: udpate defconfig with USB host
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 13, 2012 at 01:05:20PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> enable USB storage.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/configs/freescale_mx53_loco_defconfig |    4 ++++
>  1 files changed, 4 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/configs/freescale_mx53_loco_defconfig b/arch/arm/configs/freescale_mx53_loco_defconfig
> index f31d5bf..b983198 100644
> --- a/arch/arm/configs/freescale_mx53_loco_defconfig
> +++ b/arch/arm/configs/freescale_mx53_loco_defconfig
> @@ -57,6 +57,10 @@ CONFIG_DRIVER_NET_FEC_IMX=y
>  # CONFIG_SPI is not set
>  CONFIG_I2C=y
>  CONFIG_I2C_IMX=y
> +CONFIG_USB=y
> +CONFIG_USB_EHCI=y
> +CONFIG_USB_ULPI=y

LOCO does not need ULPI

Sascha

> +CONFIG_USB_STORAGE=y
>  CONFIG_MCI=y
>  CONFIG_MCI_STARTUP=y
>  CONFIG_MCI_IMX_ESDHC=y
> -- 
> 1.7.9.1
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
