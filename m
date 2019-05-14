Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr780088.outbound.protection.outlook.com
 ([40.107.78.88] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQXWI-0008Pq-Nm
 for barebox@lists.infradead.org; Tue, 14 May 2019 13:31:04 +0000
From: Cory Tusar <Cory.Tusar@zii.aero>
Date: Tue, 14 May 2019 13:30:57 +0000
Message-ID: <20190514133054.GA13606@zii.aero>
References: <20190513235944.19307-1-andrew.smirnov@gmail.com>
 <20190514113226.eon3i5irb5btxtjm@pengutronix.de>
In-Reply-To: <20190514113226.eon3i5irb5btxtjm@pengutronix.de>
Content-Language: en-US
Content-ID: <4EA7D70830285A458834A5B6E1DB53ED@namprd12.prod.outlook.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH] spi: Enable Freescale QSPI controller driver for VF610
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, May 14, 2019 at 01:32:26PM +0200, Sascha Hauer wrote:
> On Mon, May 13, 2019 at 04:59:44PM -0700, Andrey Smirnov wrote:
> > VF610 is supported by this driver, so modify its Kconfig entry to
> > reflect that.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  drivers/spi/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> > index d687105ea..2e57457dc 100644
> > --- a/drivers/spi/Kconfig
> > +++ b/drivers/spi/Kconfig
> > @@ -27,7 +27,7 @@ config DRIVER_SPI_ATMEL
> >
> >  config DRIVER_SPI_FSL_QUADSPI
> >  bool "Freescale QSPI controller"
> > -depends on ARCH_IMX25 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX50 || ARCH_IMX53 || ARCH_LAYERSCAPE
> > +depends on ARCH_IMX25 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX50 || ARCH_IMX53 || ARCH_LAYERSCAPE || ARCH_VF610
>
> Not your fault, but this list is bogus. None of the i.MX SoCs actually
> has this hardware and the ones that have it are not in the list. We
> should rather remove this line entirely.

Should be ARCH_MX6SX || ARCH_MX7 || ARCH_VF610 at the very least, no?
I believe some of the the Layerscape SoCs use the same / very similar
hardware block, but I don't know which ones off the top of my head.

-Cory


--
Cory Tusar
Senior Software Engineer
Zodiac Inflight Innovations
2929 E Imperial Hwy, Suite 170
Brea, CA 92821
(714) 203-0519

www.safran-aerosystems.com

________________________________

This email and any files transmitted with it are confidential & proprietary to Zodiac Inflight Innovations. This information is intended solely for the use of the individual or entity to which it is addressed. Access or transmittal of the information contained in this e-mail, in full or in part, to any other organization or persons is not authorized.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
