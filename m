Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSH5c-0002hW-8p
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 07:50:25 +0000
Date: Thu, 29 Nov 2018 08:50:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181129075012.cv6g5r2w4a5wuqn4@pengutronix.de>
References: <20181127085133.5415-1-r.czerwinski@pengutronix.de>
 <20181127124502.13785-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181127124502.13785-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH v2] multiple/raspberry-pi: fix clkdevs for raspberry pi
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 27, 2018 at 01:45:02PM +0100, Rouven Czerwinski wrote:
> Commit 7e497d48acbd1184e3f6bd23bd16dfae84dd1129 introduced a name change which
> breaks support for the fixed clkdev for uart and sdhci for RPI.
> Use clkdev_add_physbase instead to be independant from the device tree names.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 4 ++--
>  arch/arm/mach-bcm283x/core.c              | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)

Applied to master, thanks

Sascha

> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
> index 3baed65255..b7ce0ad425 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -290,8 +290,8 @@ static int rpi_clock_init(void)
>  	if (IS_ERR(clk))
>  		return PTR_ERR(clk);
>  
> -	clk_register_clkdev(clk, NULL, "20300000.sdhci");
> -	clk_register_clkdev(clk, NULL, "3f300000.sdhci");
> +	clkdev_add_physbase(clk, 0x20300000, NULL);
> +	clkdev_add_physbase(clk, 0x3f300000, NULL);
>  
>  	return 0;
>  }
> diff --git a/arch/arm/mach-bcm283x/core.c b/arch/arm/mach-bcm283x/core.c
> index 26f0996b1c..f1dcda86f7 100644
> --- a/arch/arm/mach-bcm283x/core.c
> +++ b/arch/arm/mach-bcm283x/core.c
> @@ -40,8 +40,8 @@ static int bcm2835_clk_init(void)
>  
>  	clk = clk_fixed("uart0-pl0110", 3 * 1000 * 1000);
>  	clk_register_clkdev(clk, NULL, "uart0-pl0110");
> -	clk_register_clkdev(clk, NULL, "20201000.serial");
> -	clk_register_clkdev(clk, NULL, "3f201000.serial");
> +	clkdev_add_physbase(clk, 0x20201000, NULL);
> +	clkdev_add_physbase(clk, 0x3f201000, NULL);
>  
>  	clk = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
>  	clk_register_clkdev(clk, NULL, "bcm2835-cs");
> -- 
> 2.19.2
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
