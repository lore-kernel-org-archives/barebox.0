Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdTfX-0006Jt-PJ
 for barebox@lists.infradead.org; Fri, 13 Nov 2020 07:38:53 +0000
Date: Fri, 13 Nov 2020 08:38:50 +0100
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20201113073850.GQ29830@pengutronix.de>
References: <20201113000417.25478-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201113000417.25478-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH master] mtd: nand-imx: fix passing pointer of wrong type
 on NAND_CMD_READOOB
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ukl@pengutronix.de

On Fri, Nov 13, 2020 at 01:04:17AM +0100, Ahmad Fatoum wrote:
> copy_spare used to take a mtd_info, but since 5f605dc6168c ("mtd: nand:
> Pass struct nand_chip around") it now takes a nand_chip.
> 3588d40c5385 ("mtd: nand-imx: repair reading the oob area") was drafted
> in parallel and still passes a mtd_info. Their merge did not adjust
> this, triggering a compiler warning and undefined behavior. Fix this.
> 
> Fixes: 7b1d8b4b3561 ("Merge branch 'for-next/mtd-nand'")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mtd/nand/nand_imx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
> index 3d4082fe1851..0f20e9d394a0 100644
> --- a/drivers/mtd/nand/nand_imx.c
> +++ b/drivers/mtd/nand/nand_imx.c
> @@ -1022,7 +1022,7 @@ static void imx_nand_command(struct nand_chip *chip, unsigned command,
>  		 */
>  		if (command == NAND_CMD_READOOB) {
>  			host->send_page(host, NFC_OUTPUT);
> -			copy_spare(mtd, 1, host->data_buf + mtd->writesize);
> +			copy_spare(chip, 1, host->data_buf + mtd->writesize);
>  		}
>  
>  		break;
> -- 
> 2.28.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
