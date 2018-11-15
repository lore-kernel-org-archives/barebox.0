Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNCf4-00056t-GF
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 08:06:04 +0000
Date: Thu, 15 Nov 2018 09:05:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181115080550.pqfr7gfjehf25zdz@pengutronix.de>
References: <20181115072054.6297-1-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181115072054.6297-1-ejo@pengutronix.de>
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
Subject: Re: [PATCH] ARM: socfpga: achilles: enable watchdog1
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org, s.trumtrar@pengutronix.de

On Thu, Nov 15, 2018 at 08:20:54AM +0100, Enrico Jorns wrote:
> This one is required for guarding the boot procedure
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
>  arch/arm/dts/socfpga_arria10_achilles.dts | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks.

Is there any point in disabling the watchdog in the dtsi file? Why isn't
it enabled there already?

Sascha

> 
> diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
> index 176e06df12..e94a321999 100644
> --- a/arch/arm/dts/socfpga_arria10_achilles.dts
> +++ b/arch/arm/dts/socfpga_arria10_achilles.dts
> @@ -242,3 +242,7 @@
>  	reg-io-width = <4>;
>  	status = "okay";
>  };
> +
> +&watchdog1 {
> +	status = "okay";
> +};
> -- 
> 2.19.1
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
