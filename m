Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.eckelmann.de ([217.19.183.80])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4laa-0007Ou-2y
 for barebox@lists.infradead.org; Mon, 02 Sep 2019 12:37:45 +0000
From: "Mainz, Roland" <R.Mainz@eckelmann.de>
Date: Mon, 2 Sep 2019 12:37:37 +0000
Message-ID: <c291d2d377014efab82db262f95a0180@eckelmann.de>
References: <7954aa66b7cd4e0583b8f96e6ee3292b@eckelmann.de>
 <20190902120810.kbzeqpxqacn7f57k@pengutronix.de>
In-Reply-To: <20190902120810.kbzeqpxqacn7f57k@pengutronix.de>
Content-Language: de-DE
MIME-Version: 1.0
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
Subject: RE: barebox bug, sh [ -c /dev/nand0.var.ubi.blablablub ] returns
 |true| even if there is no "blablablub" partition on "var" volume
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "Mainz, Roland" <R.Mainz@eckelmann.de>, "customers.eckelmann@pengutronix.de" <customers.eckelmann@pengutronix.de>, "Arne Wichmann
 (arne.wichmann@thinventions.de)" <arne.wichmann@thinventions.de>, =?iso-8859-1?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>





> -----Original Message-----
> From: Sascha Hauer [mailto:s.hauer@pengutronix.de]
> Sent: Monday, September 2, 2019 2:08 PM
> To: Mainz, Roland <R.Mainz@eckelmann.de>
> Cc: customers.eckelmann@pengutronix.de; barebox@lists.infradead.org;
> Arne Wichmann (arne.wichmann@thinventions.de)
> <arne.wichmann@thinventions.de>; Uwe Kleine-K=F6nig <u.kleine-
> koenig@pengutronix.de>
> Subject: Re: barebox bug, sh [ -c /dev/nand0.var.ubi.blablablub ] returns
> |true| even if there is no "blablablub" partition on "var" volume
> =

> Hi Roland,
> =

> On Mon, Sep 02, 2019 at 09:40:26AM +0000, Mainz, Roland wrote:
> >
> > Hi!
> >
> > ----
> >
> > Quick&dirty bug report:
> >
> > - Version: barebox 2018.05.0-20190221-1-EAG_3.00-gf70df96 #1 Mon Sep
> 2
> > 09:03:05 CEST 2019
> > - Hardware: Eckelmann/EAG Quantron
> >
> > barebox:/ ls -l /dev/nand0.var.ubi.blablablub
> > ls: /dev/nand0.var.ubi.blablablub: No such file or directory
> > barebox:/ ls -l /dev/nand0.var.ubi.blablablub
> > ls: /dev/nand0.var.ubi.blablablub: No such file or directory barebox:/
> > if [ -c /dev/nand0.var.ubi.blablablub ] ; then echo wrong ; else echo
> > "right" ; fi wrong barebox:/ if [ -f /dev/nand0.var.ubi.blablablub ] ;
> > then echo wrong ; else echo "right" ; fi right
> =

> barebox doesn't implement -c for test. You'll have to use -e or -f to tes=
t for
> existence.
> Arguably we should throw an error for this unsupported option rather than
> doing something undefined.

Could you *please* implement test(1) -b/-c ? Since barebox ls(1) is able to=
 distinguish files from devices it shouldn't be hard, and there are cases (=
like our update script) where telling the difference between file and devic=
e is important (the alternative is to write hideous workarounds...).

----

Mfg,
Roland Mainz =

-- =

Roland Mainz, MAA/CAS
Eckelmann AG, Berliner Str. 161, 65205 Wiesbaden
Telefon +49/611/7103-661, Fax +49/611/7103-133
r.mainz@eckelmann.de

Eckelmann Group - Source of inspiration

> =

> Sascha
> =

> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
