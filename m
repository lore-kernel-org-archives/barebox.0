Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJOCi-00069i-0G
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 12:05:17 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 22731FF876E
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2012 14:06:26 +0200 (CEST)
Date: Sun, 15 Apr 2012 13:47:10 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120415114710.GJ30672@game.jcrosoft.org>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
 <1334325273-1701-2-git-send-email-s.hauer@pengutronix.de>
 <20120414161123.GB30672@game.jcrosoft.org>
 <20120414201356.GC3852@pengutronix.de>
 <20120415013142.GE30672@game.jcrosoft.org>
 <20120415095313.GE3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120415095313.GE3852@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/7] ARM: add initial i.MX6 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:53 Sun 15 Apr     , Sascha Hauer wrote:
> On Sun, Apr 15, 2012 at 03:31:42AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 22:13 Sat 14 Apr     , Sascha Hauer wrote:
> > > On Sat, Apr 14, 2012 at 06:11:23PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > On 15:54 Fri 13 Apr     , Sascha Hauer wrote:
> > > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > ---
> > > > >  arch/arm/mach-imx/Kconfig                     |    7 +-
> > > > >  arch/arm/mach-imx/Makefile                    |    1 +
> > > > >  arch/arm/mach-imx/imx6.c                      |   71 +
> > > > >  arch/arm/mach-imx/include/mach/clock-imx6.h   |  530 +++
> > > > >  arch/arm/mach-imx/include/mach/devices-imx6.h |   46 +
> > > > >  arch/arm/mach-imx/include/mach/generic.h      |    6 +
> > > > >  arch/arm/mach-imx/include/mach/imx-regs.h     |    2 +
> > > > >  arch/arm/mach-imx/include/mach/imx6-anadig.h  |  721 ++++
> > > > >  arch/arm/mach-imx/include/mach/imx6-regs.h    |  132 +
> > > > >  arch/arm/mach-imx/include/mach/imx6.h         |    6 +
> > > > >  arch/arm/mach-imx/include/mach/iomux-mx6.h    | 5630 +++++++++++++++++++++++++
> > > > >  arch/arm/mach-imx/speed-imx6.c                |  393 ++
> > > > >  drivers/mci/Kconfig                           |    2 +-
> > > > >  include/asm-generic/barebox.lds.h             |    7 +-
> > > > >  14 files changed, 7551 insertions(+), 3 deletions(-)
> > > > >  create mode 100644 arch/arm/mach-imx/imx6.c
> > > > >  create mode 100644 arch/arm/mach-imx/include/mach/clock-imx6.h
> > > > >  create mode 100644 arch/arm/mach-imx/include/mach/devices-imx6.h
> > > > >  create mode 100644 arch/arm/mach-imx/include/mach/imx6-anadig.h
> > > > >  create mode 100644 arch/arm/mach-imx/include/mach/imx6-regs.h
> > > > >  create mode 100644 arch/arm/mach-imx/include/mach/imx6.h
> > > > >  create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx6.h
> > > > >  create mode 100644 arch/arm/mach-imx/speed-imx6.c
> > > > > 
> > > > > diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> > > > > index 2f317c2..8a0979a 100644
> > > > > --- a/arch/arm/mach-imx/Kconfig
> > > > > +++ b/arch/arm/mach-imx/Kconfig
> > > > on IMX you could set the ARCH_BAREBOX_MAX_BARE_INIT_SIZE so you can check at
> > > > the compilation that the code fit in sram
> > > 
> > > No, there is no such limitation here.
> > > 
> > > Please trim your answers.
> > when you boot from internal boot from nand we have no limit?
> > 
> > IIRC we have
> 
> No, there is no limit, at least not when we use the real barebox size
> instead of 0x40000 like you suggested.
 I mean to the BARE_INIT not barebox itself

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
