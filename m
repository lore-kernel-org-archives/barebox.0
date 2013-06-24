Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrChq-0003JX-RH
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 19:45:44 +0000
Date: Mon, 24 Jun 2013 21:45:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130624194520.GX32299@pengutronix.de>
References: <1372075722-9872-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372075722-9872-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] nand_base: fix chipsize for multi LUN nands
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 24, 2013 at 02:08:42PM +0200, Jan Weitzel wrote:
> Chipsize didn't take number of LUNs into account. Sync chipsize calculation
> to kernel commit 63795755
> Tested with MT29F8G16ADBDAH4 on OMAP4
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha

> ---
>  drivers/mtd/nand/nand_base.c |    3 ++-
>  1 files changed, 2 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
> index 8c14112..1969aff 100644
> --- a/drivers/mtd/nand/nand_base.c
> +++ b/drivers/mtd/nand/nand_base.c
> @@ -1117,7 +1117,8 @@ static int nand_flash_detect_onfi(struct mtd_info *mtd, struct nand_chip *chip,
>  	mtd->writesize = le32_to_cpu(p->byte_per_page);
>  	mtd->erasesize = le32_to_cpu(p->pages_per_block) * mtd->writesize;
>  	mtd->oobsize = le16_to_cpu(p->spare_bytes_per_page);
> -	chip->chipsize = (uint64_t)le32_to_cpu(p->blocks_per_lun) * mtd->erasesize;
> +	chip->chipsize = le32_to_cpu(p->blocks_per_lun);
> +	chip->chipsize *= (uint64_t)mtd->erasesize * p->lun_count;
>  	*busw = 0;
>  	if (le16_to_cpu(p->features) & 1)
>  		*busw = NAND_BUSWIDTH_16;
> -- 
> 1.7.0.4
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
