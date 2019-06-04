Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4Q2-00047e-D3
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 08:03:44 +0000
Date: Tue, 4 Jun 2019 10:03:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190604080340.r7oxb2iukcron5aw@pengutronix.de>
References: <20190531103218.27675-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531103218.27675-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: imx: rdu1: disable FEC node
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, May 31, 2019 at 12:32:17PM +0200, Lucas Stach wrote:
> Barebox doesn't support the needed DSA setup to make communication
> with the FEC work.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/dts/imx51-zii-rdu1.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Applied, thanks

Sascha

> diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
> index 01e46baf2d4e..1b5331f48bbc 100644
> --- a/arch/arm/dts/imx51-zii-rdu1.dts
> +++ b/arch/arm/dts/imx51-zii-rdu1.dts
> @@ -91,6 +91,10 @@
>  	};
>  };
>  
> +&fec {
> +	status = "disabled";
> +};
> +
>  &iomuxc {
>  	pinctrl_usbh1: usbh1grp {
>  
> -- 
> 2.20.1
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
