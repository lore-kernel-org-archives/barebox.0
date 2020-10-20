Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUrlQ-0002Lr-AL
 for barebox@lists.infradead.org; Tue, 20 Oct 2020 13:33:21 +0000
Date: Tue, 20 Oct 2020 15:33:17 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20201020133317.dc6yt2yt4tyk5ogm@pengutronix.de>
References: <20201020111537.29328-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201020111537.29328-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] usb: i.MX: improve regulator handling
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Uwe,

On 20-10-20 13:15, Uwe Kleine-K=F6nig wrote:
> Instead of just ignoring errors related to regulator getting error out.
> In case there is no regulator in the device tree, regulator_get() returns
> the dummy regulator and not an error code, so the change is right for
> this situation, too.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/usb/imx/chipidea-imx.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-im=
x.c
> index 786beede6d89..dd0e3c1a2a58 100644
> --- a/drivers/usb/imx/chipidea-imx.c
> +++ b/drivers/usb/imx/chipidea-imx.c
> @@ -267,8 +267,11 @@ static int imx_chipidea_probe(struct device_d *dev)
>  	}
>  =

>  	ci->vbus =3D regulator_get(dev, "vbus");
> -	if (IS_ERR(ci->vbus))
> -		ci->vbus =3D NULL;
> +	if (IS_ERR(ci->vbus)) {
> +		ret =3D ERR_PTR(ci->vbus);
> +		dev_err(dev, "Cannot get vbus regulator: %s\n", strerror(-ret));
> +		return ret;

Returning the error here can cause problems with exisiting boards, e.g.
if the regulator support is missing for the specified vbus regulator.
This is often the case since we have very limited regulator support for
now.

Regards,
  Marco

> +	}

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
