Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKSzr-0000e6-Se
 for barebox@lists.infradead.org; Sat, 27 Apr 2019 19:28:29 +0000
Date: Sat, 27 Apr 2019 21:28:18 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190427192818.GA17799@ravnborg.org>
References: <20190427183627.22549-1-l.stach@pengutronix.de>
 <20190427183627.22549-3-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190427183627.22549-3-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 2/4] ARM: rpi: add clock for sdhost
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Lucas.

On Sat, Apr 27, 2019 at 08:36:25PM +0200, Lucas Stach wrote:
> The sdhost is driven by the core clock.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
> index bc877f853a..00ae49b686 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -319,6 +319,14 @@ static int rpi_clock_init(void)
>  	clkdev_add_physbase(clk, 0x20300000, NULL);
>  	clkdev_add_physbase(clk, 0x3f300000, NULL);
>  
> +	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_CORE,
> +					  "bcm2835_sdhost");
> +	if (IS_ERR(clk))
> +			return PTR_ERR(clk);
Extra tab..

> +
> +	clkdev_add_physbase(clk, 0x20202000, NULL);
> +	clkdev_add_physbase(clk, 0x3f202000, NULL);
> +
>  	return 0;
>  }
>  postconsole_initcall(rpi_clock_init);
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
