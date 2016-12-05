Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDqtI-0006uN-Te
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 10:53:02 +0000
Date: Mon, 5 Dec 2016 11:49:24 +0100 (CET)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <20161205082919.vbqtltxd43jw4qvj@pengutronix.de>
Message-ID: <alpine.DEB.2.00.1612051145090.13323@blala.de>
References: <1480618503-11376-1-git-send-email-akurz@blala.de>
 <1480671998.17003.37.camel@pengutronix.de>
 <20161205082919.vbqtltxd43jw4qvj@pengutronix.de>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED;
 BOUNDARY="-598520180-1263828847-1480934964=:13323"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] bootm: dont use internal oftree fallback by default
To: =?ISO-8859-15?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---598520180-1263828847-1480934964=:13323
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



On Mon, 5 Dec 2016, Uwe Kleine-K=F6nig wrote:

> On Fri, Dec 02, 2016 at 10:46:38AM +0100, Lucas Stach wrote:
> > Am Donnerstag, den 01.12.2016, 19:55 +0100 schrieb Alexander Kurz:
> > > Booting via bootm offers several methods to load oftree data. When no
> > > dedicated oftree image is provided, barebox checks for the presence of
> > > its own internal oftree, assuming it as a good choice for boot.
> > >=20
> > > This fallback method breaks the usecase when a modern OF-based barebox
> > > is used to boot a legacy ATAG dependent non OF based vendor provided =
kernel
> > > (e.g. ATAGs will be switched off).
> > > Unfortunately those kernels are being still actively shipped today.
> > >=20
> > > Change barebox according to the principle of least surprise: when no
> > > oftree data is proactively configured, then perform a non-oftree boot.
> > > Make the fallback-use of the barebox internal oftree an opt-in featur=
e.
> > >=20
> > > Note: this will break boards where the boot process relied on this fe=
ature,
> > > e.g.: oftree based barebox plus oftree based kernel without an explic=
it
> > > given dts. For those boards global.bootm.internal_oftree_fallback=3D1=
 should
> > > be set.
> > >=20
> > The least surprise on a modern oftree based kernel is that the firmware
> > (Barebox) provides the DT, if there isn't an explicit override.
> >=20
> > So NACK on the patch in it's current form. If you have a board where you
> > know that the kernel doesn't play along, you may reverse this patch so
> > that you can set global.bootm.no_internal_oftree=3D1 in your board code.
>=20
> Ack for the NAck. And AFAIK you can already today just do
>=20
> 	oftree -f
>=20
> before calling bootm to discard the internal dtb which should make
> barebox fall back to ATAG.
After flushing the DT, ATAGs get passed during boot,
this makes my patch obsolete now.

Thank you very much,
Alexander

>=20
> Best regards
> Uwe
>=20
> --=20
> Pengutronix e.K.                           | Uwe Kleine-K=F6nig          =
  |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>=20
---598520180-1263828847-1480934964=:13323
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

---598520180-1263828847-1480934964=:13323--
