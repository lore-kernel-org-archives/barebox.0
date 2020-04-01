Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJjKl-0004B1-FL
 for barebox@lists.infradead.org; Wed, 01 Apr 2020 19:47:33 +0000
Received: by mail-wr1-x441.google.com with SMTP id t7so1471014wrw.12
 for <barebox@lists.infradead.org>; Wed, 01 Apr 2020 12:47:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
 <20200331184722.22707-2-andrew.smirnov@gmail.com>
 <20200401052034.GS27288@pengutronix.de>
In-Reply-To: <20200401052034.GS27288@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 1 Apr 2020 12:47:18 -0700
Message-ID: <CAHQ1cqGzUFW+Khwgkzb_OCasOKKv1CoqrQHa-Mf+PDX4NuZTYQ@mail.gmail.com>
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
Subject: Re: [PATCH 01/23] ARM: zii-common: Gate rdu_i210_invm() call with
 CONFIG_PCI_IMX6
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Mar 31, 2020 at 10:20 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Tue, Mar 31, 2020 at 11:47:00AM -0700, Andrey Smirnov wrote:
> > There's no reason to have rdu_i210_invm() inicalli if CONFIG_PCI_IMX6
> > is not selected. Add appropriate ifdef to handle that.
>
> Either this is the wrong way round...
>

Hmm, not sure I understand what you mean. I210 card and its INVM won't
appear if PCIe is not enabled, that's why there's no reason to have
rdu_i210_invm() initcall if CONFIG_PCI_IMX6 is _not_ selected. Did I
miss something?

> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/boards/zii-common/board.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/arm/boards/zii-common/board.c b/arch/arm/boards/zii-common/board.c
> > index 7bd3a6cab..08e2f8b9b 100644
> > --- a/arch/arm/boards/zii-common/board.c
> > +++ b/arch/arm/boards/zii-common/board.c
> > @@ -104,6 +104,8 @@ static int rdu_networkconfig(void)
> >  }
> >  late_initcall(rdu_networkconfig);
> >
> > +#ifdef CONFIG_PCI_IMX6
>
> ...or this should be #ifndef
>
> Sascha
>
> > +
> >  #define I210_CFGWORD_PCIID_157B              0x157b1a11
> >  static int rdu_i210_invm(void)
> >  {
> > @@ -136,3 +138,5 @@ static int rdu_i210_invm(void)
> >       return 0;
> >  }
> >  late_initcall(rdu_i210_invm);
> > +
> > +#endif
> > --
> > 2.21.0
> >
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> >
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
