Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jefVr-0003qP-Te
 for barebox@lists.infradead.org; Fri, 29 May 2020 13:57:33 +0000
Message-ID: <81baec3b23d148e9085bb73b28c52dd1f9ba818f.camel@lynxeye.de>
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 29 May 2020 15:56:53 +0200
In-Reply-To: <20200529125122.8561-1-m.grzeschik@pengutronix.de>
References: <20200529125122.8561-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH] ARM: MXS: duckbill: set duart to serial0
To: Michael Grzeschik <m.grzeschik@pengutronix.de>, barebox@lists.infradead.org

Am Freitag, den 29.05.2020, 14:51 +0200 schrieb Michael Grzeschik:
> In the imx28.dtsi the serial0 is set to auart0 which is not the one
> used on the duckbill. We set duart to serial0 so the console will be
> properly set.

If the aliases are the same in the Barebox and Linux DTs there should
be no need to override the alias numbering in the individual board DTs.

Is the Linux driver ignoring the alias, or what is the issue being
fixed here?

Regards,
Lucas

> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  arch/arm/dts/imx28-duckbill.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/dts/imx28-duckbill.dts b/arch/arm/dts/imx28-
> duckbill.dts
> index 2a995a7938..299c33e270 100644
> --- a/arch/arm/dts/imx28-duckbill.dts
> +++ b/arch/arm/dts/imx28-duckbill.dts
> @@ -4,6 +4,10 @@
>  	chosen {
>  		stdout-path = &duart;
>  	};
> +
> +	aliases {
> +		serial0 = &duart;
> +	};
>  };
>  
>  &duart {


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
