Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGzkl-0000iI-Bx
 for barebox@lists.infradead.org; Sat, 12 Sep 2020 07:15:20 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>) id 1kGzki-00006r-P5
 for barebox@lists.infradead.org; Sat, 12 Sep 2020 09:15:16 +0200
Message-ID: <6e29e35c4dba12a3cb2a31962c49dd6357ef429e.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Sat, 12 Sep 2020 09:15:15 +0200
In-Reply-To: <20200912071241.29924-2-r.czerwinski@pengutronix.de>
References: <20200912071241.29924-1-r.czerwinski@pengutronix.de>
 <20200912071241.29924-2-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH] iotmaxx: gw4100: WDOG_ANY as GPIO output
To: barebox@lists.infradead.org

Hi,

On Sat, 2020-09-12 at 09:12 +0200, Rouven Czerwinski wrote:
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  dts/src/arm/imx7d-iotmaxx-gw4100.dts | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/dts/src/arm/imx7d-iotmaxx-gw4100.dts
> b/dts/src/arm/imx7d-iotmaxx-gw4100.dts
> index 91befd2607..c9321ca7e0 100644
> --- a/dts/src/arm/imx7d-iotmaxx-gw4100.dts
> +++ b/dts/src/arm/imx7d-iotmaxx-gw4100.dts
> @@ -220,6 +220,21 @@
>  	};
>  };
>  
> +&gpio7 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_gpio7>;
> +	status = "okay";
> +	gpio-line-names = "",
> +	"", "", "", "", "",
> +	"", "reset", "", "", "",
> +	"", "", "", "", "",
> +	"", "", "", "", "",
> +	"", "", "", "", "",
> +	"", "", "", "", "",
> +	"";
> +
> +};
> +
>  &i2c1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_i2c1>;
> @@ -454,6 +469,11 @@
>  		MX7D_PAD_SD3_STROBE__SD3_STROBE			0x1b
>  		>;
>  	};
> +	pinctrl_gpio7: gpio7grp {
> +		fsl,pins = <
> +		MX7D_PAD_ENET1_COL__GPIO7_IO15			0x51
> +		>;
> +	};
>  };
>  
>  &iomuxc_lpsr {

Please ignore this, leftover patch in my patch directory.

Regards,
Rouven


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
