Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TlFw7-0002iB-5G
 for barebox@lists.infradead.org; Wed, 19 Dec 2012 09:27:36 +0000
Date: Wed, 19 Dec 2012 10:27:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121219092733.GZ26326@pengutronix.de>
References: <1355758617-21175-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355758617-21175-1-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH] nand: mxs: NO_SUBPAGE_WRITE flag was overwritten
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 17, 2012 at 04:36:57PM +0100, Wolfram Sang wrote:
> It is not the chip, but this controller which cannot do subpage writes.
> So, make sure we add the flag at the proper place, so it doesn't get
> overwritten by flash detection anymore.
> 
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>

Applied, thanks

Sascha

> ---
>  drivers/mtd/nand/nand_mxs.c |   12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
> index c4509d3..bc34526 100644
> --- a/drivers/mtd/nand/nand_mxs.c
> +++ b/drivers/mtd/nand/nand_mxs.c
> @@ -1217,7 +1217,6 @@ static int mxs_nand_probe(struct device_d *dev)
>  	mtd->parent = dev;
>  
>  	nand->priv = nand_info;
> -	nand->options |= NAND_NO_SUBPAGE_WRITE;
>  
>  	nand->cmd_ctrl		= mxs_nand_cmd_ctrl;
>  
> @@ -1241,8 +1240,15 @@ static int mxs_nand_probe(struct device_d *dev)
>  	nand->ecc.bytes		= 9;
>  	nand->ecc.size		= 512;
>  
> -	/* Scan to find existence of the device */
> -	err = nand_scan(mtd, 1);
> +	/* first scan to find the device and get the page size */
> +	err = nand_scan_ident(mtd, 1);
> +	if (err)
> +		goto err2;
> +
> +	nand->options |= NAND_NO_SUBPAGE_WRITE;
> +
> +	/* second phase scan */
> +	err = nand_scan_tail(mtd);
>  	if (err)
>  		goto err2;
>  
> -- 
> 1.7.10.4
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
