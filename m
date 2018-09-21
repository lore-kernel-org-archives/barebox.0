Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3Fb4-0000Pi-BZ
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 07:11:28 +0000
Date: Fri, 21 Sep 2018 09:11:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180921071111.GW4097@pengutronix.de>
References: <20180920182701.GA18781@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180920182701.GA18781@lenoch>
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
Subject: Re: mtd_peb_write broken on dataflash
To: Ladislav Michl <ladis@linux-mips.org>
Cc: barebox@lists.infradead.org

Hi Ladis,

On Thu, Sep 20, 2018 at 08:27:01PM +0200, Ladislav Michl wrote:
> As mtd_peb_write checks for alignment, it fails writing to dataflash:
> barebox$ state -s
> ERROR: state: Failed to write PEB 0, -22
> ERROR: state: Failed to write circular to 0 length 48, -22
> WARNING: state: Failed to write state backend bucket, -22
> ERROR: state: Failed to write PEB 1, -22
> ERROR: state: Failed to write circular to 0 length 48, -22
> WARNING: state: Failed to write state backend bucket, -22
> ERROR: state: Failed to write PEB 2, -22
> ERROR: state: Failed to write circular to 0 length 48, -22

How I read the code the length should be writesize aligned...

> diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
> index c35b63f2f..6035fbc45 100644
> --- a/drivers/mtd/peb.c
> +++ b/drivers/mtd/peb.c
> @@ -376,7 +376,7 @@ int mtd_peb_write(struct mtd_info *mtd, const void *buf, int pnum, int offset,
>  		return -EINVAL;
>  	if (len <= 0)
>  		return -EINVAL;
> -	if (len % (mtd->writesize >> mtd->subpage_sft))
> +	if (mtd->type != MTD_DATAFLASH && len % (mtd->writesize >> mtd->subpage_sft))

So how big is mtd->writesize here and is this value correct?

In state_storage_mtd_buckets_init() we have:

        if (circular)
                writesize = meminfo->writesize;
        else
                writesize = meminfo->erasesize;

How big are meminfo->writesize and meminfo->erasesize here and
which path is chosen?

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
