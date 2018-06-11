Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSGc2-0004Nv-BF
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 06:47:35 +0000
Date: Mon, 11 Jun 2018 08:47:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180611064719.fuifahist7q7dde5@pengutronix.de>
References: <20180608184650.25489-1-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180608184650.25489-1-akurz@blala.de>
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
Subject: Re: [PATCH] DTS ARM: i.MX50: resolve warning
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 08, 2018 at 06:46:50PM +0000, Alexander Kurz wrote:
> Resolve the warning "node has a unit name, but no reg property".
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/dts/imx50.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx50.dtsi b/arch/arm/dts/imx50.dtsi
> index 8737d4f33..c3804cfdc 100644
> --- a/arch/arm/dts/imx50.dtsi
> +++ b/arch/arm/dts/imx50.dtsi
> @@ -3,14 +3,14 @@
>  / {
>  	soc {
>  		aips@50000000 { /* AIPS1 */
> -			usbphy0: usbphy@0 {
> +			usbphy0: usbphy0 {
>  				compatible = "usb-nop-xceiv";
>  				clocks = <&clks IMX5_CLK_USB_PHY1_GATE>;
>  				clock-names = "main_clk";
>  				status = "okay";
>  			};
>  
> -			usbphy1: usbphy@1 {
> +			usbphy1: usbphy1 {
>  				compatible = "usb-nop-xceiv";
>  				clocks = <&clks IMX5_CLK_USB_PHY2_GATE>;
>  				clock-names = "main_clk";
> -- 
> 2.11.0
> 
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
