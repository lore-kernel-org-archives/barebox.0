Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqMT-00005i-24
 for barebox@lists.infradead.org; Tue, 05 May 2020 05:43:22 +0000
Date: Tue, 5 May 2020 07:43:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200505054319.GW5877@pengutronix.de>
References: <1588598508-448914-1-git-send-email-y.bas@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588598508-448914-1-git-send-email-y.bas@phytec.de>
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
Subject: Re: [PATCH] mtd: mtdraw: Fix cdev size calculation for large NANDs
To: Yunus Bas <y.bas@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, May 04, 2020 at 03:21:48PM +0200, Yunus Bas wrote:
> From: Stefan Riedmueller <s.riedmueller@phytec.de>
> 
> Raw size for large NAND devices (> 4 GB) can exceed 32 bits, so we need
> 64 bit types as factors. Both factors are of 32 bit types, as such is
> the return value. At least one factor needs to be 64 bit type when
> calculating the size.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> Signed-off-by: Yunus Bas <y.bas@phytec.de>
> ---
>  drivers/mtd/mtdraw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
> index f63da7b..b716192 100644
> --- a/drivers/mtd/mtdraw.c
> +++ b/drivers/mtd/mtdraw.c
> @@ -306,7 +306,7 @@ static int add_mtdraw_device(struct mtd_info *mtd, const char *devname, void **p
>  	mtdraw->mtd = mtd;
>  
>  	mtdraw->cdev.ops = (struct cdev_operations *)&mtd_raw_fops;
> -	mtdraw->cdev.size = mtd_div_by_wb(mtd->size, mtd) * mtdraw->rps;
> +	mtdraw->cdev.size = (loff_t)mtd_div_by_wb(mtd->size, mtd) * mtdraw->rps;
>  	mtdraw->cdev.name = basprintf("%s.raw", mtd->cdev.name);
>  	mtdraw->cdev.priv = mtdraw;
>  	mtdraw->cdev.dev = &mtd->class_dev;
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
