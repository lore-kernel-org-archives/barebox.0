Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxWRm-0005sD-3M
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 10:53:40 +0000
Date: Thu, 28 Sep 2017 12:53:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170928105315.2mc2dimf375g7mhi@pengutronix.de>
References: <20170928090329.28006-1-u.kleine-koenig@pengutronix.de>
 <20170928090329.28006-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170928090329.28006-2-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2 1/3] Documentation: state: adapt description to reality
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 28, 2017 at 11:03:27AM +0200, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  .../devicetree/bindings/barebox/barebox,state.rst      | 18 ++++++++++--=
------
>  1 file changed, 10 insertions(+), 8 deletions(-)

This one does not apply. Please rebase to master.

Sascha

> =

> diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst =
b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> index 40d7bc2e6fdf..ed17e3e75883 100644
> --- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
> +++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> @@ -127,14 +127,16 @@ Variable Types
>  Backends
>  --------
>  =

> -Currently two backends exist. The raw backend is a very compact format
> -consisting of a magic value for identification, the raw values and a
> -CRC. Two copies are maintained for making sure that during update the
> -storage device still contains a valid state. The dtb backend stores
> -the state as a devicetree binary blob. This is exactly the original
> -devicetree description of the state itself, but additionally contains
> -the actual values of the variables. Unlike the raw state backend the
> -dtb state backend can describe itself.
> +Currently two backends exist. The ``raw`` backend is a very compact form=
at
> +consisting of a magic value for identification, a crc-protected header g=
iving
> +the actual length and then the raw values and another CRC. To make sure =
that
> +during update the storage device always contains a valid state, the data=
 is
> +replicated on the medium.
> +
> +The ``dtb`` backend stores the state as a devicetree binary blob.  This =
is
> +exactly the original devicetree description of the state itself, but
> +additionally contains the actual values of the variables. Unlike the ``r=
aw``
> +state backend the ``dtb`` state backend can describe itself.
>  =

>  HMAC
>  ----
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
