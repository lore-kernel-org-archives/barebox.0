Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9tDt-0001Rj-5N
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 07:43:29 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 048A1FF8802
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 09:51:08 +0200 (CEST)
Date: Fri, 7 Sep 2012 09:43:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120907074348.GO20330@game.jcrosoft.org>
References: <1346960371-4129-1-git-send-email-eric@eukrea.com>
 <1346960371-4129-3-git-send-email-eric@eukrea.com>
 <20120907064419.GL26594@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120907064419.GL26594@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] miidev: fix 1G wrong detection
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:44 Fri 07 Sep     , Sascha Hauer wrote:
> On Thu, Sep 06, 2012 at 09:39:31PM +0200, Eric B=E9nard wrote:
> > since 99e72c8bbdbdc690025a5868d831f1fe79ad56fc on an i.MX51 based board,
> > I get : "phy0: Link is up - 1000/Full". It seems miidev tries to probe
> > the PHY to early and gets 0x3ffff which leads to the wrong capabilities
> > setting.
> > =

> > Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> > ---
> >  drivers/net/miidev.c |   33 +++++++++------------------------
> >  1 files changed, 9 insertions(+), 24 deletions(-)
> > =

> > diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
> > index 75b53e3..e0f9d67 100644
> > --- a/drivers/net/miidev.c
> > +++ b/drivers/net/miidev.c
> > @@ -131,6 +131,14 @@ int miidev_get_status(struct mii_device *mdev)
> >  =

> >  	status =3D ret & BMSR_LSTATUS ? MIIDEV_STATUS_IS_UP : 0;
> >  =

> > +	if (ret & BMSR_ESTATEN) {
> > +		ret =3D mii_read(mdev, mdev->address, MII_ESTATUS);
> > +		if (ret < 0)
> > +			goto err_out;
> > +		if (ret & (ESTATUS_1000_TFULL | ESTATUS_1000_THALF))
> > +			mdev->capabilities =3D MIIDEV_CAPABLE_1000M;
> > +	}
> > +
> >  	ret =3D mii_read(mdev, mdev->address, MII_BMCR);
> >  	if (ret < 0)
> >  		goto err_out;
> > @@ -239,27 +247,8 @@ static struct file_operations miidev_ops =3D {
> >  static int miidev_probe(struct device_d *dev)
> >  {
> >  	struct mii_device *mdev =3D dev->priv;
> > -	int val;
> > -	int caps =3D 0;
> >  =

> > -	val =3D mii_read(mdev, mdev->address, MII_PHYSID1);
> > -	if (val < 0 || val =3D=3D 0xffff)
> > -		goto err_out;
> > -	val =3D mii_read(mdev, mdev->address, MII_PHYSID2);
> > -	if (val < 0 || val =3D=3D 0xffff)
> > -		goto err_out;
> =

> Is the above necessary? This was present before the patch which made the
> regression.
yes the previous patch made a regression

as it expect the mii to be ready at probe vs open before

Best Regards,
J.
> =

> Sascha
> =

> > -	val =3D mii_read(mdev, mdev->address, MII_BMSR);
> > -	if (val < 0)
> > -		goto err_out;
> > -	if (val & BMSR_ESTATEN) {
> > -		val =3D mii_read(mdev, mdev->address, MII_ESTATUS);
> > -		if (val < 0)
> > -			goto err_out;
> > -		if (val & (ESTATUS_1000_TFULL | ESTATUS_1000_THALF))
> > -			caps =3D MIIDEV_CAPABLE_1000M;
> > -	}
> > -
> > -	mdev->capabilities =3D caps;
> > +	mdev->capabilities =3D 0;
> >  	mdev->cdev.name =3D asprintf("phy%d", dev->id);
> >  	mdev->cdev.size =3D 64;
> >  	mdev->cdev.ops =3D &miidev_ops;
> > @@ -268,10 +257,6 @@ static int miidev_probe(struct device_d *dev)
> >  	devfs_create(&mdev->cdev);
> >  	list_add_tail(&mdev->list, &miidev_list);
> >  	return 0;
> > -
> > -err_out:
> > -	dev_err(dev, "cannot read PHY registers (addr %d)\n", mdev->address);
> > -	return -ENODEV;
> >  }
> >  =

> >  static void miidev_remove(struct device_d *dev)
> > -- =

> > 1.7.7.6
> > =

> > =

> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
