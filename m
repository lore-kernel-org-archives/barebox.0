Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsVR4-0007nc-9Y
 for barebox@lists.infradead.org; Wed, 13 May 2015 12:06:50 +0000
Date: Wed, 13 May 2015 14:06:26 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20150513120626.GN28888@pengutronix.de>
References: <1431511952-32124-1-git-send-email-mkl@pengutronix.de>
 <1431511952-32124-7-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1431511952-32124-7-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 7/7] state: return -EPROBE_DEFER if the backend isn't
 available
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

On Wed, May 13, 2015 at 12:12:32PM +0200, Marc Kleine-Budde wrote:
> From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
BTW, I didn't add this S-o-b on purpose because I didn't consider this
patch done.

> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  drivers/misc/state.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/misc/state.c b/drivers/misc/state.c
> index 9e8a40255348..dbe88715a103 100644
> --- a/drivers/misc/state.c
> +++ b/drivers/misc/state.c
> @@ -52,6 +52,8 @@ static int state_probe(struct device_d *dev)
>  	/* guess if of_path is a path, not a phandle */
>  	if (of_path[0] =3D=3D '/') {
>  		ret =3D of_find_path(np, "backend", &path, 0);
> +		if (ret =3D=3D -ENODEV)
> +			ret =3D -EPROBE_DEFER;
>  		if (ret)
>  			goto out_release;
>  	} else {
In my testcase I only use this hunk.

> @@ -66,7 +68,7 @@ static int state_probe(struct device_d *dev)
>  =

>  		dev =3D of_find_device_by_node(partition_node);
>  		if (!list_is_singular(&dev->cdevs)) {
> -			ret =3D -ENODEV;
> +			ret =3D -EPROBE_DEFER;
>  			goto out_release;
>  		}
This one was done without testing, there is another if below that might
need adaption too (or instead of this one):

                cdev =3D list_first_entry(&dev->cdevs, struct cdev, devices=
_list);
                if (!cdev) {
                        ret =3D -ENODEV;
                        goto out_release;
                }

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
