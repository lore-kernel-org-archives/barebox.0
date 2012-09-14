Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCPwB-0008Be-IB
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 07:03:40 +0000
Date: Fri, 14 Sep 2012 09:03:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120914070332.GU24458@pengutronix.de>
References: <1346960371-4129-1-git-send-email-eric@eukrea.com>
 <1346960371-4129-3-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346960371-4129-3-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] miidev: fix 1G wrong detection
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 06, 2012 at 09:39:31PM +0200, Eric B=E9nard wrote:
> since 99e72c8bbdbdc690025a5868d831f1fe79ad56fc on an i.MX51 based board,
> I get : "phy0: Link is up - 1000/Full". It seems miidev tries to probe
> the PHY to early and gets 0x3ffff which leads to the wrong capabilities
> setting.
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Applied to master.

Thanks
 Sascha

> ---
>  drivers/net/miidev.c |   33 +++++++++------------------------
>  1 files changed, 9 insertions(+), 24 deletions(-)
> =

> diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
> index 75b53e3..e0f9d67 100644
> --- a/drivers/net/miidev.c
> +++ b/drivers/net/miidev.c
> @@ -131,6 +131,14 @@ int miidev_get_status(struct mii_device *mdev)
>  =

>  	status =3D ret & BMSR_LSTATUS ? MIIDEV_STATUS_IS_UP : 0;
>  =

> +	if (ret & BMSR_ESTATEN) {
> +		ret =3D mii_read(mdev, mdev->address, MII_ESTATUS);
> +		if (ret < 0)
> +			goto err_out;
> +		if (ret & (ESTATUS_1000_TFULL | ESTATUS_1000_THALF))
> +			mdev->capabilities =3D MIIDEV_CAPABLE_1000M;
> +	}
> +
>  	ret =3D mii_read(mdev, mdev->address, MII_BMCR);
>  	if (ret < 0)
>  		goto err_out;
> @@ -239,27 +247,8 @@ static struct file_operations miidev_ops =3D {
>  static int miidev_probe(struct device_d *dev)
>  {
>  	struct mii_device *mdev =3D dev->priv;
> -	int val;
> -	int caps =3D 0;
>  =

> -	val =3D mii_read(mdev, mdev->address, MII_PHYSID1);
> -	if (val < 0 || val =3D=3D 0xffff)
> -		goto err_out;
> -	val =3D mii_read(mdev, mdev->address, MII_PHYSID2);
> -	if (val < 0 || val =3D=3D 0xffff)
> -		goto err_out;
> -	val =3D mii_read(mdev, mdev->address, MII_BMSR);
> -	if (val < 0)
> -		goto err_out;
> -	if (val & BMSR_ESTATEN) {
> -		val =3D mii_read(mdev, mdev->address, MII_ESTATUS);
> -		if (val < 0)
> -			goto err_out;
> -		if (val & (ESTATUS_1000_TFULL | ESTATUS_1000_THALF))
> -			caps =3D MIIDEV_CAPABLE_1000M;
> -	}
> -
> -	mdev->capabilities =3D caps;
> +	mdev->capabilities =3D 0;
>  	mdev->cdev.name =3D asprintf("phy%d", dev->id);
>  	mdev->cdev.size =3D 64;
>  	mdev->cdev.ops =3D &miidev_ops;
> @@ -268,10 +257,6 @@ static int miidev_probe(struct device_d *dev)
>  	devfs_create(&mdev->cdev);
>  	list_add_tail(&mdev->list, &miidev_list);
>  	return 0;
> -
> -err_out:
> -	dev_err(dev, "cannot read PHY registers (addr %d)\n", mdev->address);
> -	return -ENODEV;
>  }
>  =

>  static void miidev_remove(struct device_d *dev)
> -- =

> 1.7.7.6
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
