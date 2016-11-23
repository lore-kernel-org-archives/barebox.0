Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c9U8G-00056w-5c
 for barebox@lists.infradead.org; Wed, 23 Nov 2016 09:46:25 +0000
Date: Wed, 23 Nov 2016 10:46:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161123094602.zsbwt2r4r4q2dryv@pengutronix.de>
References: <20161123075852.20882-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161123075852.20882-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] environment: fix typo
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Nov 23, 2016 at 08:58:52AM +0100, Ulrich =D6lmann wrote:
> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  common/environment.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/common/environment.c b/common/environment.c
> index c9cef6322a06..0edf34b661d9 100644
> --- a/common/environment.c
> +++ b/common/environment.c
> @@ -382,7 +382,7 @@ EXPORT_SYMBOL(envfs_save);
>  static int envfs_check_super(struct envfs_super *super, size_t *size)
>  {
>  	if (ENVFS_32(super->magic) !=3D ENVFS_MAGIC) {
> -		printf("envfs: no envfs (magic mismatch) - envfs newer written?\n");
> +		printf("envfs: no envfs (magic mismatch) - envfs never written?\n");
>  		return -EIO;
>  	}
>  =

> -- =

> 2.10.2
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
