Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XQriy-0007BY-GE
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 05:42:49 +0000
Date: Mon, 8 Sep 2014 07:42:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140908054226.GH5352@pengutronix.de>
References: <1410120165-1760-1-git-send-email-ezequiel.garcia@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410120165-1760-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: Re: [PATCH] nand: orion: Limit to Kirkwood platform
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org

On Sun, Sep 07, 2014 at 05:02:45PM -0300, Ezequiel Garcia wrote:
> This driver is only available on Kirkwood SoCs, so add proper dependency.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Applied, thanks

Sascha

> ---
>  drivers/mtd/nand/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
> index ccf1f9c..c345847 100644
> --- a/drivers/mtd/nand/Kconfig
> +++ b/drivers/mtd/nand/Kconfig
> @@ -93,7 +93,7 @@ config NAND_OMAP_GPMC
>  config NAND_ORION
>  	bool
>  	prompt "Orion NAND driver"
> -	depends on ARCH_MVEBU
> +	depends on ARCH_KIRKWOOD
>  	help
>  	  Support for the Orion NAND controller, present in Kirkwood SoCs.
>  
> -- 
> 2.0.1
> 
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
