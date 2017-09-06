Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpYyX-0003bl-5K
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 11:58:35 +0000
Date: Wed, 6 Sep 2017 13:58:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170906115811.3kyz6zulvh33ljrj@pengutronix.de>
References: <20170825140507.17500-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170825140507.17500-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] ARM: phycore-imx6ul: use MAC address from OCOTP
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 25, 2017 at 04:05:07PM +0200, Lucas Stach wrote:
> The Phycore MX6UL modules are correctly fused with a MAC address.
> Use this for the Barebox network connection and fixing up the kernel
> DT.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/dts/imx6ul-phytec-phycore-som.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
> index 96beef4e72f7..8cec1296a7f4 100644
> --- a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
> +++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
> @@ -176,3 +176,7 @@
>  		};
>  	};
>  };
> +
> +&ocotp {
> +	barebox,provide-mac-address = <&fec1 0x620 &fec2 0x632>;
> +};
> -- 
> 2.11.0
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
