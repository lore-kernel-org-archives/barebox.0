Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFU9h-00022k-NZ
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 19:47:07 +0000
Date: Mon, 17 Feb 2014 20:46:39 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20140217194639.GZ4368@pengutronix.de>
References: <1392638652-27364-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1392638652-27364-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: i.MX6: saresd: set USB PHY and DR mode
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Typo in subject (sa"b"re").

rsc

On Mon, Feb 17, 2014 at 01:04:11PM +0100, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/dts/imx6qdl-sabresd.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/dts/imx6qdl-sabresd.dtsi b/arch/arm/dts/imx6qdl-sabresd.dtsi
> index 346e32a22c56..78c9fd54ebd3 100644
> --- a/arch/arm/dts/imx6qdl-sabresd.dtsi
> +++ b/arch/arm/dts/imx6qdl-sabresd.dtsi
> @@ -280,6 +280,8 @@
>  
>  &usbh1 {
>  	vbus-supply = <&reg_usb_h1_vbus>;
> +	phy_type = "utmi";
> +	dr_mode = "host";
>  	status = "okay";
>  };
>  
> @@ -287,6 +289,8 @@
>  	vbus-supply = <&reg_usb_otg_vbus>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_usbotg>;
> +	phy_type = "utmi";
> +	dr_mode = "host";
>  	disable-over-current;
>  	status = "okay";
>  };
> -- 
> 1.8.5.3
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
