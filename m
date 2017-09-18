Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dtrMv-0007Tr-Bx
 for barebox@lists.infradead.org; Mon, 18 Sep 2017 08:25:35 +0000
Received: by mail-lf0-x241.google.com with SMTP id h80so4117137lfe.1
 for <barebox@lists.infradead.org>; Mon, 18 Sep 2017 01:25:08 -0700 (PDT)
Date: Mon, 18 Sep 2017 11:36:48 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20170918113648.060d621526d832c3b8c03466@gmail.com>
In-Reply-To: <20170918064103.vnbr2lctmzo335mt@pengutronix.de>
References: <20170914082509.23583-1-linux@rempel-privat.de>
 <20170918064103.vnbr2lctmzo335mt@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 00/10] provide ethernet support for ar9344 and ar9331
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>

On Mon, 18 Sep 2017 08:41:03 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Thu, Sep 14, 2017 at 10:24:59AM +0200, Oleksij Rempel wrote:
> > changes v3:
> >  - ag71xx_ether_halt had wrong timeout test.
> >  - ag71xx_ether_init should return 0
> > =

> > changes v2:
> >  - merge all ag71xx in to one patch
> >  - make sere all new driver use dev_* instead of printk
> >  - rework miibus functions.
> >  - use it_timedout instead of own implementation
> >  - add comments to the patches.
> > =

> > Oleksij Rempel (9):
> >   add ar9331.dtsi and enable mac0
> >   MIPS: dts: ar9344: add mac0 node
> >   MIPS: dts: tl_wdr4300: enable mac0
> >   MIPS: dts: tl_wdr4300: add alias for spiflash
> >   MIPS: dts: tl_wdr4300: remove RO flag from barebox partition
> >   add phy: ar8327 driver


'add phy: ar8327 driver' -> 'phy: add ar8327 driver' ?



> >   MIPS: dts: tl_wdr4300: rename it to tl_wdr4300 v1.7
> >   MIPS: tplink-wdr4300_defconfig: add network support
> >   MIPS: dts: ar9344: add APB bus
> > =

> > Yegor Yefremov (1):
> >   net: ath79: add ag71xx Ethernet driver
> =

> Applied, thanks
> =

> Sascha
> =

> > =

> >  arch/mips/configs/tplink-wdr4300_defconfig         |  12 +-
> >  arch/mips/dts/ar9331.dtsi                          |  12 +
> >  ...4_tl_wdr4300.dts =3D> ar9344-tl-wdr4300-v1.7.dts} |  10 +-
> >  arch/mips/dts/ar9344.dtsi                          |  44 +-
> >  arch/mips/dts/tplink-mr3020.dts                    |   5 +
> >  arch/mips/mach-ath79/include/mach/ar71xx_regs.h    |  12 +
> >  drivers/net/Kconfig                                |   7 +
> >  drivers/net/Makefile                               |   1 +
> >  drivers/net/ag71xx.c                               | 673 +++++++++++++=
++++++++
> >  drivers/net/phy/Kconfig                            |   5 +
> >  drivers/net/phy/Makefile                           |   1 +
> >  drivers/net/phy/ar8327.c                           | 280 +++++++++
> >  12 files changed, 1042 insertions(+), 20 deletions(-)
> >  create mode 100644 arch/mips/dts/ar9331.dtsi
> >  rename arch/mips/dts/{ar9344_tl_wdr4300.dts =3D> ar9344-tl-wdr4300-v1.=
7.dts} (85%)
> >  create mode 100644 drivers/net/ag71xx.c
> >  create mode 100644 drivers/net/phy/ar8327.c
> > =

> > -- =

> > 2.11.0
> > =

> > =

> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > =

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


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
