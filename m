Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XlCIr-0007YX-Fs
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 07:43:54 +0000
Date: Mon, 3 Nov 2014 08:43:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141103074331.GB14443@pengutronix.de>
References: <1414670572-43351-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1414670572-43351-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [For next PATCH 1/3] of: Add of_register_disabled_device functions
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 30, 2014 at 01:02:50PM +0100, Teresa G=E1mez wrote:
> Function to enable and register a disabled device.
> The devices can be registered using the
> device node with of_register_disabled_device() or
> with the device node name/path by using the
> of_register_disabled_device_by_name() function.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  drivers/of/platform.c | 43 +++++++++++++++++++++++++++++++++++++++++++
>  include/of.h          | 14 ++++++++++++++
>  2 files changed, 57 insertions(+)
> =

> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> index c417cfd..e4a3042 100644
> --- a/drivers/of/platform.c
> +++ b/drivers/of/platform.c
> @@ -197,6 +197,49 @@ static struct device_d *of_platform_device_create(st=
ruct device_node *np,
>  	return NULL;
>  }
>  =

> +/**
> + * of_register_disabled_device - Enable and register device
> + * @np: pointer to node to enable create device for
> + *
> + * Returns pointer to created platform device, or NULL if a device was n=
ot
> + * registered. Unavailable devices will not get registered.
> + */
> +struct device_d *of_register_disabled_device(struct device_node *np)

We don't register a disabled device, so can we rename this to
of_device_enable_and_register?

> +{
> +	struct device_d *dev;
> +
> +	of_device_enable(np);
> +
> +	dev =3D of_platform_device_create(np, NULL);
> +	if (!dev)
> +		return NULL;
> +
> +	return dev;
> +}
> +EXPORT_SYMBOL(of_register_disabled_device);
> +
> +/**
> + * of_register_disabled_device - Enable and register device by name
> + * @name: name or path of the device node

The function name is wrong here.

> + *
> + * Returns pointer to created platform device, or NULL if a device was n=
ot
> + * registered. Unavailable devices will not get registered.
> + */
> +struct device_d *of_register_disabled_device_by_name(const char *name)

of_device_enable_and_register_by_name

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
