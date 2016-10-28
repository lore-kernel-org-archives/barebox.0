Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c012a-0007j8-3J
 for barebox@lists.infradead.org; Fri, 28 Oct 2016 06:53:25 +0000
Date: Fri, 28 Oct 2016 08:53:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161028065259.nn2trhf73yae2ble@pengutronix.de>
References: <1477298184-32928-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1477298184-32928-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH v2] ARM: dts: am33xx.dtsi: Add spi aliases
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 24, 2016 at 10:36:24AM +0200, Teresa Remmet wrote:
> We need to add the spi aliases to set the bus number correct in
> the driver.
> 
> Delete the spi1 alias again in the am33xx-strip.dtsi for MLO as
> the node is deleted there also.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>

Applied, thanks

Sascha

> ---
> Changes in v2:
> - Removed the first patch completly
> - Delete now spi1 alias in strip file
> - Updated commit message
> 
>  arch/arm/dts/am33xx-strip.dtsi | 1 +
>  arch/arm/dts/am33xx.dtsi       | 2 ++
>  2 files changed, 3 insertions(+)
> 
> diff --git a/arch/arm/dts/am33xx-strip.dtsi b/arch/arm/dts/am33xx-strip.dtsi
> index 2943fd1..83d23a8 100644
> --- a/arch/arm/dts/am33xx-strip.dtsi
> +++ b/arch/arm/dts/am33xx-strip.dtsi
> @@ -14,6 +14,7 @@
>  		/delete-property/ mmc2;
>  		/delete-property/ d_can0;
>  		/delete-property/ d_can1;
> +		/delete-property/ spi1;
>  	};
>  };
>  
> diff --git a/arch/arm/dts/am33xx.dtsi b/arch/arm/dts/am33xx.dtsi
> index 7ba0a0b..f1ee7b3 100644
> --- a/arch/arm/dts/am33xx.dtsi
> +++ b/arch/arm/dts/am33xx.dtsi
> @@ -18,5 +18,7 @@
>  		mmc0 = &mmc1;
>  		mmc1 = &mmc2;
>  		mmc2 = &mmc3;
> +		spi0 = &spi0;
> +		spi1 = &spi1;
>  	};
>  };
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
