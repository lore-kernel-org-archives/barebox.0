Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SAzrq-0007sI-8P
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 08:29:07 +0000
Date: Fri, 23 Mar 2012 09:28:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120323082846.GG3852@pengutronix.de>
References: <1332450318-26079-1-git-send-email-marek.belisko@open-nandra.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1332450318-26079-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: Re: [PATCH 1/2] mtd: core: Fix compilation warning.
To: Marek Belisko <marek.belisko@open-nandra.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 22, 2012 at 10:05:17PM +0100, Marek Belisko wrote:
> Fix following warning:
> drivers/mtd/core.c: In function 'mtd_ioctl':
> drivers/mtd/core.c:122:24: warning: unused variable 'ecc'
> 
> Found in at91rm9200ek_defconfig.
> 
> Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
> ---
>  drivers/mtd/core.c |    3 ++-
>  1 files changed, 2 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
> index ccc5c26..e11ba64 100644
> --- a/drivers/mtd/core.c
> +++ b/drivers/mtd/core.c
> @@ -119,7 +119,6 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
>  	int ret = 0;
>  	struct mtd_info *mtd = cdev->priv;
>  	struct mtd_info_user *user = buf;
> -	struct mtd_ecc_stats *ecc = buf;
>  	struct region_info_user *reg = buf;
>  
>  	switch (request) {
> @@ -146,6 +145,8 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
>  		break;
>  #if (defined(CONFIG_NAND_ECC_HW) || defined(CONFIG_NAND_ECC_SOFT))
>  	case ECCGETSTATS:
> +		struct mtd_ecc_stats *ecc = buf;
> +

Won't that introduce a new warning about mixed code and declarations?

Sascha

>  		ecc->corrected = mtd->ecc_stats.corrected;
>  		ecc->failed = mtd->ecc_stats.failed;
>  		ecc->badblocks = mtd->ecc_stats.badblocks;
> -- 
> 1.7.5.4
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
