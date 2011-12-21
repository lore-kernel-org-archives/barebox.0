Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RdKIa-0002Ek-6b
 for barebox@lists.infradead.org; Wed, 21 Dec 2011 11:25:29 +0000
Date: Wed, 21 Dec 2011 12:25:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111221112521.GT27267@pengutronix.de>
References: <1324303449-30045-1-git-send-email-robert.jarzmik@free.fr>
 <1324303449-30045-4-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1324303449-30045-4-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH V3 3/8] drivers/mtd: transfer NAND notions to MTD core
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Mon, Dec 19, 2011 at 03:04:04PM +0100, Robert Jarzmik wrote:
> Change NAND_WRITE into MTD_WRITE.
> Change "page_shift" references in the core, which are purely
> NAND, into mtd->writesize which is MTD generic.
> Rename all "info" (struct mtd_info) into "mtd".
> 
> Beware, bisection is broken here as driver name changes from
> /dev/nand<N> into /dev/mtd<N>.

Indeed, this patch should be after the next one.

>  	ops.oobbuf = buf;
>  	ops.datbuf = NULL;
> -	ops.len = info->oobsize;
> -
> -	offset /= info->oobsize;
> -	ret = info->read_oob(info, offset << chip->page_shift, &ops);
> +	ops.len = mtd->oobsize;
> +
> +	offset /= mtd->oobsize;
> +	/*
> +	 * This seems suspicious, shouldn't it be :
> +	 *   offset / mtd->oobsize * mtd->writesize
> +	 */
> +	ret = mtd->read_oob(mtd, offset * mtd->writesize, &ops);

directly before this comment we have 'offset /= mtd->oobsize', so in fact
we really have 'offset / mtd->oobsize * mtd->writesize'.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
