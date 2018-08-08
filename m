Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnIYP-00074F-7T
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 07:06:46 +0000
Date: Wed, 8 Aug 2018 09:06:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808070631.qhqakny3bcddr77i@pengutronix.de>
References: <20180727100208.20922-1-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180727100208.20922-1-marc@cpdesign.com.au>
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
Subject: Re: [PATCH] arm: dts: am335x-bone-common.dtsi: add eeprom device to DT
To: marc@cpdesign.com.au
Cc: barebox@lists.infradead.org

Hi Marc,

On Fri, Jul 27, 2018 at 08:02:08PM +1000, marc@cpdesign.com.au wrote:
> From: Marc Reilly <marc@cpdesign.com.au>
> 
> This adds a device node to provide support for the onboard eeprom of
> beaglebone products. The eeprom contents can be used to determine the
> type of beaglebone running. For example this can be used to
> differentiate between the original Beaglebone Black and the wireless
> version.
> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  arch/arm/dts/am335x-bone-common.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm/dts/am335x-bone-common.dtsi b/arch/arm/dts/am335x-bone-common.dtsi
> index e03ae2a8d..a5db15197 100644
> --- a/arch/arm/dts/am335x-bone-common.dtsi
> +++ b/arch/arm/dts/am335x-bone-common.dtsi
> @@ -217,6 +217,16 @@
>  		reg = <0x24>;
>  	};
>  
> +	baseboard_eeprom: baseboard_eeprom@50 {
> +		compatible = "atmel,24c256";
> +		reg = <0x50>;
> +
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		baseboard_data: baseboard_data@0 {
> +			reg = <0 0x100>;
> +		};
> +	};

I see this node is present in the upstream dtsi in
dts/src/arm/am335x-bone-common.dtsi already. Maybe a better approach
would be to switch to the upstream file?

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
