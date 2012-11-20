Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaiCv-0001Ol-Sv
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 07:25:22 +0000
Date: Tue, 20 Nov 2012 08:25:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121120072520.GZ10369@pengutronix.de>
References: <1353331325-6778-1-git-send-email-J.Kilb@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353331325-6778-1-git-send-email-J.Kilb@phytec.de>
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
Subject: Re: [PATCH] nand-bb: Fix remove of nand-bb device.
To: Juergen Kilb <J.Kilb@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 19, 2012 at 02:22:05PM +0100, Juergen Kilb wrote:
> Fixed possible crashs if nand-bb device is removed
> and the list entry was not deleted from the list.
> 
> Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>

Applied, thanks

Sascha

> ---
>  drivers/mtd/nand/nand-bb.c |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
> index cdb4663..0292f2f 100644
> --- a/drivers/mtd/nand/nand-bb.c
> +++ b/drivers/mtd/nand/nand-bb.c
> @@ -314,6 +314,7 @@ int dev_remove_bb_dev(const char *name)
>  		if (!strcmp(bb->cdev.name, name)) {
>  			devfs_remove(&bb->cdev);
>  			cdev_close(bb->cdev_parent);
> +			list_del_init(&bb->list);
>  			free(bb);
>  			return 0;
>  		}
> -- 
> 1.7.0.4
> 
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
