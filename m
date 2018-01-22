Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1edWZ1-0008AL-8g
 for barebox@lists.infradead.org; Mon, 22 Jan 2018 07:30:45 +0000
Date: Mon, 22 Jan 2018 08:30:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180122073031.nz2cp3ykedyx5xdy@pengutronix.de>
References: <20180119102026.7456-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180119102026.7456-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] state: Documentation: fix typo
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Jan 19, 2018 at 11:20:26AM +0100, Ulrich =D6lmann wrote:
> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/barebox/barebox,state.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst =
b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> index cebb5f82879a..4be5f2f6bd7e 100644
> --- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
> +++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> @@ -64,7 +64,7 @@ Optional Properties
>  =

>  The ``backend-stridesize`` is still optional but required whenever the
>  underlaying backend doesn't provide an information how to pad an instanc=
e of a
> -*state* variable set. This is valid for all underlaying backends which s=
upports
> +*state* variable set. This is valid for all underlaying backends which s=
upport

Applied, thanks

Fixed underlaying -> underlying in another patch.

Sascha

>  writes on a byte-by-byte manner or don't have eraseblocks (EEPROM, SRAM =
and NOR
>  type flash backends).
>  The ``backend-stridesize`` value is used by the ``direct`` backend stora=
ge type
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
