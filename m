Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x241.google.com ([2607:f8b0:4001:c0b::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1faPaV-0005dG-ER
 for barebox@lists.infradead.org; Tue, 03 Jul 2018 17:59:40 +0000
Received: by mail-it0-x241.google.com with SMTP id p185-v6so4397839itp.4
 for <barebox@lists.infradead.org>; Tue, 03 Jul 2018 10:59:29 -0700 (PDT)
MIME-Version: 1.0
References: <20180630034900.3324-1-andrew.smirnov@gmail.com>
 <20180630034900.3324-8-andrew.smirnov@gmail.com>
 <20180702052352.i2h7i2ud5ej3syeb@pengutronix.de>
In-Reply-To: <20180702052352.i2h7i2ud5ej3syeb@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 3 Jul 2018 10:59:16 -0700
Message-ID: <CAHQ1cqG5zN2MgPnoVGMzFAcUFnRr2WvPb_Bm2H=k+An9Dn1n7A@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 07/11] ARM: i.MX: fimware: Add pre-built BL31 ATF blob
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, Jul 1, 2018 at 10:23 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Fri, Jun 29, 2018 at 08:48:56PM -0700, Andrey Smirnov wrote:
> > Running Linux on i.MX8M requires us to use and proerly set up a ARM
> > Trusted Firmware blob. For the sake of convenience, add a pre-built
> > blob to our firmware tree, so it can be used by individual boards.
> >
> > This blob was built using Buildroot:
> >
> >  - commit: 6b02b8210acb18773f2c4b26cfc11d1f9bc4fb88
> >  - defconig: freescale_imx8mqevk_defconfig
> >
> > The resulting file of interest is output/images/bl31.bin
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  firmware/Kconfig            |   3 +++
> >  firmware/Makefile           |   2 ++
> >  firmware/imx/imx8m-bl31.bin | Bin 0 -> 46744 bytes
> >  3 files changed, 5 insertions(+)
> >  create mode 100755 firmware/imx/imx8m-bl31.bin
> >
> > diff --git a/firmware/Kconfig b/firmware/Kconfig
> > index b6449644b..3c5f0c30e 100644
> > --- a/firmware/Kconfig
> > +++ b/firmware/Kconfig
> > @@ -7,4 +7,7 @@ config EXTRA_FIRMWARE_DIR
> >  config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> >               bool
> >
> > +config CONFIG_FIRMWARE_IMX8MQ_ATF
> > +        bool
>
> This superfluous CONFIG_ is added here and removed later.
>

Ugh. Missed this. Will fix in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
