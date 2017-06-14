Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dL8Kw-0001j6-Ga
 for barebox@lists.infradead.org; Wed, 14 Jun 2017 13:27:56 +0000
Date: Wed, 14 Jun 2017 15:27:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170614132732.r2fywkiouttkuur2@pengutronix.de>
References: <20170614113110.21604-1-u.kleine-koenig@pengutronix.de>
 <20170614113110.21604-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170614113110.21604-2-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 2/2] of_device_is_stdout_path: split off options and
 support aliases
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 14, 2017 at 01:31:10PM +0200, Uwe Kleine-K=F6nig wrote:
> Several device trees use something like:
> =

> 	stdout-path =3D "serial0:115200n8";
> =

> Currently of_device_is_stdout_path fails to do the right thing here
> because it expects an absolute node path and no options. So split off
> options (everything after the colon) and resolve aliases.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/of/base.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 592ebb015a73..e401c11a878f 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1999,6 +1999,7 @@ int of_device_is_stdout_path(struct device_d *dev)
>  {
>  	struct device_node *dn;
>  	const char *name;
> +	char *q;
>  =

>  	if (!dev->device_node)
>  		return 0;
> @@ -2010,7 +2011,16 @@ int of_device_is_stdout_path(struct device_d *dev)
>  	if (!name)
>  		return 0;
>  =

> -	dn =3D of_find_node_by_path(name);
> +	/* This could make use of strchrnul it it were available */

s/it it/if it/

> +	q =3D strchr(name, ':');

This results in:

drivers/of/base.c:2017:4: warning: assignment discards 'const' qualifier fr=
om pointer target type

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
