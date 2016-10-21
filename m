Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxU62-00040b-2J
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 07:18:31 +0000
Date: Fri, 21 Oct 2016 09:18:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161021071808.ygaw53zjn3x5ns6f@pengutronix.de>
References: <1476970807-43811-1-git-send-email-c.hemp@phytec.de>
 <1476970807-43811-2-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1476970807-43811-2-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH 2/2] mtd: nand: nand_mxs: Fix readtotal calculation
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org, Stefan Lengfeld <s.lengfeld@phytec.de>

On Thu, Oct 20, 2016 at 03:40:07PM +0200, Christian Hemp wrote:
> The calculation of readtotal must be bit alligend. If not the bch core
> finds bit flips in every page, because readtotal is too small.
> This bug was mostly introduced since commit "51061a9 mtd: nand: nand_mxs:
> Add subpage read support".

Is this somehow related to:

http://lists.infradead.org/pipermail/linux-mtd/2016-June/068243.html

Or is this another topic?

Sascha

> 
> Tested with:
> nand: NAND device: Manufacturer ID: 0x01, Chip ID: 0xd3 (AMD/Spansion
> S34ML08G2), 1024MiB, page size: 2048, OOB size: 128
> 
> nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron
> MT29F4G08ABADAWP), 512MiB, page size: 2048, OOB size: 64
> 
> nand: NAND device: Manufacturer ID: 0xec, Chip ID: 0xd3 (Samsung NAND
> 1GiB 3,3V 8-bit), 1024MiB, page size: 2048, OOB size: 64
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> Signed-off-by: Stefan Lengfeld <s.lengfeld@phytec.de>
> ---
>  drivers/mtd/nand/nand_mxs.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
> index fe955e8..cba0bee 100644
> --- a/drivers/mtd/nand/nand_mxs.c
> +++ b/drivers/mtd/nand/nand_mxs.c
> @@ -728,15 +728,15 @@ static int __mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand
>  	uint32_t corrected = 0, failed = 0;
>  	uint8_t	*status;
>  	unsigned int  max_bitflips = 0;
> -	int i, ret, readtotal, nchunks, eccstrength, ecc_parity_size;
> +	int i, ret, readtotal, nchunks, eccstrength;
>  
>  	eccstrength = mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize);
>  
>  	readlen = roundup(readlen, MXS_NAND_CHUNK_DATA_CHUNK_SIZE);
>  	nchunks = mxs_nand_ecc_chunk_cnt(readlen);
> -	ecc_parity_size = 13 * eccstrength / 8;
> -	readtotal = MXS_NAND_METADATA_SIZE +
> -		(MXS_NAND_CHUNK_DATA_CHUNK_SIZE + ecc_parity_size) * nchunks;
> +	readtotal =  MXS_NAND_METADATA_SIZE;
> +	readtotal += MXS_NAND_CHUNK_DATA_CHUNK_SIZE * nchunks;
> +	readtotal += DIV_ROUND_UP(13 * eccstrength * nchunks, 8);
>  
>  	mxs_nand_config_bch(mtd, readtotal);
>  
> -- 
> 1.9.1
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
