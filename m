Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPxHn-0000C2-OO
 for barebox@lists.infradead.org; Tue, 18 Mar 2014 16:54:48 +0000
Date: Tue, 18 Mar 2014 17:54:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140318165420.GZ17250@pengutronix.de>
References: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
 <1394977701-5889-7-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1394977701-5889-7-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 06/10] ARM: dts: Add TI TMS320DM365 devicetree file
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Mar 16, 2014 at 05:48:17PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/arm/dts/dm365.dtsi | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm/dts/dm365.dtsi b/arch/arm/dts/dm365.dtsi
> new file mode 100644
> index 0000000..ea69007
> --- /dev/null
> +++ b/arch/arm/dts/dm365.dtsi
> @@ -0,0 +1,28 @@
> +#include "skeleton.dtsi"
> +
> +/ {
> +	soc {
> +		compatible = "simple-bus";
> +		model = "TI TMS320DM365";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0x0 0x01c00000 0x400000>;
> +
> +		serial0: serial@1c20000 {
> +			compatible = "ns16550a";
> +			reg = <0x20000 0x400>;
> +			reg-shift = <2>;
> +			clock-frequency = <24000000>;
> +			status = "disabled";
> +		};
> +
> +		gpio: gpio@1c67000 {
> +			compatible = "ti,dm6441-gpio";
> +			gpio-controller;
> +			reg = <0x67000 0x800>;
> +			#gpio-cells = <2>;
> +			ti,ngpio = <107>;
> +			status = "disabled";

The device should be enabled in the dtsi. Virtually every board wants to
use it.

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
