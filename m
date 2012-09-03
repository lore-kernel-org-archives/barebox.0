Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8RIm-00060f-0p
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 07:42:32 +0000
Date: Mon, 3 Sep 2012 09:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120903074230.GY26594@pengutronix.de>
References: <1346428827-20293-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346428827-20293-1-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH] arm: mxs: bcb: fix usage of second bootstream
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 31, 2012 at 06:00:27PM +0200, Wolfram Sang wrote:
> If a second bootstream was used, there was a sanity check which was not
> only wrong (using erasesize instead of writesize) but also superfluous
> (we got the block from an existing cdev, so it must be in the flash
> range). Simply remove it to make bcb work as expected.
> 
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-mxs/bcb.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-mxs/bcb.c b/arch/arm/mach-mxs/bcb.c
> index d0a3ddc..af51d24 100644
> --- a/arch/arm/mach-mxs/bcb.c
> +++ b/arch/arm/mach-mxs/bcb.c
> @@ -236,7 +236,7 @@ static struct mx28_fcb *create_fcb(struct mtd_info *mtd, void *buf, unsigned fw1
>  	fcb->fw1_start_page = fw1_start_block / mtd->writesize;
>  	fcb->fw1_sectors = DIV_ROUND_UP(fw_size, mtd->writesize);
>  
> -	if (fw2_start_block != 0 && fw2_start_block < mtd->size / mtd->erasesize) {
> +	if (fw2_start_block) {
>  		fcb->fw2_start_page = fw2_start_block / mtd->writesize;
>  		fcb->fw2_sectors = fcb->fw1_sectors;
>  	}
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
