Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSh9Q-0006e9-2p
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 10:03:17 +0000
Message-ID: <1499248963.22075.2.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 05 Jul 2017 12:02:43 +0200
In-Reply-To: <20170705093301.7411-2-o.rempel@pengutronix.de>
References: <20170705093301.7411-1-o.rempel@pengutronix.de>
 <20170705093301.7411-2-o.rempel@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v1 2/2] dts: arm: imx6qdl: provide snvs-lpgpr device
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Oleksij,

Am Mittwoch, den 05.07.2017, 11:33 +0200 schrieb Oleksij Rempel:
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  dts/src/arm/imx6qdl.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/dts/src/arm/imx6qdl.dtsi b/dts/src/arm/imx6qdl.dtsi

Files in dts/src/arm/... are verbatim copies of the upstream DTS files
and can not be changed by Barebox patches. As long as the this node
addition hasn't been applied upstream the node needs to be carried in
the Barebox override files in arch/arm/dts/...

Regards,
Lucas

> index e426faa9c2..94e9925582 100644
> --- a/dts/src/arm/imx6qdl.dtsi
> +++ b/dts/src/arm/imx6qdl.dtsi
> @@ -769,6 +769,10 @@
>  					mask = <0x60>;
>  					status = "disabled";
>  				};
> +
> +				snvs_lpgpr: snvs-lpgpr {
> +					compatible = "fsl,imx6q-snvs-lpgpr";
> +				};
>  			};
>  
>  			epit1: epit@020d0000 { /* EPIT1 */



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
