Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQXJd-0005uD-NQ
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 10:36:39 +0000
Date: Mon, 9 Jan 2017 11:36:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109103616.fqqijrpguyfq2sr5@pengutronix.de>
References: <20161214125316.2350-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161214125316.2350-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] ARM: i.MX53 Vincell: change dialog compatible to proper
 vendor prefix
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 14, 2016 at 01:53:16PM +0100, Michael Grzeschik wrote:
> The compatible vendor prefix for dialog pmic is dlg. We fix it in
> the devicetrees using the wrong one.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---

Applied, thanks

Sascha

>  arch/arm/dts/imx53-guf-vincell-lt.dts | 2 +-
>  arch/arm/dts/imx53-guf-vincell.dts    | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/dts/imx53-guf-vincell-lt.dts b/arch/arm/dts/imx53-guf-vincell-lt.dts
> index 67a4133..2b1b54a 100644
> --- a/arch/arm/dts/imx53-guf-vincell-lt.dts
> +++ b/arch/arm/dts/imx53-guf-vincell-lt.dts
> @@ -152,7 +152,7 @@
>  	};
>  
>  	pmic: dialog@48 { /* DA9053-3HHA1 PMIC */
> -		compatible = "dialog,da9053-aa", "dialog,da9052";
> +		compatible = "dlg,da9053-aa", "dlg,da9052";
>  		reg = <0x48>;
>  		interrupt-parent = <&gpio7>;
>  		interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
> diff --git a/arch/arm/dts/imx53-guf-vincell.dts b/arch/arm/dts/imx53-guf-vincell.dts
> index 2f0153e..f743f17 100644
> --- a/arch/arm/dts/imx53-guf-vincell.dts
> +++ b/arch/arm/dts/imx53-guf-vincell.dts
> @@ -102,7 +102,7 @@
>  	status = "okay";
>  
>  	pmic: dialog@48 { /* DA9053-3HHA1 PMIC */
> -		compatible = "dialog,da9053-aa", "dialog,da9052";
> +		compatible = "dlg,da9053-aa", "dlg,da9052";
>  		reg = <0x48>;
>  		interrupt-parent = <&gpio7>;
>  		interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
> -- 
> 2.10.2
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
