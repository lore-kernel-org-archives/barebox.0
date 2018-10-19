Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gDTPM-0003pe-FP
 for barebox@lists.infradead.org; Fri, 19 Oct 2018 11:57:40 +0000
Date: Fri, 19 Oct 2018 13:57:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181019115724.e6zpmbzzbhc6tj5e@pengutronix.de>
References: <20181019044303.537-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181019044303.537-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] state: fix indentation
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Oct 19, 2018 at 06:43:03AM +0200, Ulrich =D6lmann wrote:
> ---
>  common/state/state.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/common/state/state.c b/common/state/state.c
> index bef20210d6e9..54c57232e626 100644
> --- a/common/state/state.c
> +++ b/common/state/state.c
> @@ -311,7 +311,7 @@ static int state_convert_node_variable(struct state *=
state,
>  		if ((conv =3D=3D STATE_CONVERT_TO_NODE)
>  		    || (conv =3D=3D STATE_CONVERT_FIXUP)) {
>  			ret =3D of_property_write_string(new_node, "type",
> -					      vtype->type_name);
> +						       vtype->type_name);

Patch lacks a signed-off-by. Anyway, it's hardly worth fixing this I
think.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
