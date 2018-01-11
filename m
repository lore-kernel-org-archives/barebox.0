Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZYLS-0008Gs-Fs
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 08:36:20 +0000
Date: Thu, 11 Jan 2018 09:36:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180111083606.4sgmbcgfugedpg3g@pengutronix.de>
References: <20180110081912.21808-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180110081912.21808-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: socfpga: get rid of clock-frequency assignments
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 10, 2018 at 09:19:11AM +0100, Steffen Trumtrar wrote:
> The clock framework used to need the clock-frequency property,
> even if 0, to work correctly.
> This is no longer necessary. So, get rid of the assignments.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/dts/socfpga.dtsi | 11 -----------
>  1 file changed, 11 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
> index b3a7f69ffe09..2fe8f8687593 100644
> --- a/arch/arm/dts/socfpga.dtsi
> +++ b/arch/arm/dts/socfpga.dtsi
> @@ -11,17 +11,6 @@
>  		mmc0 = &mmc;
>  	};
>  };
> -&osc2 {
> -	clock-frequency = <0>;
> -};
> -
> -&f2s_periph_ref_clk {
> -	clock-frequency = <0>;
> -};
> -
> -&f2s_sdram_ref_clk {
> -	clock-frequency = <0>;
> -};
>  
>  &watchdog0 {
>  	resets = <&rst L4WD0_RESET>;
> -- 
> 2.11.0
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
