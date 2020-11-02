Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZUh6-0002aS-2N
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 07:56:01 +0000
Date: Mon, 2 Nov 2020 08:55:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201102075556.GP26805@pengutronix.de>
References: <20201029205615.103515-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201029205615.103515-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx6qdl: pfla02: document motivation for
 dropping supply
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Stefan Riedmueller <s.riedmueller@phytec.de>

On Thu, Oct 29, 2020 at 09:56:15PM +0100, Uwe Kleine-K=F6nig wrote:
> In commit 84cf5cfa9a0e ("ARM: dts: imx6qdl: pfla02: Remove fec
> phy-supply") the phy-supply was removed. The motivation however was only
> given in the commit log. Add a comment accompanying the actual statement
> to remove the property to make this better findable.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6q=
dl-phytec-pfla02.dtsi
> index b83511cb011f..7a12e2a06be4 100644
> --- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> @@ -84,6 +84,11 @@
>  };
>  =

>  &fec {
> +	/*
> +	 * barebox doesn't have a driver for the PMIC providing the phy-supply
> +	 * (dlg,da9063). So remove the phy-supply property and rely on the
> +	 * PMIC's reset default which has this supply enabled.
> +	 */
>  	/delete-property/ phy-supply;
>  };
>  =

> -- =

> 2.28.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
