Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0mb0-00037h-Hl
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 10:12:24 +0000
Received: by mail-lf0-x243.google.com with SMTP id i3so1928025lfh.2
 for <barebox@lists.infradead.org>; Wed, 19 Apr 2017 03:12:01 -0700 (PDT)
Date: Wed, 19 Apr 2017 13:20:26 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20170419132026.5ac56ed0b7fc52b8ad61477d@gmail.com>
In-Reply-To: <20170417104210.8196-3-antonynpavlov@gmail.com>
References: <20170417104210.8196-1-antonynpavlov@gmail.com>
 <20170417104210.8196-3-antonynpavlov@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 2/2] of: base: of_new_property(): use xstrdup() instead
 of strdup()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 17 Apr 2017 13:42:10 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

> At the moment of_new_property() uses xfunctions for memory
> allocation so we can use xstrdup() instead of strdup()
> for code simplification.
> =

> A side effect of this commmit is that
> the of_new_property() function can't return NULL
> anymore if CONFIG_OFTREE is set.

If of_new_property() can't return NULL we can skip all numerous
checks after of_new_property() call. So the checks are actual only
if CONFIG_OFTREE isn't set.

Have you any sugestions on removing of_new_property() return value checks?


> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/of/base.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> =

> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 1161ce9793..c9bdd91810 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1802,12 +1802,7 @@ struct property *of_new_property(struct device_nod=
e *node, const char *name,
>  	struct property *prop;
>  =

>  	prop =3D xzalloc(sizeof(*prop));
> -	prop->name =3D strdup(name);
> -	if (!prop->name) {
> -		free(prop);
> -		return NULL;
> -	}
> -
> +	prop->name =3D xstrdup(name);
>  	prop->length =3D len;
>  	prop->value =3D xzalloc(len);
>  =

> -- =

> 2.11.0
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
