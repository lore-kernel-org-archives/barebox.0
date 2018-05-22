Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL1rx-00021i-QK
 for barebox@lists.infradead.org; Tue, 22 May 2018 07:38:07 +0000
Date: Tue, 22 May 2018 09:37:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180522073752.nvlykff25ejrbwnz@pengutronix.de>
References: <1526637461-42085-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1526637461-42085-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH] mtd: nand: nand_omap_gpmc: Fix ecc steps
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, May 18, 2018 at 11:57:41AM +0200, Teresa Remmet wrote:
> The eccsteps where set wrong for OMAP_ECC_BCH8_CODE_HW_ROMCODE.
> So the ECC was only corrected for the first 512 bytes chunk of a 2k page.
> 
> Moved out the ecc step iteration out of the correcting loop to make
> it more alike the generic nand functions. And made sure that
> the ECC is caclulated for all chunks.
> 
> This patch is based on work of Sascha Hauer.
> 
> Fixes commit dec7b4d2bf9c ("mtd: nand_omap_gpmc: fix BCH error correction").
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
> Hello,
> 
> this patch hopefully finally fixes the nand issue in the nand_omap_gpmc driver.
> Sascha and Daniel worked on this before but thier final solution was not correct.
> The problem was that we can not get rid of the 14 byte ECC
> size used in OMAP_ECC_BCH8_CODE_HW_ROMCODE. The generic nand write function
> needs to consider the offset, too. Or we read wrong ECC after writing.
> 
> Maybe there is someone out there to test if this is also working with
> OMAP_ECC_BCH8_CODE_HW.
> 
> Teresa
> 
>  drivers/mtd/nand/nand_omap_gpmc.c | 115 +++++++++++++++++++-------------------
>  1 file changed, 56 insertions(+), 59 deletions(-)
> 
> diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
> index e18ce6358a73..97bdb8f19753 100644
> --- a/drivers/mtd/nand/nand_omap_gpmc.c
> +++ b/drivers/mtd/nand/nand_omap_gpmc.c
> @@ -297,19 +297,18 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
>  {
>  	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
>  	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
> -	int i, j, eccflag, totalcount, actual_eccsize;
> +	int j, actual_eccsize;
>  	const uint8_t *erased_ecc_vec;
>  	unsigned int err_loc[8];
> -	int bitflip_count;
>  	int bch_max_err;
> +	int bitflip_count = 0;
> +	int eccflag = 0;
> +	bool is_error_reported = false;
>  
> -	int eccsteps = (nand->ecc.mode == NAND_ECC_HW) &&
> -			(nand->ecc.size == 2048) ? 4 : 1;
>  	int eccsize = oinfo->nand.ecc.bytes;
>  
>  	switch (oinfo->ecc_mode) {
>  	case OMAP_ECC_BCH8_CODE_HW:
> -		eccsize /= eccsteps;
>  		actual_eccsize = eccsize;
>  		erased_ecc_vec = bch8_vector;
>  		bch_max_err = BCH8_MAX_ERROR;
> @@ -324,58 +323,45 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
>  		return -EINVAL;
>  	}
>  
> -	totalcount = 0;
> -
> -	for (i = 0; i < eccsteps; i++) {
> -		bool is_error_reported = false;
> -		bitflip_count = 0;
> -		eccflag = 0;
> -
> -		/* check for any ecc error */
> -		for (j = 0; (j < actual_eccsize) && (eccflag == 0); j++) {
> -			if (calc_ecc[j] != 0) {
> -				eccflag = 1;
> -				break;
> -			}
> -		}
> -
> -		if (eccflag == 1) {
> -			if (memcmp(calc_ecc, erased_ecc_vec, actual_eccsize) == 0) {
> -				/*
> -				 * calc_ecc[] matches pattern for ECC
> -				 * (all 0xff) so this is definitely
> -				 * an erased-page
> -				 */
> -			} else {
> -				bitflip_count = nand_check_erased_ecc_chunk(
> -						dat, oinfo->nand.ecc.size, read_ecc,
> -						eccsize, NULL, 0, bch_max_err);
> -				if (bitflip_count < 0)
> -					is_error_reported = true;
> -			}
> +	/* check for any ecc error */
> +	for (j = 0; (j < actual_eccsize) && (eccflag == 0); j++) {
> +		if (calc_ecc[j] != 0) {
> +			eccflag = 1;
> +			break;
>  		}

The additional (eccflag == 0) check is unnecessary. You already leave
the loop one eccflag is set to one anyway. Also using bool for eccflag
looks a little better IMO.


> +	}
>  
> -		if (is_error_reported) {
> -			bitflip_count = omap_gpmc_decode_bch(1,
> -					calc_ecc, err_loc);
> +	if (eccflag == 1) {
> +		if (memcmp(calc_ecc, erased_ecc_vec, actual_eccsize) == 0) {
> +			/*
> +			 * calc_ecc[] matches pattern for ECC
> +			 * (all 0xff) so this is definitely
> +			 * an erased-page
> +			 */

The function could be made a bit easier to read by returning early when
(eccflag == 0) and also when the memcmp above returns 0.

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
