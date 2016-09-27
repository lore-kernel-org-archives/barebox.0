Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bopVR-0001JE-0y
 for barebox@lists.infradead.org; Tue, 27 Sep 2016 10:20:58 +0000
Received: by mail-lf0-x242.google.com with SMTP id l131so1559912lfl.0
 for <barebox@lists.infradead.org>; Tue, 27 Sep 2016 03:20:36 -0700 (PDT)
Date: Tue, 27 Sep 2016 13:24:31 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160927132431.404514747b5951608fe05389@gmail.com>
In-Reply-To: <20160927095919.3461-1-l.stach@pengutronix.de>
References: <20160927095919.3461-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/2] mfd: syscon: fix exported symbol name
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 27 Sep 2016 11:59:18 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/mfd/syscon.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> =

> diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
> index 295e210f6e2d..9f8baee1aadf 100644
> --- a/drivers/mfd/syscon.c
> +++ b/drivers/mfd/syscon.c
> @@ -76,8 +76,7 @@ static void __iomem *syscon_node_to_base(struct device_=
node *np)
                    ^^^^^^

Hmm. In the current next and master branches syscon_node_to_base() is a sta=
tic function.
Can we just drop this EXPORT_SYMBOL_GPL()?

>  	return syscon->base;
>  }
> -EXPORT_SYMBOL_GPL(syscon_node_to_regmap);
> -
> +EXPORT_SYMBOL_GPL(syscon_node_to_base);
>  =

>  void __iomem *syscon_base_lookup_by_pdevname(const char *s)
>  {
> -- =

> 2.9.3
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
