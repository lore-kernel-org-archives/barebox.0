Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WuFir-00064K-Ml
 for barebox@lists.infradead.org; Tue, 10 Jun 2014 06:39:54 +0000
Date: Tue, 10 Jun 2014 08:39:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140610063930.GS15686@pengutronix.de>
References: <1402326848-16239-1-git-send-email-Herve.CODINA@celad.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1402326848-16239-1-git-send-email-Herve.CODINA@celad.com>
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
Subject: Re: [PATCH 1/2] mtd: Fix writesize parameter value
To: Herve Codina <Herve.CODINA@celad.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 09, 2014 at 05:14:07PM +0200, Herve Codina wrote:
> Signed-off-by: Herve Codina <Herve.CODINA@celad.com>

Applied both, thanks

Sascha

> ---
>  drivers/mtd/core.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
> index d954f72..d3e7763 100644
> --- a/drivers/mtd/core.c
> +++ b/drivers/mtd/core.c
> @@ -403,7 +403,7 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
>  	if (IS_ENABLED(CONFIG_PARAMETER)) {
>  		dev_add_param_int_ro(&mtd->class_dev, "size", mtd->size, "%llu");
>  		dev_add_param_int_ro(&mtd->class_dev, "erasesize", mtd->erasesize, "%u");
> -		dev_add_param_int_ro(&mtd->class_dev, "writesize", mtd->oobsize, "%u");
> +		dev_add_param_int_ro(&mtd->class_dev, "writesize", mtd->writesize, "%u");
>  		dev_add_param_int_ro(&mtd->class_dev, "oobsize", mtd->oobsize, "%u");
>  	}
>  
> -- 
> 1.7.9.5
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
