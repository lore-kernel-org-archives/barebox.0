Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0sJg-0001wN-Cd
 for barebox@lists.infradead.org; Mon, 13 Aug 2012 10:56:13 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id C00D91054DE2
 for <barebox@lists.infradead.org>; Mon, 13 Aug 2012 13:00:47 +0200 (CEST)
Date: Mon, 13 Aug 2012 12:56:18 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120813105618.GO6271@game.jcrosoft.org>
References: <20120812114647.GF6271@game.jcrosoft.org>
 <1344772179-13591-1-git-send-email-plagnioj@jcrosoft.com>
 <20120813070850.GM25520@pengutronix.de>
 <20120813073001.GN6271@game.jcrosoft.org>
 <20120813081657.GO25520@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120813081657.GO25520@pengutronix.de>
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
Subject: Re: [PATCH 1/4] fs/mount: add autodetection type support
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:16 Mon 13 Aug     , Uwe Kleine-K=F6nig wrote:
> On Mon, Aug 13, 2012 at 09:30:01AM +0200, Jean-Christophe PLAGNIOL-VILLAR=
D wrote:
> > On 09:08 Mon 13 Aug     , Uwe Kleine-K=F6nig wrote:
> > > Hello,
> > > =

> > > On Sun, Aug 12, 2012 at 01:49:36PM +0200, Jean-Christophe PLAGNIOL-VI=
LLARD wrote:
> > > > +static const char * detect_fs(const char *filename)
> > > > +{
> > > > +	enum filetype type =3D file_name_detect_type(filename);
> > > > +	struct driver_d *drv;
> > > > +	struct fs_driver_d *fdrv;
> > > > +
> > > > +	if (type =3D=3D filetype_unknown)
> > > > +		return NULL;
> > > > +
> > > > +	for_each_driver(drv) {
> > > > +		fdrv =3D drv_to_fs_driver(drv);
> > > > +
> > > > +		if (drv->bus !=3D &fs_bus)
> > > > +			continue;
> > > > +
> > > > +		if(type =3D=3D fdrv->type)
> > > > +			return drv->name;
> > > fdrv could be local to this loop only.
> > I never declare a var in a loop
> reading over
> =

> 	git log --grep=3Dscope
> =

> in the kernel suggests that at least there it's considered good style.
> With some false hits the list includes:
> =

> 	ccece235d3737221e7a1118fdbd8474112adac84:
> 		Finally, move the definition of the local variable "i"
> 		to the innermost scope in which it's needed.
> 	22a4cca2f4c2d60c703cdc42158c907570f508e6:
> 		Reduced the scope of the loop variable in
> 		e1000e_write_itr().
> 	2c2453f3e46139b86c1e5b0fbd821823b04e4ada:
> 		Patch shortens locals scope ...
> 	74ad8fdaefe6ccb8ef1918394a9d04a036658346:
> 		Shorten scope for iobase
> =

> which all got in after v3.6-rc1.
no sorry I really do not like this

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
