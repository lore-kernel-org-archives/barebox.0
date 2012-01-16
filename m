Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RmjtB-0007ec-P0
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 10:34:12 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Rmjt4-0001ye-0p
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 11:34:02 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1Rmjt3-0001Rh-Vz
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 11:34:01 +0100
Date: Mon, 16 Jan 2012 11:34:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120116103401.GM5446@pengutronix.de>
References: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
 <1326709100-24106-10-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1326709100-24106-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 09/10] mtd omap nand: fix driver without CONFIG_PARAMETER
To: barebox@lists.infradead.org

On Mon, Jan 16, 2012 at 11:18:19AM +0100, Sascha Hauer wrote:
> With CONFIG_PARAMETER unset the driver never calls omap_gpmc_eccmode.
> Fix it.

Will drop this one and use the patch from Jan Weitzel instead.

Sascha

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mtd/nand/nand_omap_gpmc.c |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
> index 3bb6d79..740751b 100644
> --- a/drivers/mtd/nand/nand_omap_gpmc.c
> +++ b/drivers/mtd/nand/nand_omap_gpmc.c
> @@ -958,6 +958,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
>  
>  	dev_add_param(pdev, "eccmode", omap_gpmc_eccmode_set, NULL, 0);
>  	dev_set_param(pdev, "eccmode", ecc_mode_strings[pdata->ecc_mode]);
> +	omap_gpmc_eccmode(oinfo, pdata->ecc_mode);
>  
>  	/* We are all set to register with the system now! */
>  	err = add_mtd_device(minfo, "nand");
> -- 
> 1.7.8.3
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
