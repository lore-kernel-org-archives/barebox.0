Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VpwEC-0006vd-7v
 for barebox@lists.infradead.org; Mon, 09 Dec 2013 08:30:09 +0000
Date: Mon, 9 Dec 2013 09:29:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131209082945.GJ24559@pengutronix.de>
References: <1386357468-26892-1-git-send-email-r.schwebel@pengutronix.de>
 <1386357468-26892-2-git-send-email-r.schwebel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386357468-26892-2-git-send-email-r.schwebel@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM: i.MX6: tqma6x: dts: move FEC enablement to
 baseboard
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 06, 2013 at 08:17:46PM +0100, Robert Schwebel wrote:
> The definition if the FEC is used is made by the baseboard (MBa6x), not
> by the module (TQMa6x). Move it there.
> 
> Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
> ---
>  arch/arm/dts/imx6q-mba6x.dts  | 4 ++++
>  arch/arm/dts/imx6q-tqma6x.dts | 2 +-
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/dts/imx6q-mba6x.dts b/arch/arm/dts/imx6q-mba6x.dts
> index 69d46b4..e057fc4 100644
> --- a/arch/arm/dts/imx6q-mba6x.dts
> +++ b/arch/arm/dts/imx6q-mba6x.dts
> @@ -26,6 +26,10 @@
>  	};
>  };
>  
> +&fec {
> +	status = "okay";
> +};
> +

This is the wrong file, it's the baseboard for the i.MX6q module only.
Added it to imx6qdl-mba6x.dtsi instead.

>  &iomuxc {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_hog>;
> diff --git a/arch/arm/dts/imx6q-tqma6x.dts b/arch/arm/dts/imx6q-tqma6x.dts
> index 597388e..f556381 100644
> --- a/arch/arm/dts/imx6q-tqma6x.dts
> +++ b/arch/arm/dts/imx6q-tqma6x.dts
> @@ -81,7 +81,7 @@
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet_1>;
>  	phy-mode = "rgmii";
> -	status = "okay";
> +	status = "disabled";

This is the file you remove in 3/3. Applied this change to
imx6qdl-tqma6x.dtsi instead.

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
