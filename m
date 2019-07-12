Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hloqi-0002vS-Tw
 for barebox@lists.infradead.org; Fri, 12 Jul 2019 06:16:06 +0000
Date: Fri, 12 Jul 2019 08:16:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190712061601.cbikavai3zac2pkw@pengutronix.de>
References: <1562757455-445159-1-git-send-email-s.riedmueller@phytec.de>
 <20190711064307.lbnenmog7qwbzu3a@pengutronix.de>
 <7a2bd530-e2fb-ab56-9a9b-b47ce469a1ae@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7a2bd530-e2fb-ab56-9a9b-b47ce469a1ae@phytec.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/8] ARM: phytec-som-imx6: Add low cost variant for
 imx6dl phycore
To: Stefan =?iso-8859-15?Q?Riedm=FCller?= <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 11, 2019 at 12:07:08PM +0200, Stefan Riedm=FCller wrote:
> Hi Sascha,
> =

> > Hi Stefan,
> > =

> > On Wed, Jul 10, 2019 at 01:17:28PM +0200, Stefan Riedmueller wrote:
> > >   PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_nand_256mb, imx6dl_phy=
tec_phycore_som_nand, SZ_256M, true);
> > > +PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_lc_nand_256mb, imx6dl_p=
hytec_phycore_som_lc_nand, SZ_256M, true);
> > >   PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_nand_1gib, imx6dl_phyt=
ec_phycore_som_nand, SZ_1G, true);
> > >   PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_emmc_1gib, imx6dl_phyt=
ec_phycore_som_emmc, SZ_1G, true);
> > > +PHYTEC_ENTRY(start_phytec_phycore_imx6dl_som_lc_emmc_1gib, imx6dl_ph=
ytec_phycore_som_lc_emmc, SZ_1G, true);
> > >   PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_nand_1gib, imx6q_phytec=
_phycore_som_nand, SZ_1G, true);
> > >   PHYTEC_ENTRY(start_phytec_phycore_imx6qp_som_nand_1gib, imx6qp_phyt=
ec_phycore_som_nand, SZ_1G, true);
> > >   PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_1gib, imx6q_phytec=
_phycore_som_emmc, SZ_1G, true);
> > =

> > I am a bit worried that with this series the combinatoric explosion of
> > the Phytec boards goes into another round. For some reason the lowcost
> > NAND version has 256MiB SDRAM and the eMMC version has 1GiB SDRAM. I
> > guess different combinations are not supported because you haven't
> > produced them yet, but they might appear sooner or later. Even now it is
> > really hard to pick a board from the shelf and find the right barebox
> > binary for it. Do you have any ideas/plans to improve this?
> =

> I agree and I don't like the amount of images much either. We already had
> some discussions here about this but did not find a satisfying solution y=
et.
> =

> > =

> > It seems all boards have EEPROMs. Wouldn't it be an option to store some
> > information there?
> =

> The problem here is that the EEPROM is an option and there are SOMs out
> there which do not have it (people try to save money where ever they can).
> There are plans to make use of the EEPROM but they probably won't affect =
the
> i.MX 6 for reasons I just mentioned.

Perhaps we can put defaults for some values into Kconfig and overwrite
these values from the EEPROM if it exists. The Kconfig values could be
sane defaults to be used when the EEPROM is empty or doesn't exist.
Those who don't have an EEPROM must adjust the Kconfig settings then.

> =

> > =

> > Another point is: Do we really need image variants for eMMC and NAND? In
> > the end the drivers detect automatically if one or the other is equipped
> > on the board.
> =

> There is also a problem here as both options share some pins. So pinmuxing
> would still be something to take care of.

Oh, I see. MX6QDL_PAD_SD4_CMD and MX6QDL_PAD_SD4_CLK are shared between
NAND and eMMC. I thought that both devices are present in the device
tree and thus don't have any conflicting pins. That is wrong of course.

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
