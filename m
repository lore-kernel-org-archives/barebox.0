Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZS45I-0001em-Lg
 for barebox@lists.infradead.org; Wed, 19 Aug 2015 14:11:24 +0000
Date: Wed, 19 Aug 2015 16:10:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150819141058.GB18700@pengutronix.de>
References: <1439369205-26787-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1439369205-26787-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/4] gpmc: depend on MTD
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Aug 12, 2015 at 10:46:42AM +0200, Lucas Stach wrote:
> From: Lucas Stach <dev@lynxeye.de>
> 
> Fixes:
> drivers/built-in.o: In function `gpmc_probe':
> :(.text.gpmc_probe+0x164): undefined reference to `of_get_nand_bus_width'
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  drivers/bus/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
> index 202df59762e8..61f9064f5d3a 100644
> --- a/drivers/bus/Kconfig
> +++ b/drivers/bus/Kconfig
> @@ -4,6 +4,7 @@ config BUS_OMAP_GPMC
>  	depends on ARCH_OMAP
>  	depends on OFDEVICE
>  	depends on OMAP_GPMC
> +	depends on MTD

Not a good idea. The GPMC is also used as a general parallel bus for
example to connect external ethernet controllers. This should work
without MTD support. What we could to instead is:


diff --git a/drivers/bus/omap-gpmc.c b/drivers/bus/omap-gpmc.c
index 8ae909a..6b3d49a 100644
--- a/drivers/bus/omap-gpmc.c
+++ b/drivers/bus/omap-gpmc.c
@@ -624,7 +624,7 @@ static int gpmc_probe(struct device_d *dev)
 		if (!child->name)
 			continue;
 
-		if (!strncmp(child->name, "nand", 4))
+		if (IS_ENABLED(CONFIG_MTD) && !strncmp(child->name, "nand", 4))
 			ret = gpmc_probe_nand_child(dev, child);
 		else if (strncmp(child->name, "ethernet", 8) == 0 ||
 				strncmp(child->name, "nor", 3) == 0 ||
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
