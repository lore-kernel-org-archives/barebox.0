Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoC5h-0004sA-Tb
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 14:06:42 +0000
Date: Tue, 11 Nov 2014 15:06:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141111140619.GX30369@pengutronix.de>
References: <1415641570-19399-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415641570-19399-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX6 Phytec phyFLEX: Fix
 imx6_bbu_nand_register_handler usage
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, cconley@phytec.com

On Mon, Nov 10, 2014 at 09:46:10AM -0800, Andrey Smirnov wrote:
> imx6_bbu_nand_register_handler is not availible if
> CONFIG_BAREBOX_UPDATE_IMX6_NAND is not selected. Fix this by wrapping
> it's usage in preprocessor statements.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/phytec-phyflex-imx6/board.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
> index 09a5c79..9acbd7a 100644
> --- a/arch/arm/boards/phytec-phyflex-imx6/board.c
> +++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
> @@ -81,8 +81,9 @@ static int phytec_pfla02_init(void)
>  
>  	phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
>  					   ksz9031rn_phy_fixup);
> -
> +#ifdef CONFIG_BAREBOX_UPDATE_IMX6_NAND
>  	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
> +#endif

the bbu handler register functions normally have a static inline wrapper
if disabled. imx6_bbu_nand_register_handler is a static inline when
CONFIG_BAREBOX_UPDATE is disabled. Maybe this should rather be under
CONFIG_BAREBOX_UPDATE_IMX6_NAND instead. Could you update the patch
accordingly?

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
