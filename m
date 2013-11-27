Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlZmi-0002sT-Re
 for barebox@lists.infradead.org; Wed, 27 Nov 2013 07:43:45 +0000
Date: Wed, 27 Nov 2013 08:43:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131127074322.GR24559@pengutronix.de>
References: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
 <1385484367-15366-5-git-send-email-s.hauer@pengutronix.de>
 <20131127032010.GA3288@x61s.Speedport_W_921V_1_24_000>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131127032010.GA3288@x61s.Speedport_W_921V_1_24_000>
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
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 27, 2013 at 04:20:11AM +0100, Alexander Aring wrote:
> Hi Sascha,
> 
> nice patchstack.
> 
> On Tue, Nov 26, 2013 at 05:45:54PM +0100, Sascha Hauer wrote:
> > This switches the am335x Phytec phyCORE to devicetree probe support.
> > For now we use a linked in dtb.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/pcm051/Makefile       |   2 +-
> >  arch/arm/boards/pcm051/board.c        | 149 ++--------------------------------
> >  arch/arm/boards/pcm051/mux.c          |  65 ---------------
> >  arch/arm/boards/pcm051/mux.h          |   4 -
> >  arch/arm/configs/pcm051_defconfig     |  26 ++++--
> >  arch/arm/configs/pcm051_mlo_defconfig |   8 +-
> >  6 files changed, 32 insertions(+), 222 deletions(-)
> >  delete mode 100644 arch/arm/boards/pcm051/mux.c
> >  delete mode 100644 arch/arm/boards/pcm051/mux.h
> > 
> > diff --git a/arch/arm/boards/pcm051/Makefile b/arch/arm/boards/pcm051/Makefile
> > index 69d48e1..092c31d 100644
> > --- a/arch/arm/boards/pcm051/Makefile
> > +++ b/arch/arm/boards/pcm051/Makefile
> > @@ -1,2 +1,2 @@
> >  lwl-y += lowlevel.o
> > -obj-y += board.o mux.o
> > +obj-y += board.o
> > diff --git a/arch/arm/boards/pcm051/board.c b/arch/arm/boards/pcm051/board.c
> ...
> > -CONFIG_ARCH_AM33XX=y
> >  CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO=y
> >  CONFIG_MACH_PCM051=y
> > -CONFIG_OMAP_UART1=y
> > -CONFIG_AEABI=y
> > +CONFIG_THUMB2_BAREBOX=y
> >  CONFIG_ARM_BOARD_APPEND_ATAG=y
> >  CONFIG_CMD_ARM_MMUINFO=y
> >  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> >  CONFIG_ARM_UNWIND=y
> > +CONFIG_PBL_IMAGE=y
> > +CONFIG_PBL_RELOCATABLE=y
> >  CONFIG_MMU=y
> > -CONFIG_TEXT_BASE=0x8f000000
> > -CONFIG_MALLOC_SIZE=0x2000000
> > +CONFIG_TEXT_BASE=0x0
> > +CONFIG_MALLOC_SIZE=0x0
> Why is this zero now? Are these things defined in the dts file?

It's a relocatable binary which gets relocated during runtime. The
address doesn't matter anymore, but setting it to zero helps translating
the addresses from the objdump to the running binary.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
