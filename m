Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y9DJc-0003Fq-HE
 for barebox@lists.infradead.org; Thu, 08 Jan 2015 13:39:57 +0000
Date: Thu, 8 Jan 2015 14:39:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150108133933.GC23940@pengutronix.de>
References: <1420658559-17527-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1420658559-17527-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH v2] mtd: nand: add mrvl-nand driver
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Wed, Jan 07, 2015 at 08:22:39PM +0100, Robert Jarzmik wrote:
> +
> +static struct mrvl_nand_timing timings[] = {
> +	{ 0x46ec, 10,  0, 20,  40, 30,  40, 11123, 110, 10, },
> +	{ 0xdaec, 10,  0, 20,  40, 30,  40, 11123, 110, 10, },
> +	{ 0xd7ec, 10,  0, 20,  40, 30,  40, 11123, 110, 10, },
> +	{ 0xa12c, 10, 25, 15,  25, 15,  30, 25000,  60, 10, },
> +	{ 0xb12c, 10, 25, 15,  25, 15,  30, 25000,  60, 10, },
> +	{ 0xdc2c, 10, 25, 15,  25, 15,  30, 25000,  60, 10, },
> +	{ 0xcc2c, 10, 25, 15,  25, 15,  30, 25000,  60, 10, },
> +	{ 0xba20, 10, 35, 15,  25, 15,  25, 25000,  60, 10, },
> +	{ 0x0000, 40, 80, 60, 100, 80, 100, 90000, 400, 40, },
> +};
> +
> +static void mrvl_nand_set_timing(struct mrvl_nand_host *host, bool use_default)
> +{
> +	struct mtd_info *mtd = &host->mtd;
> +	struct mrvl_nand_timing *t;
> +	uint32_t ndtr0, ndtr1;
> +	u16 id;
> +	unsigned long nand_clk = pxa_get_nandclk();
> +
> +	host->chip.cmdfunc(mtd, NAND_CMD_READID, 0x00, -1);
> +	host->chip.read_buf(mtd, (unsigned char *)&id, sizeof(id));
> +	for (t = &timings[0]; t->id; t++)
> +		if (t->id == id && !use_default)
> +			break;

So when use_default is true you use the last entry in the array. This
means you could skip reading the nand id when use_default is true. This
is a bit more efficient and makes the intention of the code more clear.

> +
> +static void mrvl_nand_config_flash(struct mrvl_nand_host *host)
> +{
> +	struct nand_chip *chip = &host->chip;
> +	struct mtd_info *mtd = &host->mtd;
> +	uint32_t ndcr = host->reg_ndcr;
> +
> +	/* calculate flash information */
> +	host->read_id_bytes = (mtd->writesize == 2048) ? 4 : 2;
> +
> +	/* calculate addressing information */
> +	host->col_addr_cycles = (mtd->writesize == 2048) ? 2 : 1;
> +	if ((mtd->size >> chip->page_shift) > 65536)
> +		host->row_addr_cycles = 3;
> +	else
> +		host->row_addr_cycles = 2;
> +
> +	ndcr |= NDCR_ND_ARB_EN;
> +	ndcr |= (host->col_addr_cycles == 2) ? NDCR_RA_START : 0;
> +	ndcr |= ((mtd->erasesize / mtd->writesize) == 64) ? NDCR_PG_PER_BLK : 0;
> +	ndcr |= (mtd->writesize == 2048) ? NDCR_PAGE_SZ : 0;
> +
> +	ndcr |= NDCR_RD_ID_CNT(host->read_id_bytes);
> +	ndcr |= NDCR_SPARE_EN; /* enable spare by default */
> +	ndcr &= ~NDCR_DMA_EN;
> +
> +	if (chip->options & NAND_BUSWIDTH_16)
> +		ndcr |= NDCR_DWIDTH_M | NDCR_DWIDTH_C;
> +	else
> +		ndcr &= ~NDCR_DWIDTH_M & NDCR_DWIDTH_C;

You want to clear both bits here, right? Then this is wrong and
should be ndcr &= ~NDCR_DWIDTH_M & ~NDCR_DWIDTH_C;
(or ndcr &= ~(NDCR_DWIDTH_M | NDCR_DWIDTH_C); which I'd consider more
readable)

Otherwise I'm fine with this driver and we can merge it once the pxa3xx
base support is ready.

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
