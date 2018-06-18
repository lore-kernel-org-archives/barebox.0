Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fV1Ay-0001ig-1u
 for barebox@lists.infradead.org; Mon, 18 Jun 2018 20:55:01 +0000
Date: Mon, 18 Jun 2018 22:54:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180618205447.tc7vpcrpk5ebdnnu@pengutronix.de>
References: <1529315540-10480-1-git-send-email-heinrich.toews@wago.com>
 <1529318902-12692-1-git-send-email-heinrich.toews@wago.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1529318902-12692-1-git-send-email-heinrich.toews@wago.com>
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
Subject: Re: [PATCH v2] nand-bb: mtd_del_bb: fix missing pointer reset
To: Heinrich.Toews@wago.com
Cc: barebox@lists.infradead.org

On Mon, Jun 18, 2018 at 10:48:18AM +0000, Heinrich.Toews@wago.com wrote:
> If an attached bb device was removed before the actual mtd device
> the code would try due to a missing pointer reset to access
> the no more present bb device handle which leads to a page fault.
> 
> This bug was made visible by commit "7649473 mtd: nand: remove
> automatically created bb devices" which relys on a correct
> mtd->cdev_bb handling.
> 
> Signed-off-by: Heinrich Toews <heinrich.toews@wago.com>
> ---
> Change since v1: add Signed-off-by

Applied, thanks

Sascha

> ---
>  drivers/mtd/nand/nand-bb.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
> index c197738..012163e 100644
> --- a/drivers/mtd/nand/nand-bb.c
> +++ b/drivers/mtd/nand/nand-bb.c
> @@ -316,6 +316,8 @@ void mtd_del_bb(struct mtd_info *mtd)
>  	list_del_init(&bb->list);
>  	free(bb->name);
>  	free(bb);
> +
> +	mtd->cdev_bb = NULL;
>  }
>  
>  /**
> -- 
> 2.7.4
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
