Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UQhk6-0000Yi-6Y
 for barebox@lists.infradead.org; Fri, 12 Apr 2013 17:26:32 +0000
Date: Fri, 12 Apr 2013 19:26:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130412172626.GU1906@pengutronix.de>
References: <1365324537-23090-1-git-send-email-shc_work@mail.ru>
 <20130409100345.327f1f7c@e6520eb>
 <1365519925.926164842@f101.mail.ru>
 <1365762969.191898774@f250.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365762969.191898774@f250.mail.ru>
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
Subject: Re: [PATCH 2/2] ARM: i.MX: Update MX51 iomux definitions
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Apr 12, 2013 at 02:36:09PM +0400, Alexander Shiyan wrote:
> > > Le Tue, 09 Apr 2013 12:01:51 +0400,
> > > Alexander Shiyan <shc_work@mail.ru> a =E9crit :
> > > =

> > > > > > > On Sun, Apr 07, 2013 at 12:48:57PM +0400, Alexander Shiyan wr=
ote:
> > > > > > > > The patch updates MX51 iomux definitions from kernel.
> > > > > > > > =

> > > > > > > > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > > > > > > =

> > > > > > > This patch effectively reverts:
> > > > > > > =

> > > > > > > commit 298d15571da8d1cb71e7fd87cc53cad3b2bf1d12
> > > > > > > Author: Eric B=E9nard <eric@eukrea.com>
> > > > > > > Date:   Thu Sep 6 21:39:30 2012 +0200
> > > > > > > =

> > > > > > >     i.MX51: unbreak FEC iomux
> > > > > > >     =

> > > > > > >     in commit 2bdc9f57a86dff41cfc1f87b644a2e53fdcce2b6 the io=
mux was synced
> > > > > > >     with the kernel but this leads to some changes in the PAD=
_CTRL of some
> > > > > > >     FEC pins leading to a non working FEC on our cpuimx51 boa=
rd.
> > > > > > >     =

> > > > > > >     This patch set back the PAD_CTRL of the missing pins to t=
he initial
> > > > > > >     value.
> > > > > > >     =

> > > > > > >     Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> > > > > > >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > > > =

> > > > > > > You shouldn't do this.
> > > > > > =

> > > > > > What about write a patch for the kernel for this?
> > > > > =

> > > > > By the time I applied Erics patch I considered the days of the
> > > > > traditional iomux support in the kernel counted. From that day on
> > > > > we have to maintain our own versions anyway.
> > > > =

> > > > OK. Maybe as temporary solution we can define eukrea_cpuimx51 FEC
> > > > pins with NEW_PAD_CTRL macro? If so, I'll create a patch for this.
> > > > This will keep iomux-mx51.h file synced.
> > > > =

> > > Fine for me. Do you have a problem with these pads setting so that you
> > > need to revert the change ?
> > So, below is a temporary fixup.
> > =

> > From 47d0d7b9c0355ba31e4c563891b2e9159dc07533 Mon Sep 17 00:00:00 2001
> > From: Alexander Shiyan <shc_work@mail.ru>
> > Date: Tue, 9 Apr 2013 19:01:40 +0400
> > Subject: [PATCH] ARM: cpuimx51: Fix PAD_CTRLs for FEC
> > =

> > =

> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> > =

> > diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/a=
rm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
> > index 5e77f90..523a805 100644
> > --- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
> > +++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
> > @@ -55,23 +55,23 @@ static iomux_v3_cfg_t eukrea_cpuimx51_pads[] =3D {
> >  	MX51_PAD_UART1_RTS__UART1_RTS,
> >  	MX51_PAD_UART1_CTS__UART1_CTS,
> >  	/* FEC */
> > -	MX51_PAD_DISP2_DAT1__FEC_RX_ER,
> > +	NEW_PAD_CTRL(MX51_PAD_DISP2_DAT1__FEC_RX_ER, MX51_PAD_CTRL_5),
> >  	MX51_PAD_DISP2_DAT15__FEC_TDATA0,
> >  	MX51_PAD_DISP2_DAT6__FEC_TDATA1,
> >  	MX51_PAD_DISP2_DAT7__FEC_TDATA2,
> >  	MX51_PAD_DISP2_DAT8__FEC_TDATA3,
> >  	MX51_PAD_DISP2_DAT9__FEC_TX_EN,
> > -	MX51_PAD_DISP2_DAT10__FEC_COL,
> > -	MX51_PAD_DISP2_DAT11__FEC_RX_CLK,
> > -	MX51_PAD_DISP2_DAT12__FEC_RX_DV,
> > +	NEW_PAD_CTRL(MX51_PAD_DISP2_DAT10__FEC_COL, MX51_PAD_CTRL_5),
> > +	NEW_PAD_CTRL(MX51_PAD_DISP2_DAT11__FEC_RX_CLK, MX51_PAD_CTRL_5),
> > +	NEW_PAD_CTRL(MX51_PAD_DISP2_DAT12__FEC_RX_DV, MX51_PAD_CTRL_5),
> >  	MX51_PAD_DISP2_DAT13__FEC_TX_CLK,
> >  	MX51_PAD_DI2_PIN4__FEC_CRS,
> >  	MX51_PAD_DI2_PIN2__FEC_MDC,
> > -	MX51_PAD_DI2_PIN3__FEC_MDIO,
> > +	NEW_PAD_CTRL(MX51_PAD_DI2_PIN3__FEC_MDIO, MX51_PAD_CTRL_5),
> >  	MX51_PAD_DISP2_DAT14__FEC_RDATA0,
> >  	MX51_PAD_DI2_DISP_CLK__FEC_RDATA1,
> > -	MX51_PAD_DI_GP4__FEC_RDATA2,
> > -	MX51_PAD_DISP2_DAT0__FEC_RDATA3,
> > +	NEW_PAD_CTRL(MX51_PAD_DI_GP4__FEC_RDATA2, MX51_PAD_CTRL_5),
> > +	NEW_PAD_CTRL(MX51_PAD_DISP2_DAT0__FEC_RDATA3, MX51_PAD_CTRL_5),
> >  	MX51_PAD_DI_GP3__FEC_TX_ER,
> >  	MX51_PAD_EIM_DTACK__GPIO2_31, /* LAN8700 reset pin */
> >  	/* NAND */
> > -- =

> > 1.8.1.5
> > =

> > ---
> =

> ping

Applied this one and then the original series.

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
