Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCOHp-0004k1-10
 for barebox@lists.infradead.org; Tue, 07 Jul 2015 08:31:30 +0000
Date: Tue, 7 Jul 2015 10:31:06 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20150707083106.GD6099@pengutronix.de>
References: <1436254400-5271-1-git-send-email-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436254400-5271-1-git-send-email-p.zabel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: imx6: fix GK802 DT
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 07, 2015 at 09:33:20AM +0200, Philipp Zabel wrote:
> From: Philipp Zabel <philipp.zabel@gmail.com>
> =

> Including "imx6q.dtsi" after <arm/imx6q-gk802.dts> also includes
> <arm/imx6ql.dtsi> again, disabling all peripherals, including the
> serial console uart. We can't include it first either, because
> arm/imx6q-gk802.dts contains the /dts-v1/ header.
> This patch drops the offending include statement and instead adds
> the missing IPU aliases manually.
> =

> Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
> ---
>  arch/arm/dts/imx6q-gk802.dts | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> =

> diff --git a/arch/arm/dts/imx6q-gk802.dts b/arch/arm/dts/imx6q-gk802.dts
> index 310d6f0..d712e00 100644
> --- a/arch/arm/dts/imx6q-gk802.dts
> +++ b/arch/arm/dts/imx6q-gk802.dts
> @@ -7,7 +7,13 @@
>   */
>  =

>  #include <arm/imx6q-gk802.dts>
> -#include "imx6q.dtsi"
> +
> +/ {
> +	aliases {
> +		ipu0 =3D &ipu1;
> +		ipu1 =3D &ipu2;
> +	};
> +};
>  =

>  /* External USB-A port (USBOTG) */
>  &usbotg {
Alternatively you could remove the line

	#include <arm/imx6q.dtsi>

from arch/arm/dts/imx6q.dtsi, right? This is already included via

arch/arm/dts/imx6q-gk802.dts -> #include <arm/imx6q-gk802.dts>
dts/src/arm/imx6q-gk802.dts -> #include "imx6q.dtsi"

anyhow. This would need a fixup for all imx6q boards that don't have a
dts in dts/src though (i.e. all but imx6q-gk802 if my grep magic was
correct).

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
