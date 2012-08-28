Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6FcH-0008Lf-Su
 for barebox@lists.infradead.org; Tue, 28 Aug 2012 06:49:38 +0000
Date: Tue, 28 Aug 2012 08:49:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120828064935.GR26594@pengutronix.de>
References: <1346064964-7734-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346064964-7734-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] pcm049: use NAND_BUSWIDTH_AUTO
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Aug 27, 2012 at 12:56:04PM +0200, Jan Weitzel wrote:
> autodetect bus width
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/pcm049/board.c |    1 -
>  1 files changed, 0 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
> index 456c9a7..57b24af 100644
> --- a/arch/arm/boards/pcm049/board.c
> +++ b/arch/arm/boards/pcm049/board.c
> @@ -101,7 +101,6 @@ static struct i2c_board_info i2c_devices[] = {
>  
>  static struct gpmc_nand_platform_data nand_plat = {
>  	.wait_mon_pin = 1,
> -	.device_width = 8,
>  	.ecc_mode = OMAP_ECC_BCH8_CODE_HW,
>  	.nand_cfg = &omap4_nand_cfg,
>  };
> -- 
> 1.7.0.4
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
