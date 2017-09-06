Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpZUr-0006E3-En
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 12:31:59 +0000
Date: Wed, 6 Sep 2017 14:31:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170906123136.po6ksxc4arcrrcsq@pengutronix.de>
References: <1503384247-43167-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1503384247-43167-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH 1/4] arm: dts: am335x: Add emmc node to phycore-som
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 22, 2017 at 08:44:04AM +0200, Daniel Schultz wrote:
> Add the EMMC node to the phycore-som device tree. It's by default
> disabled, because NAND is the primary boot device.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  arch/arm/dts/am335x-phytec-phycore-som.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
> index 0b8c454..0025bc7 100644
> --- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
> +++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
> @@ -58,6 +58,21 @@
>  		>;
>  	};
>  
> +	emmc_pins: pinmux_emmc_pins {
> +		pinctrl-single,pins = <
> +			0x80 (PIN_INPUT_PULLUP | MUX_MODE2) /* gpmc_csn1.mmc1_clk */
> +			0x84 (PIN_INPUT_PULLUP | MUX_MODE2) /* gpmc_csn2.mmc1_cmd */
> +			0x00 (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad0.mmc1_dat0 */
> +			0x04 (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad1.mmc1_dat1 */
> +			0x08 (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad2.mmc1_dat2 */
> +			0x0c (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad3.mmc1_dat3 */
> +			0x10 (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad4.mmc1_dat4 */
> +			0x14 (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad5.mmc1_dat5 */
> +			0x18 (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad6.mmc1_dat6 */
> +			0x1c (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad7.mmc1_dat7 */
> +		>;
> +	};
> +
>  	emac_rmii1_pins: pinmux_emac_rmii1_pins {
>  		pinctrl-single,pins = <
>  			0x10c (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_crs.rmii1_crs_dv */
> @@ -157,6 +172,15 @@
>  	status = "okay";
>  };
>  
> +&mmc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&emmc_pins>;
> +	bus-width = <8>;
> +	status = "disabled";
> +	ti,vcc-aux-disable-is-sleep;
> +	non-removable;
> +};
> +
>  &spi0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&spi0_pins>;
> -- 
> 2.7.4
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
