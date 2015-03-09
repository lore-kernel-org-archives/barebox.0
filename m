Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YUvd6-0001vM-7m
 for barebox@lists.infradead.org; Mon, 09 Mar 2015 11:13:48 +0000
Date: Mon, 9 Mar 2015 12:13:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150309111326.GI31289@pengutronix.de>
References: <1425659123-5365-1-git-send-email-s.trumtrar@pengutronix.de>
 <1425659123-5365-5-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425659123-5365-5-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 4/9] ARM: dts: socfpga: add qspi node
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 06, 2015 at 05:25:18PM +0100, Steffen Trumtrar wrote:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/dts/socfpga.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
> index afac867c991d..251d87ed4ea2 100644
> --- a/arch/arm/dts/socfpga.dtsi
> +++ b/arch/arm/dts/socfpga.dtsi
> @@ -587,6 +587,21 @@
>  			status = "disabled";
>  		};
>  
> +		qspi: spi@ff705000 {
> +			compatible = "cdns,qspi-nor";
> +                        #address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0xff705000 0x1000>,
> +			      <0xffa00000 0x1000>;
> +			interrupts = <0 151 4>;
> +			ext-decoder = <0>;  /* external decoder */
> +			fifo-depth = <128>;
> +			clocks = <&qspi_clk>;
> +			clock-names = "qspi_clk";
> +			status = "disabled";
> +		};
> +
> +

Nit: One blank line is enough.

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
