Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UD9MD-0002kG-DB
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 08:05:49 +0000
Date: Wed, 6 Mar 2013 09:05:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130306080543.GE1906@pengutronix.de>
References: <1362496142-23729-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362496142-23729-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] mtd: nand: Fix compiler warning
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Mar 05, 2013 at 07:09:01PM +0400, Alexander Shiyan wrote:
> This patch fixes following warning:
> drivers/mtd/nand/nand_write.c: In function 'nand_do_write_ops':
> drivers/mtd/nand/nand_write.c:272: warning: 'ret' may be used uninitialized in this function
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

> ---
>  drivers/mtd/nand/nand_write.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
> index eea5113..0e2f98f 100644
> --- a/drivers/mtd/nand/nand_write.c
> +++ b/drivers/mtd/nand/nand_write.c
> @@ -269,7 +269,7 @@ int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
>  	uint32_t writelen = ops->len;
>  	uint8_t *oob = ops->oobbuf;
>  	uint8_t *buf = ops->datbuf;
> -	int ret, subpage;
> +	int ret = 0, subpage;
>  
>  	ops->retlen = 0;
>  	if (!writelen)
> -- 
> 1.7.12.4
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
