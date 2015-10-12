Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlWfz-0003kz-Be
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 06:33:40 +0000
Date: Mon, 12 Oct 2015 08:33:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151012063316.GN7858@pengutronix.de>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1444341979-19157-12-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444341979-19157-12-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 11/17] mtd: nand_mrvl_nfc: Add hwflags to distinguish
 different HW versions
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

On Fri, Oct 09, 2015 at 12:06:13AM +0200, Sebastian Hesselbarth wrote:
> Marvell PXA3xx NAND flash controller IP has been reused in later SoCs
> with additional HW features. Add HW BCH ECC as the first known HW
> difference.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Cc: Robert Jarzmik <robert.jarzmik@free.fr>
> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> Cc: barebox@lists.infradead.org
> ---
>  drivers/mtd/nand/nand_mrvl_nfc.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
> index 5ff5ed72ff49..8a05fc88824b 100644
> --- a/drivers/mtd/nand/nand_mrvl_nfc.c
> +++ b/drivers/mtd/nand/nand_mrvl_nfc.c
> @@ -142,6 +142,8 @@ struct mrvl_nand_host {
>  	size_t			read_id_bytes;
>  
>  	void __iomem		*mmio_base;
> +	unsigned int		hwflags;
> +#define HWFLAGS_ECC_BCH		BIT(0)
>  
>  	unsigned int		buf_start;
>  	unsigned int		buf_count;
> @@ -234,9 +236,12 @@ static struct nand_ecclayout ecc_layout_2KB_hwecc = {
>  #define mtd_info_to_host(mtd) ((struct mrvl_nand_host *) \
>  			       (((struct nand_chip *)((mtd)->priv))->priv))
>  
> +const unsigned int pxa3xx_hwflags;

Could you make this a struct type? That makes it a bit easier to read
since it's a more common pattern. Also make it static.

Sascha

> +
>  static struct of_device_id mrvl_nand_dt_ids[] = {
>  	{
>  		.compatible = "marvell,pxa3xx-nand",
> +		.data = &pxa3xx_hwflags,
>  	},
>  	{}
>  };
> @@ -1004,6 +1009,8 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
>  static int mrvl_nand_probe_dt(struct mrvl_nand_host *host)
>  {
>  	struct device_node *np = host->dev->device_node;
> +	const struct of_device_id *match =
> +		of_match_node(mrvl_nand_dt_ids, np);
>  
>  	of_property_read_u32(np, "num-cs", &host->num_cs);
>  	if (of_get_nand_on_flash_bbt(np))
> @@ -1017,6 +1024,8 @@ static int mrvl_nand_probe_dt(struct mrvl_nand_host *host)
>  	if (host->ecc_step < 0)
>  		host->ecc_step = 0;
>  
> +	host->hwflags = ((unsigned int *)match->data)[0];
> +
>  	return 0;
>  }
>  
> -- 
> 2.1.0
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
