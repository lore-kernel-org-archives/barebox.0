Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMni-0003uB-8M
 for barebox@lists.infradead.org; Wed, 20 May 2020 11:22:23 +0000
Date: Wed, 20 May 2020 13:22:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200520112216.GD11869@pengutronix.de>
References: <20200520064644.22838-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520064644.22838-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] password: don't export read_default_passwd()
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, May 20, 2020 at 08:46:44AM +0200, Uwe Kleine-K=F6nig wrote:
> This function is used only in common/password.c itself, so it doesn't
> need to be exported.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  common/password.c | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/common/password.c b/common/password.c
> index a2a9c4cd6caf..e5a333d9b19e 100644
> --- a/common/password.c
> +++ b/common/password.c
> @@ -179,7 +179,6 @@ static int read_default_passwd(unsigned char *sum, si=
ze_t length)
>  =

>  	return 0;
>  }
> -EXPORT_SYMBOL(read_default_passwd);
>  =

>  static int read_env_passwd(unsigned char *sum, size_t length)
>  {
> -- =

> 2.26.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
