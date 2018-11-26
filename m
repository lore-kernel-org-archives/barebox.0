Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRBbd-0008CU-Ib
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 07:46:59 +0000
Date: Mon, 26 Nov 2018 08:46:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181126074641.jqu5zxfk26rtyrju@pengutronix.de>
References: <20181123080522.5vwc4makxbhycscq@pengutronix.de>
 <20181123145015.20623-1-matthias.schiffer@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181123145015.20623-1-matthias.schiffer@ew.tq-group.com>
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
Subject: Re: [PATCH v2] mtd: return EOPNOTSUPP when attempting to erase an
 MTD_NO_ERASE device
To: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 23, 2018 at 03:50:15PM +0100, Matthias Schiffer wrote:
> At least some MTD_NO_ERASE devices like MRAM do not specify a sensible
> erase block size; instead, erasesize is equal to the whole flash size. This
> leads to an EINVAL return from mtd_erase_align() whenever a partial erase
> is attempted.
> 
> At least on the MRAM I tested, a full flash erase did not return an error,
> but it did not have any effect on the flash either. As erase seems to be
> entirely unsupported on this class of devices, and it is not necessary
> anyways, it's better to return early with EOPNOTSUPP.
> 
> This fixes envfs_save() on a partitioned MRAM.
> 
> Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> ---

Applied, thanks

Sascha

> 
> v2: handle in mtd_op_erase() instead of envfs_save()
> 
>  drivers/mtd/core.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
> index 56e85b3d8..d3cbe502f 100644
> --- a/drivers/mtd/core.c
> +++ b/drivers/mtd/core.c
> @@ -178,6 +178,9 @@ static int mtd_op_erase(struct cdev *cdev, loff_t count, loff_t offset)
>  	loff_t addr;
>  	int ret;
>  
> +	if (mtd->flags & MTD_NO_ERASE)
> +		return -EOPNOTSUPP;
> +
>  	ret = mtd_erase_align(mtd, &count, &offset);
>  	if (ret)
>  		return ret;
> -- 
> 2.17.1
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
