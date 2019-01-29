Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goIPR-0005CI-Dh
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 01:41:55 +0000
Received: by mail-wr1-x442.google.com with SMTP id s12so20233131wrt.4
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 17:41:49 -0800 (PST)
MIME-Version: 1.0
References: <20190126012926.9236-1-andrew.smirnov@gmail.com>
 <20190126012926.9236-2-andrew.smirnov@gmail.com>
 <74d4ef0a05b994ae85b83d2206aea431808424aa.camel@pengutronix.de>
In-Reply-To: <74d4ef0a05b994ae85b83d2206aea431808424aa.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 17:41:36 -0800
Message-ID: <CAHQ1cqHowkvv-h4WxTfybgHH=p1ZMy4W1ezPq8QVBePETJDtqA@mail.gmail.com>
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
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Chris Healy <cphealy@gmail.com>

On Mon, Jan 28, 2019 at 1:05 PM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Andrey,
>
> two very high-level comments that you might choose to ignore, but I
> want to get them out regardless.
>

I didn't make any of those choices. Chris Healy (CC'd) called the
shots on that aspect, so I leave it to him to comment on his
rationale.

Thanks,
Andrey Smirnov

> Am Freitag, den 25.01.2019, 17:29 -0800 schrieb Andrey Smirnov:
> > Add support for the following ZII i.MX8MQ based boards:
> >
> >    - ZII i.MX8MQ RMB3
> >    - ZII i.MX8MQ Zest
> >
> > Most of the basic peripherals are supported by this patch. More
> > advanced features such as PCIe, display support, etc, are planned to
> > be added later.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/boards/Makefile                      |   1 +
> >  arch/arm/boards/zii-imx8mq-dev/Makefile       |   2 +
> >  arch/arm/boards/zii-imx8mq-dev/board.c        |  24 +
> >  arch/arm/boards/zii-imx8mq-dev/ddr.h          |  29 +
> >  arch/arm/boards/zii-imx8mq-dev/ddr_init.c     | 225 +++++
> >  arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c | 935 ++++++++++++++++++
> >  .../flash-header-zii-imx8mq-dev.imxcfg        |   5 +
> >  arch/arm/boards/zii-imx8mq-dev/lowlevel.c     | 211 ++++
>
> Why is the directory called -dev? I expect that we will support the
> final production versions with the same code, so I would drop this
> suffix.
>
> >  arch/arm/dts/Makefile                         |   3 +
> >  arch/arm/dts/imx8mq-zii-ultra-rmb3.dts        |  39 +
> >  arch/arm/dts/imx8mq-zii-ultra-zest.dts        |  13 +
> >  arch/arm/dts/imx8mq-zii-ultra.dtsi            | 453 +++++++++
>
> Somewhat along the same lines, I not really sure if we should use
> marketing names for the DTs. My experience from other projects is that
> it's much easier to use internal names like RDU3 if you care about
> stable names, as marketing people seem to like to rename stuff after
> the fact.
>
> Regards,
> Lucas
>
> >  arch/arm/mach-imx/Kconfig                     |   7 +
> >  images/Makefile.imx                           |   5 +
> >  14 files changed, 1952 insertions(+)
> >  create mode 100644 arch/arm/boards/zii-imx8mq-dev/Makefile
> >  create mode 100644 arch/arm/boards/zii-imx8mq-dev/board.c
> >  create mode 100644 arch/arm/boards/zii-imx8mq-dev/ddr.h
> >  create mode 100644 arch/arm/boards/zii-imx8mq-dev/ddr_init.c
> >  create mode 100644 arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c
> >  create mode 100644 arch/arm/boards/zii-imx8mq-dev/flash-header-zii-imx8mq-dev.imxcfg
> >  create mode 100644 arch/arm/boards/zii-imx8mq-dev/lowlevel.c
> >  create mode 100644 arch/arm/dts/imx8mq-zii-ultra-rmb3.dts
> >  create mode 100644 arch/arm/dts/imx8mq-zii-ultra-zest.dts
> >  create mode 100644 arch/arm/dts/imx8mq-zii-ultra.dtsi
>
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
