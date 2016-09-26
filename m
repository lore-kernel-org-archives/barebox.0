Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1boP1M-0003e0-0j
 for barebox@lists.infradead.org; Mon, 26 Sep 2016 06:04:08 +0000
Date: Mon, 26 Sep 2016 08:03:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160926060346.qyvberbkwmovl3fn@pengutronix.de>
References: <20160922144639.28305-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160922144639.28305-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/3] nand: denali: use correct interrupts in read_page
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 22, 2016 at 04:46:37PM +0200, Steffen Trumtrar wrote:
> The interrupt mask is incorrect in case of HW error correction.
> The driver will time out waiting for the wrong interrupts.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/mtd/nand/nand_denali.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
> index bf9a05d85264..ceb5a8b87e42 100644
> --- a/drivers/mtd/nand/nand_denali.c
> +++ b/drivers/mtd/nand/nand_denali.c
> @@ -1102,8 +1102,9 @@ static int denali_read_page(struct mtd_info *mtd, struct nand_chip *chip,
>  	size_t size = denali->mtd.writesize + denali->mtd.oobsize;
>  
>  	uint32_t irq_status;
> -	uint32_t irq_mask = INTR_STATUS__ECC_TRANSACTION_DONE |
> -			    INTR_STATUS__ECC_ERR;
> +	uint32_t irq_mask = denali->have_hw_ecc_fixup ?
> +		(INTR_STATUS__DMA_CMD_COMP) :
> +		(INTR_STATUS__ECC_TRANSACTION_DONE | INTR_STATUS__ECC_ERR);
>  	bool check_erased_page = false;
>  
>  	if (page != denali->page) {
> -- 
> 2.9.3
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
