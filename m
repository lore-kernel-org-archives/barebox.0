Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZ9bB-0001md-BB
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 07:15:27 +0000
Date: Tue, 18 Dec 2018 08:15:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181218071513.aerljezvblmkqsbz@pengutronix.de>
References: <1545061423-3004-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1545061423-3004-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH for next] mtd: nand: nand_base: Fix compile warning if
 CONFIG_MTD_WRITE is not enabled
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 17, 2018 at 04:43:43PM +0100, Teresa Remmet wrote:
> drivers/mtd/nand/nand_base.c:337:12: warning: 'nand_default_block_markbad'
> defined but not used [-Wunused-function]
> 
> Add __maybe_unused again to silence warning when CONFIG_MTD_WRITE is not enabled.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  drivers/mtd/nand/nand_base.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
> index 05bfac15f822..8ae6f344686d 100644
> --- a/drivers/mtd/nand/nand_base.c
> +++ b/drivers/mtd/nand/nand_base.c
> @@ -334,7 +334,7 @@ static int nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
>   * specific driver. It provides the details for writing a bad block marker to a
>   * block.
>   */
> -static int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
> +static __maybe_unused int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
>  {
>  	struct nand_chip *chip = mtd->priv;
>  	struct mtd_oob_ops ops;
> -- 
> 2.7.4
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
