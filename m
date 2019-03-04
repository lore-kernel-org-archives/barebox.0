Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0iGi-0000xL-SJ
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 07:44:14 +0000
Date: Mon, 4 Mar 2019 08:44:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190304074408.ixa5vqilkwqp23u2@pengutronix.de>
References: <20190228062033.8937-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190228062033.8937-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] fixup! ARM: imx8mq-zii-ultra: Enable PCIE1 and PCIE2
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Feb 27, 2019 at 10:20:32PM -0800, Andrey Smirnov wrote:
> ---
>  arch/arm/dts/imx8mq-zii-ultra.dtsi | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
> index d46a26d81..0c124a5ec 100644
> --- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
> +++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
> @@ -272,15 +272,14 @@
>  	clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
>  	status = "okay";
>  
> -	pcie@0,0 {
> -		reg = <0x000000 0 0 0 0>;
> +	host@0 {
> +		reg = <0 0 0 0 0>;
>  
>  		#address-cells = <3>;
>  		#size-cells = <2>;
>  
> -		/* pcie endpoint 01:00.0 */
> -		eth1: intel,i210@pcie0,0 {
> -			reg = <0x010000 0 0 0 0>;
> +		i210: i210@0 {
> +			reg = <0 0 0 0 0>;
>  		};
>  	};
>  };
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
