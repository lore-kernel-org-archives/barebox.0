Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goIWc-00075T-0L
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 01:49:19 +0000
Received: by mail-io1-xd41.google.com with SMTP id s8so15213912iob.13
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 17:49:17 -0800 (PST)
MIME-Version: 1.0
References: <20190126012926.9236-1-andrew.smirnov@gmail.com>
 <20190126012926.9236-2-andrew.smirnov@gmail.com>
 <74d4ef0a05b994ae85b83d2206aea431808424aa.camel@pengutronix.de>
 <CAHQ1cqHowkvv-h4WxTfybgHH=p1ZMy4W1ezPq8QVBePETJDtqA@mail.gmail.com>
In-Reply-To: <CAHQ1cqHowkvv-h4WxTfybgHH=p1ZMy4W1ezPq8QVBePETJDtqA@mail.gmail.com>
From: Chris Healy <cphealy@gmail.com>
Date: Mon, 28 Jan 2019 17:49:05 -0800
Message-ID: <CAFXsbZpPcsgavyKOZjoaNsO0hmrCvo-3rnh4j5xuoY94P0hrXw@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] ARM: i.MX: Add support for ZII i.MX8MQ based devices
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 28, 2019 at 5:41 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> On Mon, Jan 28, 2019 at 1:05 PM Lucas Stach <l.stach@pengutronix.de> wrote:
> >
> > Hi Andrey,
> >
> > two very high-level comments that you might choose to ignore, but I
> > want to get them out regardless.
> >
>
> I didn't make any of those choices. Chris Healy (CC'd) called the
> shots on that aspect, so I leave it to him to comment on his
> rationale.
>
> Thanks,
> Andrey Smirnov
>
> > Am Freitag, den 25.01.2019, 17:29 -0800 schrieb Andrey Smirnov:
> > > Add support for the following ZII i.MX8MQ based boards:
> > >
> > >    - ZII i.MX8MQ RMB3
> > >    - ZII i.MX8MQ Zest
> > >
> > > Most of the basic peripherals are supported by this patch. More
> > > advanced features such as PCIe, display support, etc, are planned to
> > > be added later.
> > >
> > > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > > ---
> > >  arch/arm/boards/Makefile                      |   1 +
> > >  arch/arm/boards/zii-imx8mq-dev/Makefile       |   2 +
> > >  arch/arm/boards/zii-imx8mq-dev/board.c        |  24 +
> > >  arch/arm/boards/zii-imx8mq-dev/ddr.h          |  29 +
> > >  arch/arm/boards/zii-imx8mq-dev/ddr_init.c     | 225 +++++
> > >  arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c | 935 ++++++++++++++++++
> > >  .../flash-header-zii-imx8mq-dev.imxcfg        |   5 +
> > >  arch/arm/boards/zii-imx8mq-dev/lowlevel.c     | 211 ++++
> >
> > Why is the directory called -dev? I expect that we will support the
> > final production versions with the same code, so I would drop this
> > suffix.

The directory is called zii-imx8mq-dev in the same way that we use
zii-vf610-dev with the many Vybrid platforms.  I consider -dev better
for the future as it will allow us to support a future zii-imx8mq
platform that is not an RDU without leading to confusion.  We are
bumping into this with the zii-imx51-rdu directory structure, we have
many Zodiac i.MX51 based platforms that are not the RDU1 and using
-rdu in the directory name leads to confusion in my opinion compared
to what we have for the zii-vf610-dev tree and platforms.

> >
> > >  arch/arm/dts/Makefile                         |   3 +
> > >  arch/arm/dts/imx8mq-zii-ultra-rmb3.dts        |  39 +
> > >  arch/arm/dts/imx8mq-zii-ultra-zest.dts        |  13 +
> > >  arch/arm/dts/imx8mq-zii-ultra.dtsi            | 453 +++++++++
> >
> > Somewhat along the same lines, I not really sure if we should use
> > marketing names for the DTs. My experience from other projects is that
> > it's much easier to use internal names like RDU3 if you care about
> > stable names, as marketing people seem to like to rename stuff after
> > the fact.

The names rmb3 and zest are the internal names for the two different
"Ultra" RDU3 platforms we have.  One Ultra RDU3 uses the zest
mainboard.  The other Ultra RDU3 uses the rmb3.  I'm not sure what
would be better names for these two variants of Ultra RDU3.

> >
> > Regards,
> > Lucas
> >
> > >  arch/arm/mach-imx/Kconfig                     |   7 +
> > >  images/Makefile.imx                           |   5 +
> > >  14 files changed, 1952 insertions(+)
> > >  create mode 100644 arch/arm/boards/zii-imx8mq-dev/Makefile
> > >  create mode 100644 arch/arm/boards/zii-imx8mq-dev/board.c
> > >  create mode 100644 arch/arm/boards/zii-imx8mq-dev/ddr.h
> > >  create mode 100644 arch/arm/boards/zii-imx8mq-dev/ddr_init.c
> > >  create mode 100644 arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c
> > >  create mode 100644 arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
> > >  create mode 100644 arch/arm/boards/zii-imx8mq-dev/lowlevel.c
> > >  create mode 100644 arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
> > >  create mode 100644 arch/arm/dts/imx8mq-zii-ultra-zest.dts
> > >  create mode 100644 arch/arm/dts/imx8mq-zii-ultra.dtsi
> >
> >

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
