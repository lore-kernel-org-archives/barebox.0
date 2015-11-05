Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZuFT7-0003wG-Pv
 for barebox@lists.infradead.org; Thu, 05 Nov 2015 08:00:27 +0000
Date: Thu, 5 Nov 2015 09:00:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151105080003.GB8526@pengutronix.de>
References: <1446537108-15386-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446537108-15386-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH 1/2] dts: phyFLEX-AM335x: Disable second ethernet interface
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 03, 2015 at 08:51:47AM +0100, Teresa Remmet wrote:
> There are phyFLEX modules with only the first eth phy mounted.
> As barebox only supports the first interface anyway, disable
> the second interface for now.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>

Applied, thanks

Sascha

> ---
>  arch/arm/dts/am335x-phytec-phyflex-som.dtsi | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
> index 6d488fa..c60943c 100644
> --- a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
> +++ b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
> @@ -224,12 +224,13 @@
>  	phy_id = <&davinci_mdio>, <2>;
>  	phy-mode = "rmii";
>  	dual_emac_res_vlan = <2>;
> +	status = "disabled";
>  };
>  
>  &mac {
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&emac_rgmii1_pins &emac_rmii2_pins>;
> -	dual_emac;
> +	slaves = <1>;
> +	pinctrl-0 = <&emac_rgmii1_pins>;
>  	status = "okay";
>  };
>  
> -- 
> 1.9.1
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
