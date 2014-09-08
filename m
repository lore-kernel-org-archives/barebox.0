Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XQsMV-0002cQ-MU
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 06:23:40 +0000
Date: Mon, 8 Sep 2014 08:23:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140908062317.GM5352@pengutronix.de>
References: <98034ceb4fe0a107abef0beb3fd1380c@linux-source.de>
 <20140901080611.GE5352@pengutronix.de>
 <540AEE1F.5030504@linux-source.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <540AEE1F.5030504@linux-source.de>
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
Subject: Re: [PATCH v2] mtd: add mtdram device (which build mtd over ram area
 - useful for FRAM oder MRAM)
To: Sebastian Block <basti@linux-source.de>
Cc: barebox@lists.infradead.org

On Sat, Sep 06, 2014 at 01:21:03PM +0200, Sebastian Block wrote:
> Change since v1 (Sascha, thanks for review):
> 	* use xzalloc instead of kzalloc and control check
> 	* correct help and names
> 	* fix coding style issue
> 	* remove verbose and unneeded messages
> 
> This adds support for MTD in RAM devices (like FRAM or MRAM). 
> 
> Signed-off-by: Sebastian Block <basti@linux-source.de>

Your patch has several trailing whitespaces. Please remove them next
time.

> diff --git a/drivers/mtd/devices/mtdram.c b/drivers/mtd/devices/mtdram.c
> new file mode 100644
> index 0000000..47c5ad7
> --- /dev/null
> +++ b/drivers/mtd/devices/mtdram.c
> + *

Strange. the initial '/' introducing the comment is missing here. Also
git-am ended up creating an empty file. How did you generate/send this
patch?

> +static int mtdram_probe(struct device_d *dev) 
> +{
> +	void __iomem *base;
> +	int device_id;
> +	struct mtd_info *mtd;
> +	struct resource *res;
> +	loff_t size;
> +	int ret = 0;
> +	
> +	mtd = xzalloc(sizeof(struct mtd_info), GFP_KERNEL);

xzalloc takes only one argument. Please compile test your patches before
sending them.

Anyway, fixed this up this time and applied.

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
