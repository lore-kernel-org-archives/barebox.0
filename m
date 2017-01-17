Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cTNhi-0004mI-Ch
 for barebox@lists.infradead.org; Tue, 17 Jan 2017 06:57:16 +0000
Date: Tue, 17 Jan 2017 07:56:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170117065651.pupeny4sqgflmpm6@pengutronix.de>
References: <20170116080126.392-1-u.kleine-koenig@pengutronix.de>
 <20170116080457.2416-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170116080457.2416-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2 1/2] of: provide for_each_matching_node_from
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 16, 2017 at 09:04:57AM +0100, Uwe Kleine-K=F6nig wrote:
> This is for_each_matching_node for a given root similar to the other
> ..._from functions.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Changes since v1:
>  - fix typo in Subject
> =

>  include/of.h | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/include/of.h b/include/of.h
> index ed6e87047350..e3bb452b86fa 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -665,9 +665,11 @@ static inline struct device_node *of_find_matching_n=
ode(
>  {
>  	return of_find_matching_node_and_match(from, matches, NULL);
>  }
> -#define for_each_matching_node(dn, matches) \
> -	for (dn =3D of_find_matching_node(NULL, matches); dn; \
> +#define for_each_matching_node_from(dn, root, matches) \
> +	for (dn =3D of_find_matching_node(root, matches); dn; \
>  	     dn =3D of_find_matching_node(dn, matches))
> +#define for_each_matching_node(dn, matches) \
> +	for_each_matching_node_from(dn, NULL, matches)
>  #define for_each_matching_node_and_match(dn, matches, match) \
>  	for (dn =3D of_find_matching_node_and_match(NULL, matches, match); \
>  	     dn; dn =3D of_find_matching_node_and_match(dn, matches, match))
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
