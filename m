Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQmgm-0003BS-Ck
 for barebox@lists.infradead.org; Fri, 09 Oct 2020 07:19:41 +0000
Date: Fri, 9 Oct 2020 09:19:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201009071938.GX11648@pengutronix.de>
References: <20201008110734.31719-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008110734.31719-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1] ARM: dts: imx6q-prti6q: add pstore/ramoops node
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl

On Thu, Oct 08, 2020 at 01:07:34PM +0200, Oleksij Rempel wrote:
> In some cases we have no UART access, but we still need to get barebox
> messages. With ramoops enabled, we still can get barebox message from
> running Linux by reading:
> cat /sys/fs/pstore/console-ramoops-0
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/dts/imx6qdl-prti6q.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6qdl-prti6q.dtsi b/arch/arm/dts/imx6qdl-prti6q.dtsi
> index f2b36553d4..bfc059e34f 100644
> --- a/arch/arm/dts/imx6qdl-prti6q.dtsi
> +++ b/arch/arm/dts/imx6qdl-prti6q.dtsi
> @@ -27,6 +27,17 @@
>  		};
>  	};
>  
> +	reserved-memory {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		/* Address will be determined by the bootloader */
> +		ramoops {
> +			compatible = "ramoops";
> +		};
> +	};
> +
>  	reg_1v8: regulator-1v8 {
>  		compatible = "regulator-fixed";
>  		regulator-name = "1v8";
> -- 
> 2.28.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
