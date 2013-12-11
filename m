Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqfFD-00030z-7Q
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 08:34:12 +0000
Message-ID: <1386750828.4650.4.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Wed, 11 Dec 2013 09:33:48 +0100
In-Reply-To: <20131210142452.GY24559@pengutronix.de>
References: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
 <1385484367-15366-5-git-send-email-s.hauer@pengutronix.de>
 <1386685332.3377.2.camel@lws-weitzel>
 <20131210142452.GY24559@pengutronix.de>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Subject: Re: [PATCH 04/17] ARM: am335x phytec phyCORE: Switch to devicetree
 probe support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Dienstag, den 10.12.2013, 15:24 +0100 schrieb Sascha Hauer:
> On Tue, Dec 10, 2013 at 03:22:12PM +0100, Jan Weitzel wrote:
> > Am Dienstag, den 26.11.2013, 17:45 +0100 schrieb Sascha Hauer:
> > > This switches the am335x Phytec phyCORE to devicetree probe support.
> > > For now we use a linked in dtb.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  arch/arm/boards/pcm051/Makefile       |   2 +-
> > >  arch/arm/boards/pcm051/board.c        | 149 ++--------------------------------
> > >  arch/arm/boards/pcm051/mux.c          |  65 ---------------
> > >  arch/arm/boards/pcm051/mux.h          |   4 -
> > >  arch/arm/configs/pcm051_defconfig     |  26 ++++--
> > >  arch/arm/configs/pcm051_mlo_defconfig |   8 +-
> > >  6 files changed, 32 insertions(+), 222 deletions(-)
> > >  delete mode 100644 arch/arm/boards/pcm051/mux.c
> > >  delete mode 100644 arch/arm/boards/pcm051/mux.h
> > > 
> > > ...
> > > diff --git a/arch/arm/configs/pcm051_defconfig b/arch/arm/configs/pcm051_defconfig
> > > index 97e0940..e55ac47 100644
> > > --- a/arch/arm/configs/pcm051_defconfig
> > > +++ b/arch/arm/configs/pcm051_defconfig
> > > @@ -1,16 +1,21 @@
> > > +CONFIG_BUILTIN_DTB=y
> > > +CONFIG_BUILTIN_DTB_NAME="am335x-phytec-phycore"
> > >  CONFIG_ARCH_OMAP=y
> > > -CONFIG_ARCH_AM33XX=y
> > >  CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO=y
> > >  CONFIG_MACH_PCM051=y
> > > -CONFIG_OMAP_UART1=y
> > > -CONFIG_AEABI=y
> > > +CONFIG_THUMB2_BAREBOX=y
> > 
> > Is there a reason to use thumb2 now?
> 
> It generates smaller binaries. Does this cause trouble?
No I didn't see any problems. I used it only for MLO/xload builds by
now.

Jan 
> 
> Sascha
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
