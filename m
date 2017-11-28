Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJaJc-0000IM-PF
 for barebox@lists.infradead.ORG; Tue, 28 Nov 2017 07:28:27 +0000
Date: Tue, 28 Nov 2017 08:28:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171128072802.sin7whmcfmdfruqc@pengutronix.de>
References: <20171124085037.19139-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171124085037.19139-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] Documentation: devicetree: m25p80: fix referenced filename
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Nov 24, 2017 at 09:50:37AM +0100, Ulrich =D6lmann wrote:
> Linux changed the filename in commit 8947e396a829 ("Documentation: dt: mt=
d:
> replace "nor-jedec" binding with "jedec, spi-nor"") and barebox imported =
this
> change in commit 8ed978b79062 ("dts: update to v4.1-rc4").
> =

> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/mtd/m25p80.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/Documentation/devicetree/bindings/mtd/m25p80.rst b/Documenta=
tion/devicetree/bindings/mtd/m25p80.rst
> index d7c8914ec5d7..09e8b8eff606 100644
> --- a/Documentation/devicetree/bindings/mtd/m25p80.rst
> +++ b/Documentation/devicetree/bindings/mtd/m25p80.rst
> @@ -1,7 +1,7 @@
>  MTD SPI driver for ST M25Pxx (and similar) serial flash chips
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>  =

> -Additionally to the Linux bindings in ``dts/Bindings/mtd/m25p80.txt``
> +Additionally to the Linux bindings in ``dts/Bindings/mtd/jedec,spi-nor.t=
xt``
>  the barebox driver has the following optional properties:
>  =

>  - use-large-blocks : Use large blocks rather than the 4K blocks some dev=
ices
> -- =

> 2.11.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
