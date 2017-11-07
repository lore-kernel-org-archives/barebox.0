Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eBxbr-0008MO-BB
 for barebox@lists.infradead.org; Tue, 07 Nov 2017 06:43:46 +0000
Date: Tue, 7 Nov 2017 07:43:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171107064310.b4rxnkmdwkbyf2xd@pengutronix.de>
References: <1509706096-41266-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1509706096-41266-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v3 1/3] ARM: dts: AM335x: Add dummy i2c nodes
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 03, 2017 at 11:48:14AM +0100, Daniel Schultz wrote:
> These i2c nodes are needed for autoenable of i2c clients, because
> the autoenable API searches for device tree nodes to get the client
> address.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  arch/arm/dts/am335x-phytec-phycore-som.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
> index dbc6424..cf2eef3 100644
> --- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
> +++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
> @@ -164,6 +164,20 @@
>  		pagesize = <32>;
>  		reg = <0x52>;
>  	};
> +
> +	/* The following i2c nodes are for the autoenable */
> +	i2c_tmp102: temp@4b {
> +		compatible = "ti,tmp102";
> +		reg = <0x4b>;
> +		status = "disabled";
> +	};
> +
> +	i2c_rtc: rtc@68 {
> +		compatible = "rv4162";
> +		reg = <0x68>;
> +		status = "disabled";
> +	};
> +
>  };
>  
>  &mmc1 {
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
