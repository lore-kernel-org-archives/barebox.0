Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPY66-0003ex-Sq
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 13:28:44 +0000
Received: from mail190.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 6DCA0DC1C95
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 15:28:21 +0200 (CEST)
Date: Fri, 27 Sep 2013 15:29:40 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130927132940.GH32444@ns203013.ovh.net>
References: <1380283980-5759-1-git-send-email-t.gamez@phytec.de>
 <20130927121920.GA526@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130927121920.GA526@omega>
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
Subject: Re: [PATCH] mci: omap: Fix default value of mci.f_max
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On 14:19 Fri 27 Sep     , Alexander Aring wrote:
> Hi,
> =

> On Fri, Sep 27, 2013 at 02:13:00PM +0200, Teresa G=E1mez wrote:
> > Set default value of mci.f_max even when no pdata
> > is available.
> > =

> > Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> > ---
> >  drivers/mci/omap_hsmmc.c |    4 ++--
> >  1 files changed, 2 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
> > index a2cd3fe..f63697f 100644
> > --- a/drivers/mci/omap_hsmmc.c
> > +++ b/drivers/mci/omap_hsmmc.c
> > @@ -614,11 +614,11 @@ static int omap_mmc_probe(struct device_d *dev)
> >  	if (pdata) {
> >  		if (pdata->f_max)
> >  			hsmmc->mci.f_max =3D pdata->f_max;
> > -		else
> > -			hsmmc->mci.f_max =3D 52000000;
> =

> I think this should stay there for the case if f_max is zero.
> So somebody sets a pdata with devname and no f_max value.
> =

> =

> Maybe you should add a default devname if no pdata is given.
no there is a default devname disk.%d
> =

> - Alex
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
