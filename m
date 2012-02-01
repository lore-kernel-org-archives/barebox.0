Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RsabL-00019C-Ri
 for barebox@lists.infradead.org; Wed, 01 Feb 2012 13:51:57 +0000
Date: Wed, 1 Feb 2012 14:51:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120201135134.GV1990@pengutronix.de>
References: <1328043068-9577-1-git-send-email-marek.belisko@open-nandra.com>
 <E28AAFD00EFAA646AE3DF9B89CD24A89318237E1@DBDE01.ent.ti.com>
 <CAAfyv35gncmFgiHkqmS6u2so9TcDYM6yodiCw6YAdOARMPwMFw@mail.gmail.com>
 <E28AAFD00EFAA646AE3DF9B89CD24A8931823B1B@DBDE01.ent.ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E28AAFD00EFAA646AE3DF9B89CD24A8931823B1B@DBDE01.ent.ti.com>
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
Subject: Re: [PATCH 1/2] omap: Remove OMAP_GPMC prompt and usage.
To: "Premi, Sanjeev" <premi@ti.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Feb 01, 2012 at 11:05:20AM +0000, Premi, Sanjeev wrote:
> =

> > -----Original Message-----
> > From: Belisko Marek [mailto:marek.belisko@gmail.com] =

> > Sent: Wednesday, February 01, 2012 3:46 PM
> > To: Premi, Sanjeev
> > Cc: barebox@lists.infradead.org
> > Subject: Re: [PATCH 1/2] omap: Remove OMAP_GPMC prompt and usage.
> > =

> > On Wed, Feb 1, 2012 at 10:32 AM, Premi, Sanjeev <premi@ti.com> wrote:
> > >> -----Original Message-----
> > >> From: barebox-bounces@lists.infradead.org
> > >> [mailto:barebox-bounces@lists.infradead.org] On Behalf Of
> > >> Marek Belisko
> > >> Sent: Wednesday, February 01, 2012 2:21 AM
> > >> To: barebox@lists.infradead.org
> > >> Cc: Marek Belisko
> > >> Subject: [PATCH 1/2] omap: Remove OMAP_GPMC prompt and usage.
> > >>
> > >> Build for omap platform by default.
> > >>
> > >> Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
> > >> ---
> > >> =A0arch/arm/boards/beagle/board.c =A0 =A0 =A0 =A0 =A0| =A0 =A04 ++--
> > >> =A0arch/arm/boards/omap343xdsp/board.c =A0 =A0 | =A0 =A02 --
> > >> =A0arch/arm/boards/omap3evm/board.c =A0 =A0 =A0 =A0| =A0 =A03 +--
> > >> =A0arch/arm/boards/phycard-a-l1/pca-a-l1.c | =A0 =A03 ---
> > >> =A0arch/arm/configs/panda_xload_defconfig =A0| =A0 =A01 -
> > >> =A0arch/arm/configs/phycard_a_l1_defconfig | =A0 =A01 -
> > >> =A0arch/arm/mach-omap/Kconfig =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 10 --=
--------
> > >> =A0arch/arm/mach-omap/Makefile =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A03 +--
> > >> =A0drivers/mtd/nand/Kconfig =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0=
1 -
> > >> =A09 files changed, 4 insertions(+), 24 deletions(-)
> > >>
> =

> [snip]...[snip]
> =

> > > The config option helps in reducing the extra code being built into
> > > the "xload" configurations - where the size matters.
> > >
> > > Instead of making this change, I suggest you add this in =

> > the defconfig
> > > for pandaboard:
> > > CONFIG_OMAP_GPMC=3Dy
> > >
> > > It is much smaller change.

Yes, the change is smaller, but we show an option to the user which
he better not changes. It's better to just not ask questions which
have only one reasonable answer.

> > GPMC is common for omap platform so I don't see a benefit to add user
> > possibility to disable it and
> > then make his board un-bootable. Solution was proposed by Sascha :
> > http://www.spinics.net/lists/u-boot-v2/msg05897.html
> =

> I missed this discussion, but if in the early boot stages we aren't
> concerned about the devices on GPMC, then we shouldn't be initializing it.

I generally agree, but we are talking about a few writel here, it
shouldn't add more than a few bytes to the binary.

> =

> I don't have code in front of me, so can't say whether this is the
> case for xload configurations today - but I am assuming this was the
> original intent of having this option.
> =

> On OMAP3EVM, GPMC needs to be configured only if NAND and Ethernet are
> used. Else, the init can easily be skipped.
> =

> In patch 2/2 you mentioned about the kernel crash.
> Can you share the crash log?
> (or point me to a post which already has it)

The right(tm) fix is probably to fix this in the Kernel to not depend
on the bootloader.

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
