Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gArbH-0000WD-GS
 for barebox@lists.infradead.org; Fri, 12 Oct 2018 07:11:09 +0000
Date: Fri, 12 Oct 2018 09:10:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181012071055.iyri2e64dug34232@pengutronix.de>
References: <20181011071302.6366-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181011071302.6366-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] common: state: use of_property_write_string() where
 appropriate
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Oct 11, 2018 at 09:13:02AM +0200, Ulrich =D6lmann wrote:
> See commit b6089182316d ("treewide: Use of_property_write_string() where
> appropriate").
> =

> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  common/state/state_variables.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/common/state/state_variables.c b/common/state/state_variable=
s.c
> index de9ba4ab61ac..abd714ceda1e 100644
> --- a/common/state/state_variables.c
> +++ b/common/state/state_variables.c
> @@ -339,8 +339,7 @@ static int state_string_export(struct state_variable =
*var,
>  	int ret =3D 0;
>  =

>  	if (string->value_default) {
> -		ret =3D of_set_property(node, "default", string->value_default,
> -				      strlen(string->value_default) + 1, 1);
> +		ret =3D of_property_write_string(node, "default", string->value_defaul=
t);
>  =

>  		if (ret)
>  			return ret;
> @@ -350,8 +349,7 @@ static int state_string_export(struct state_variable =
*var,
>  		return 0;
>  =

>  	if (string->value)
> -		ret =3D of_set_property(node, "value", string->value,
> -				      strlen(string->value) + 1, 1);
> +		ret =3D of_property_write_string(node, "value", string->value);
>  =

>  	return ret;
>  }
> -- =

> 2.19.0
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
