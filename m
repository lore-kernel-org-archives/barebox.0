Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XlGm5-000240-2B
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 12:30:21 +0000
Date: Mon, 3 Nov 2014 13:29:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141103122959.GO14443@pengutronix.de>
References: <1415009535-6294-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415009535-6294-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [For next PATCH] ARM: dts: phyFLEX: Add SKEW clock delays to
 emac0 node
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 03, 2014 at 11:12:15AM +0100, Wadim Egorov wrote:
> The KSZ9031 gigabit phy on the PBA-B-01 carrier board needs special settings
> for the RGMII skew control register.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>

Applied, thanks

Sascha

> ---
>  arch/arm/dts/am335x-phytec-phyflex.dts |   11 +++++++++++
>  1 files changed, 11 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/dts/am335x-phytec-phyflex.dts b/arch/arm/dts/am335x-phytec-phyflex.dts
> index 4dde328..c4481f5 100644
> --- a/arch/arm/dts/am335x-phytec-phyflex.dts
> +++ b/arch/arm/dts/am335x-phytec-phyflex.dts
> @@ -212,6 +212,17 @@
>  	phy_id = <&davinci_mdio>, <1>;
>  	phy-mode = "rgmii";
>  	dual_emac_res_vlan = <1>;
> +
> +	/* clock skew correction, maximum possible on KSZ9031 is
> +	2^5 - 1 * 0,06ns = 1860ps, micrel datasheet M9999-081712-0.11 p.58*/
> +	rxc-skew-ps = <1860>;
> +	txc-skew-ps = <1860>;
> +
> +	/* align tx signals to zero, leave rx to default */
> +	txd0-skew-ps = <0>;
> +	txd1-skew-ps = <0>;
> +	txd2-skew-ps = <0>;
> +	txd3-skew-ps = <0>;
>  };
>  
>  &cpsw_emac1 {
> -- 
> 1.7.0.4
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
