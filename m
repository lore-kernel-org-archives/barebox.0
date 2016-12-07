Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEiU4-0001it-T5
 for barebox@lists.infradead.org; Wed, 07 Dec 2016 20:06:34 +0000
Date: Wed, 7 Dec 2016 21:06:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161207200611.dksij5xlimnkynjp@pengutronix.de>
References: <1480501660-4540-1-git-send-email-s.lengfeld@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1480501660-4540-1-git-send-email-s.lengfeld@phytec.de>
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
Subject: Re: [PATCH 1/2] imx6qdl-phytec-phycore-som.dtsi: rename eeprom
To: Stefan Lengfeld <s.lengfeld@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 30, 2016 at 11:27:39AM +0100, Stefan Lengfeld wrote:
> From: Jan Remmet <j.remmet@phytec.de>
> 
> Chose name according to kernel. This is needed for bootstate.
> 
> Signed-off-by: Jan Remmet <j.remmet@phytec.de>
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>

Applied, thanks

Sascha

> ---
>  arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> index d446a5e..37ad878 100644
> --- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> @@ -119,9 +119,9 @@
>  	clock-frequency = <400000>;
>  	status = "okay";
>  
> -	eeprom: 24c32@50 {
> +	eeprom: eeprom@50 {
>  		status = "disabled";
> -		compatible = "st,24c32";
> +		compatible = "24c32";
>  		reg = <0x50>;
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
