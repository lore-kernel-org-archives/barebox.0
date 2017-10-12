Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e2gg7-0003Vj-GV
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 16:49:49 +0000
Received: by mail-lf0-x241.google.com with SMTP id n69so6636592lfn.2
 for <barebox@lists.infradead.org>; Thu, 12 Oct 2017 09:49:23 -0700 (PDT)
Date: Thu, 12 Oct 2017 20:01:33 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20171012200133.e29635ee3fb961c12a6650b5@gmail.com>
In-Reply-To: <20170428135727.22c87f114377fac81b1c7a66@gmail.com>
References: <20170426141734.18670-1-antonynpavlov@gmail.com>
 <20170428081848.bvfttqhjhfpewjqi@pengutronix.de>
 <20170428135727.22c87f114377fac81b1c7a66@gmail.com>
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
Subject: Re: [PATCH] mtd: m25p80: make it possible to use 4K erase block
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

On Fri, 28 Apr 2017 13:57:27 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

> On Fri, 28 Apr 2017 10:18:48 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> =

> > On Wed, Apr 26, 2017 at 05:17:34PM +0300, Antony Pavlov wrote:
> > > We already have the MTD_SPI_NOR_USE_4K_SECTORS option handling in C c=
ode
> > > for 4K erase block support. Alas this 4K erase block support code
> > > can't be used because the MTD_SPI_NOR_USE_4K_SECTORS option support
> > > is missed in Kconfig.
> > > =

> > > This patch imports necessary Kconfig MTD_SPI_NOR_USE_4K_SECTORS option
> > > declaration from linux v4.11-rc8.
> > > =

> > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > ---
> > >  drivers/mtd/spi-nor/Kconfig | 14 ++++++++++++++
> > >  1 file changed, 14 insertions(+)
> > > =

> > > diff --git a/drivers/mtd/spi-nor/Kconfig b/drivers/mtd/spi-nor/Kconfig
> > > index a84591fdd1..8ede3c90be 100644
> > > --- a/drivers/mtd/spi-nor/Kconfig
> > > +++ b/drivers/mtd/spi-nor/Kconfig
> > > @@ -7,6 +7,20 @@ menuconfig MTD_SPI_NOR
> > >  =

> > >  if MTD_SPI_NOR
> > >  =

> > > +config MTD_SPI_NOR_USE_4K_SECTORS
> > > +	bool "Use small 4096 B erase sectors"
> > > +	default y
> > =

> > This changes the default which breaks existing UBI users. Can you drop
> > this?
> =

> Yes, we can drop this 'default y'.

ping

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
