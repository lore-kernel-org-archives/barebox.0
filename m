Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RsacE-00022l-1R
 for barebox@lists.infradead.org; Wed, 01 Feb 2012 13:52:51 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Wed, 1 Feb 2012 13:52:46 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A8931823F15@DBDE01.ent.ti.com>
References: <1328043068-9577-1-git-send-email-marek.belisko@open-nandra.com>
 <E28AAFD00EFAA646AE3DF9B89CD24A89318237E1@DBDE01.ent.ti.com>
 <CAAfyv35gncmFgiHkqmS6u2so9TcDYM6yodiCw6YAdOARMPwMFw@mail.gmail.com>
 <E28AAFD00EFAA646AE3DF9B89CD24A8931823B1B@DBDE01.ent.ti.com>
 <CAAfyv37oCFHfd5Z1msWnfxePbE01BXrYHgD0vNi6ix9nbUmCvw@mail.gmail.com>
In-Reply-To: <CAAfyv37oCFHfd5Z1msWnfxePbE01BXrYHgD0vNi6ix9nbUmCvw@mail.gmail.com>
Content-Language: en-US
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: [PATCH 1/2] omap: Remove OMAP_GPMC prompt and usage.
To: Belisko Marek <marek.belisko@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Belisko Marek [mailto:marek.belisko@gmail.com] =

> Sent: Wednesday, February 01, 2012 4:40 PM
> To: Premi, Sanjeev
> Cc: barebox@lists.infradead.org
> Subject: Re: [PATCH 1/2] omap: Remove OMAP_GPMC prompt and usage.
> =

> On Wed, Feb 1, 2012 at 12:05 PM, Premi, Sanjeev <premi@ti.com> wrote:
> >
> >> -----Original Message-----
> >> From: Belisko Marek [mailto:marek.belisko@gmail.com]
> >> Sent: Wednesday, February 01, 2012 3:46 PM
> >> To: Premi, Sanjeev
> >> Cc: barebox@lists.infradead.org
> >> Subject: Re: [PATCH 1/2] omap: Remove OMAP_GPMC prompt and usage.
> >>
> >> On Wed, Feb 1, 2012 at 10:32 AM, Premi, Sanjeev =

> <premi@ti.com> wrote:
> >> >> -----Original Message-----
> >> >> From: barebox-bounces@lists.infradead.org
> >> >> [mailto:barebox-bounces@lists.infradead.org] On Behalf Of
> >> >> Marek Belisko
> >> >> Sent: Wednesday, February 01, 2012 2:21 AM
> >> >> To: barebox@lists.infradead.org
> >> >> Cc: Marek Belisko
> >> >> Subject: [PATCH 1/2] omap: Remove OMAP_GPMC prompt and usage.
> >> >>
> >> >> Build for omap platform by default.
> >> >>
> >> >> Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
> >> >> ---
> >> >> =A0arch/arm/boards/beagle/board.c =A0 =A0 =A0 =A0 =A0| =A0 =A04 ++--
> >> >> =A0arch/arm/boards/omap343xdsp/board.c =A0 =A0 | =A0 =A02 --
> >> >> =A0arch/arm/boards/omap3evm/board.c =A0 =A0 =A0 =A0| =A0 =A03 +--
> >> >> =A0arch/arm/boards/phycard-a-l1/pca-a-l1.c | =A0 =A03 ---
> >> >> =A0arch/arm/configs/panda_xload_defconfig =A0| =A0 =A01 -
> >> >> =A0arch/arm/configs/phycard_a_l1_defconfig | =A0 =A01 -
> >> >> =A0arch/arm/mach-omap/Kconfig =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 10 -=
---------
> >> >> =A0arch/arm/mach-omap/Makefile =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A03 +=
--
> >> >> =A0drivers/mtd/nand/Kconfig =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =
=A01 -
> >> >> =A09 files changed, 4 insertions(+), 24 deletions(-)
> >> >>
> >
> > [snip]...[snip]
> >
> >> > The config option helps in reducing the extra code being =

> built into
> >> > the "xload" configurations - where the size matters.
> >> >
> >> > Instead of making this change, I suggest you add this in
> >> the defconfig
> >> > for pandaboard:
> >> > CONFIG_OMAP_GPMC=3Dy
> >> >
> >> > It is much smaller change.
> >> GPMC is common for omap platform so I don't see a benefit =

> to add user
> >> possibility to disable it and
> >> then make his board un-bootable. Solution was proposed by Sascha :
> >> http://www.spinics.net/lists/u-boot-v2/msg05897.html
> >
> > I missed this discussion, but if in the early boot stages we aren't
> > concerned about the devices on GPMC, then we shouldn't be =

> initializing it.
> >
> > I don't have code in front of me, so can't say whether this is the
> > case for xload configurations today - but I am assuming this was the
> > original intent of having this option.
> >
> > On OMAP3EVM, GPMC needs to be configured only if NAND and =

> Ethernet are
> > used. Else, the init can easily be skipped.
> >
> > In patch 2/2 you mentioned about the kernel crash.
> > Can you share the crash log?
> > (or point me to a post which already has it)
> Crash is here:
> http://www.spinics.net/lists/u-boot-v2/msg05887.html

I can't be very certain without trying, but I suspect
that the crash is due the BUG() in this snippet =

[function gpmc_mem_init]:

        /* Reserve all regions that has been set up by bootloader */
        for (cs =3D 0; cs < GPMC_CS_NUM; cs++) {
                u32 base, size;

                if (!gpmc_cs_mem_enabled(cs))
                        continue;
                gpmc_cs_get_memconf(cs, &base, &size);
                if (gpmc_cs_insert_mem(cs, base, size) < 0)
                        BUG();
        }

In barebox, gpmc_generic_init(0x00) is makes GPMC_CONFIG
as 0x00 and sets GPMC_CONFIG7_i (i =3D 0 to 7) as 0x00
making CS0 "disabled" - which is enabled on reset for OMAP3
(expect same for OMAP4 as well). All other CS are "disabled"
on reset.

This disables CS0 as well, making gpmc_cs_mem_enabled(cs)
return false. (May be expected for Pandaboard).

If so, I still feel, the code could easily be left out from
the xload configs. But if it has to included, 136 bytes from
gpmc.o may not be as big penalty.

~sanjeev


> >
> > ~sanjeev
> >
> >>
> >> >
> >> > ~sanjeev
> >> >
> >> >> 1.7.5.4
> >> >>
> >> >>
> >> >> _______________________________________________
> >> >> barebox mailing list
> >> >> barebox@lists.infradead.org
> >> >> http://lists.infradead.org/mailman/listinfo/barebox
> >> >>
> >>
> >> regards,
> >>
> >> marek
> >>
> >> --
> >> as simple and primitive as possible
> >> -------------------------------------------------
> >> Marek Belisko - OPEN-NANDRA
> >> Freelance Developer
> >>
> >> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> >> Tel: +421 915 052 184
> >> skype: marekwhite
> >> twitter: #opennandra
> >> web: http://open-nandra.com
> >>
> =

> marek
> =

> -- =

> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
> =

> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
> =

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
