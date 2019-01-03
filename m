Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gezEW-0002Z8-OX
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 09:24:10 +0000
Date: Thu, 3 Jan 2019 10:24:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190103092406.i3mb5w23tt3kztr3@pengutronix.de>
References: <20181225065923.15943-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181225065923.15943-1-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] imx-bbu-nand-fcb: Check the required space a bit
 earlier
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Dec 25, 2018 at 09:59:22AM +0300, Alexander Shiyan wrote:
> If the partition size is too small for imx_bbu_nand_update(),
> this can lead to an infinite loop in the imx_bbu_firmware_fcb_start_page()
> function, because imx_bbu_firmware_max_blocks() returns zero.
> Fix this by place imx_bbu_firmware_max_blocks() a bit early.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  common/imx-bbu-nand-fcb.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
> index 8c276a43c..8383aeacf 100644
> --- a/common/imx-bbu-nand-fcb.c
> +++ b/common/imx-bbu-nand-fcb.c
> @@ -1224,6 +1224,12 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
>  	mtd = bcb_cdev->mtd;
>  	partition_size = mtd->size;
>  
> +	num_blocks_fw = imx_bbu_firmware_max_blocks(mtd);
> +	if (num_blocks_fw < 1) {
> +		pr_err("Not enough space for firmware\n");
> +		return -ENOSPC;
> +	}
> +
>  	for (i = 0; i < 4; i++) {
>  		read_fcb(mtd, i, &fcb);
>  		if (fcb)
> @@ -1329,8 +1335,6 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
>  		pr_info("Refreshing existing firmware\n");
>  	}
>  
> -	num_blocks_fw = imx_bbu_firmware_max_blocks(mtd);
> -
>  	if (num_blocks_fw * mtd->erasesize < fw_size) {
>  		pr_err("Not enough space for update\n");
>  		return -ENOSPC;
> -- 
> 2.13.0
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
