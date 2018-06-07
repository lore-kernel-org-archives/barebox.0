Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQr9A-0004F1-Mb
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 09:23:57 +0000
Date: Thu, 7 Jun 2018 11:23:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180607092341.uzh4yg5jh4nb7mqw@pengutronix.de>
References: <20180605150802.24898-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180605150802.24898-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx6sx: use correct clocks for GPT
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 05, 2018 at 05:08:02PM +0200, Lucas Stach wrote:
> This is a stop gap solution until the upstream DT is fixed. In Linux this isn't
> an issue as the driver prefers the "osc_per" clock, falling back to "per" and
> then doing different things based on the SoC type and if the input clock rate
> matches 3MHz. As this isn't really how the hardware works, but a fragile mix of
> the clock driver exposing a clock with a faked frequency and system knowledge in
> the GPT driver I prefer not to replicate this horrors in the Barebox driver,
> but instead just use the system clock source.
> 
> Fixes: 2ebda864f837
>        (ARM: imx: clocksource: Use per clock for determining parent freq)
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/dts/imx6sx.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6sx.dtsi b/arch/arm/dts/imx6sx.dtsi
> index 5a8ee464460a..52424199f47c 100644
> --- a/arch/arm/dts/imx6sx.dtsi
> +++ b/arch/arm/dts/imx6sx.dtsi
> @@ -10,3 +10,7 @@
>  		pwm7 = &pwm8;
>  	};
>  };
> +
> +&gpt {
> +	clocks = <&clks IMX6SX_CLK_GPT_BUS>, <&clks IMX6SX_CLK_GPT_SERIAL>;
> +};
> -- 
> 2.17.1
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
