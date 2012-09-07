Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo5.mail-out.ovh.net ([178.32.96.204]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9szS-0000er-Ux
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 07:28:36 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id EC5C6FF9FD1
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 09:33:56 +0200 (CEST)
Date: Fri, 7 Sep 2012 09:28:30 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120907092830.63416f87@eb-e6520>
In-Reply-To: <20120907064419.GL26594@pengutronix.de>
References: <1346960371-4129-1-git-send-email-eric@eukrea.com>
 <1346960371-4129-3-git-send-email-eric@eukrea.com>
 <20120907064419.GL26594@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] miidev: fix 1G wrong detection
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Le Fri, 7 Sep 2012 08:44:19 +0200,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :

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
> =

well there is no interest as we don't check the value read (and in the
present case I also get 0x3ffff here).

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
