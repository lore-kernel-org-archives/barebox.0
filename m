Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glV0r-0007Qz-Ds
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 08:32:59 +0000
Date: Mon, 21 Jan 2019 09:32:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190121083255.4stf3pdjw2wnhj3a@pengutronix.de>
References: <20181028211947.GA14788@lenoch>
 <20181028212638.GO14788@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181028212638.GO14788@lenoch>
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
Subject: Re: [PATCH 14/16] mtd: nand: Kill the chip->scan_bbt() hook
To: Ladislav Michl <ladis@linux-mips.org>
Cc: barebox@lists.infradead.org

On Sun, Oct 28, 2018 at 10:26:38PM +0100, Ladislav Michl wrote:
> Linux commit e80eba758151 adapted for Barebox:
> 
>   None of the existing drivers are overloading the ->scan_bbt()
>   method, let's get rid of it and replace calls to ->scan_bbt()
>   by nand_create_bbt() ones.
> 
> Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> ---
> diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
> index 28a07d4cb..f69453aba 100644
> --- a/drivers/mtd/nand/nand_mxs.c
> +++ b/drivers/mtd/nand/nand_mxs.c
> @@ -1201,21 +1201,7 @@ static int mxs_nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
>  	return 0;
>  }
>  
> -/*
> - * Nominally, the purpose of this function is to look for or create the bad
> - * block table. In fact, since the we call this function at the very end of
> - * the initialization process started by nand_scan(), and we doesn't have a
> - * more formal mechanism, we "hook" this function to continue init process.
> - *
> - * At this point, the physical NAND Flash chips have been identified and
> - * counted, so we know the physical geometry. This enables us to make some
> - * important configuration decisions.
> - *
> - * The return value of this function propogates directly back to this driver's
> - * call to nand_scan(). Anything other than zero will cause this driver to
> - * tear everything down and declare failure.
> - */
> -static int mxs_nand_scan_bbt(struct mtd_info *mtd)
> +static int mxs_nand_init_bch(struct mtd_info *mtd)
>  {
>  	struct nand_chip *nand = mtd->priv;
>  	struct mxs_nand_info *nand_info = nand->priv;
> @@ -1252,8 +1238,7 @@ static int mxs_nand_scan_bbt(struct mtd_info *mtd)
>  		mtd->block_markbad = mxs_nand_hook_block_markbad;
>  	}
>  
> -	/* We use the reference implementation for bad block management. */
> -	return nand_default_bbt(mtd);
> +	return 0;
>  }
>  
>  /*
> @@ -2183,7 +2168,6 @@ static int mxs_nand_probe(struct device_d *dev)
>  	nand->dev_ready		= mxs_nand_device_ready;
>  	nand->select_chip	= mxs_nand_select_chip;
>  	nand->block_bad		= mxs_nand_block_bad;
> -	nand->scan_bbt		= mxs_nand_scan_bbt;
>  
>  	nand->read_byte		= mxs_nand_read_byte;
>  
> @@ -2215,6 +2199,13 @@ static int mxs_nand_probe(struct device_d *dev)
>  
>  	mxs_nand_setup_timing(nand_info);
>  
> +	err = mxs_nand_init_bch(mtd);
> +	if (err)
> +		goto err2;
> +	err = nand_create_bbt(mtd);
> +	if (err)
> +		goto err2;
> +

By the time nand_create_bbt() is called mtd->read is not yet set, so we
end up with a NULL pointer deref here.

>  	/* second phase scan */
>  	err = nand_scan_tail(mtd);

This call sets mtd->read, so we can call nand_create_bbt() only after
it.

The MXS nand driver plays some funny tricks, so the correct fix is non
obvious to me.

I reverted this patch for now.

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
