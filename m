Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0p62-0000LF-Uv
 for barebox@lists.infradead.org; Mon, 13 Aug 2012 07:29:55 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 6F57F1054BDC
 for <barebox@lists.infradead.org>; Mon, 13 Aug 2012 09:34:31 +0200 (CEST)
Date: Mon, 13 Aug 2012 09:30:01 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120813073001.GN6271@game.jcrosoft.org>
References: <20120812114647.GF6271@game.jcrosoft.org>
 <1344772179-13591-1-git-send-email-plagnioj@jcrosoft.com>
 <20120813070850.GM25520@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120813070850.GM25520@pengutronix.de>
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

On 09:08 Mon 13 Aug     , Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> On Sun, Aug 12, 2012 at 01:49:36PM +0200, Jean-Christophe PLAGNIOL-VILLAR=
D wrote:
> > +static const char * detect_fs(const char *filename)
> > +{
> > +	enum filetype type =3D file_name_detect_type(filename);
> > +	struct driver_d *drv;
> > +	struct fs_driver_d *fdrv;
> > +
> > +	if (type =3D=3D filetype_unknown)
> > +		return NULL;
> > +
> > +	for_each_driver(drv) {
> > +		fdrv =3D drv_to_fs_driver(drv);
> > +
> > +		if (drv->bus !=3D &fs_bus)
> > +			continue;
> > +
> > +		if(type =3D=3D fdrv->type)
> > +			return drv->name;
> fdrv could be local to this loop only.
I never declare a var in a loop

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
