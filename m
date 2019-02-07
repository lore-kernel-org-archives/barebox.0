Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1greVg-0004Kx-Ix
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 07:54:14 +0000
Date: Thu, 7 Feb 2019 08:54:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190207075410.7hwbsm2dlfwltqob@pengutronix.de>
References: <20190206103403.3622-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190206103403.3622-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH 1/2] common: state: fix typo
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Feb 06, 2019 at 11:34:02AM +0100, Ulrich =D6lmann wrote:
> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  common/state/backend_format_raw.c | 4 ++--
>  common/state/state.c              | 2 +-
>  common/state/state.h              | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/common/state/backend_format_raw.c b/common/state/backend_for=
mat_raw.c
> index 4369f76e376f..5a71149d3443 100644
> --- a/common/state/backend_format_raw.c
> +++ b/common/state/backend_format_raw.c
> @@ -127,7 +127,7 @@ static int backend_format_raw_verify(struct state_bac=
kend_format *format,
>  		return -EINVAL;
>  	}
>  =

> -	if (backend_raw->algo && !(flags & STATE_FLAG_NO_AUTHENTIFICATION)) {
> +	if (backend_raw->algo && !(flags & STATE_FLAG_NO_AUTHENTICATION)) {
>  		ret =3D backend_raw_digest_init(backend_raw);
>  		if (ret)
>  			return ret;
> @@ -153,7 +153,7 @@ static int backend_format_raw_verify(struct state_bac=
kend_format *format,
>  =

>  	*lenp =3D header->data_len + sizeof(*header);
>  =

> -	if (backend_raw->algo && !(flags & STATE_FLAG_NO_AUTHENTIFICATION)) {
> +	if (backend_raw->algo && !(flags & STATE_FLAG_NO_AUTHENTICATION)) {
>  		const void *hmac =3D data + header->data_len;
>  =

>  		/* hmac over header and data */
> diff --git a/common/state/state.c b/common/state/state.c
> index 54c57232e626..d3e048b99078 100644
> --- a/common/state/state.c
> +++ b/common/state/state.c
> @@ -128,7 +128,7 @@ int state_load(struct state *state)
>  =

>  int state_load_no_auth(struct state *state)
>  {
> -	return state_do_load(state, STATE_FLAG_NO_AUTHENTIFICATION);
> +	return state_do_load(state, STATE_FLAG_NO_AUTHENTICATION);
>  }
>  =

>  static int state_format_init(struct state *state, const char *backend_fo=
rmat,
> diff --git a/common/state/state.h b/common/state/state.h
> index 3a0662fd2594..912d6d484823 100644
> --- a/common/state/state.h
> +++ b/common/state/state.h
> @@ -6,7 +6,7 @@ struct state;
>  struct mtd_info_user;
>  =

>  enum state_flags {
> -	STATE_FLAG_NO_AUTHENTIFICATION =3D (1 << 0),
> +	STATE_FLAG_NO_AUTHENTICATION =3D (1 << 0),
>  };
>  =

>  enum state_variable_type {
> -- =

> 2.20.1
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
