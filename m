Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kwmUP-0006It-FS
 for barebox@lists.infradead.org; Tue, 05 Jan 2021 13:35:10 +0000
Date: Tue, 5 Jan 2021 14:35:07 +0100
Message-ID: <20210105133507.GF19063@pengutronix.de>
References: <20201229202328.13857-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201229202328.13857-1-dev@lynxeye.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx8mq: reclock ARM PLL to 800MHz
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 29, 2020 at 09:23:28PM +0100, Lucas Stach wrote:
> The BootROM sets up the ARM PLL to run at 1.6GHz and then uses the
> divider after the PLL the achieve a CPU clock rate of 800MHz. New Linux
> kernels (>= 5.8) switch to a clock path that bypasses the divider, as
> the divider should not be used for CPU clock frequencies >1GHz. If the
> BootROM setup is left unchanged this causes the CPU clock to jump to
> the full 1.6GHz until CPUfreq takes over and reprograms the PLL. This
> rate is outside of the chip specification and leads to crashes.
> 
> Fix this by reclocking the ARM PLL to 800MHz.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/dts/imx8mq.dtsi | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
> index ec8347f38fa8..e56cdfe1308e 100644
> --- a/arch/arm/dts/imx8mq.dtsi
> +++ b/arch/arm/dts/imx8mq.dtsi
> @@ -17,7 +17,9 @@
>  			  <&clk IMX8MQ_CLK_USDHC2>,
>  			  <&clk IMX8MQ_CLK_ENET_AXI>,
>  			  <&clk IMX8MQ_CLK_ENET_TIMER>,
> -			  <&clk IMX8MQ_CLK_ENET_REF>;
> +			  <&clk IMX8MQ_CLK_ENET_REF>,
> +			  <&clk IMX8MQ_ARM_PLL>,
> +			  <&clk IMX8MQ_CLK_A53_DIV>;
>  
>  	assigned-clock-parents =  <&clk IMX8MQ_SYS1_PLL_400M>,
>  				  <&clk IMX8MQ_SYS1_PLL_400M>,
> @@ -29,5 +31,7 @@
>  			       <200000000>,
>  			       <266000000>,
>  			       <25000000>,
> -			       <125000000>;
> +			       <125000000>,
> +			       <800000000>,
> +			       <800000000>;
>  };
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
