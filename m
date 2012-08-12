Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo4.mail-out.ovh.net ([46.105.40.29]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0Y6W-00033y-Ut
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 13:21:19 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 35FC51054336
 for <barebox@lists.infradead.org>; Sun, 12 Aug 2012 15:25:49 +0200 (CEST)
Date: Sun, 12 Aug 2012 15:21:20 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120812132120.GG6271@game.jcrosoft.org>
References: <1344628865-32574-1-git-send-email-s.hauer@pengutronix.de>
 <1344628865-32574-6-git-send-email-s.hauer@pengutronix.de>
 <20120811093702.GB6271@game.jcrosoft.org>
 <20120812120945.GI1451@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120812120945.GI1451@pengutronix.de>
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
Subject: Re: [PATCH 5/9] ARM: fix netx/MLO/s5p image build for pbl
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14:09 Sun 12 Aug     , Sascha Hauer wrote:
> On Sat, Aug 11, 2012 at 11:37:02AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 22:01 Fri 10 Aug     , Sascha Hauer wrote:
> > > If pbl support is enabled only zbarebox.bin was built, but
> > > not the SoC specific images. Fix this.
> > yeah it does the trick but I do not like the makefile target
> > we need to create cmd and use the $(call xxx,ifchanged) mecanism
> 
> Can do, but this would be subject to another patch. This patch only changes
> the dependencies, but not what is done.
agreed but as we touch it we really need to clean it
and do not add more as with the ln

Best Regards,
J.
> 
> Sascha
> 
> > 
> > Best Regards,
> > J.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  arch/arm/Makefile |   35 ++++++++++++++++++++++-------------
> > >  1 file changed, 22 insertions(+), 13 deletions(-)
> > > 
> > > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > > index 89f645b..63bc9be 100644
> > > --- a/arch/arm/Makefile
> > > +++ b/arch/arm/Makefile
> > > @@ -160,7 +160,16 @@ CPPFLAGS += -fdata-sections -ffunction-sections
> > >  LDFLAGS_barebox += -static --gc-sections
> > >  endif
> > >  
> > > -barebox.netx: barebox.bin
> > > +ifdef CONFIG_IMAGE_COMPRESSION
> > > +KBUILD_BINARY := arch/arm/pbl/zbarebox.bin
> > > +KBUILD_TARGET := zbarebox.bin
> > > +$(KBUILD_BINARY): $(KBUILD_TARGET)
> > > +else
> > > +KBUILD_BINARY := barebox.bin
> > > +KBUILD_TARGET := barebox.bin
> > > +endif
> > > +
> > > +barebox.netx: $(KBUILD_BINARY)
> > >  	$(Q)scripts/gen_netx_image -i $< -o barebox.netx		\
> > >  		--sdramctrl=$(CONFIG_NETX_SDRAM_CTRL)			\
> > >  		--sdramtimctrl=$(CONFIG_NETX_SDRAM_TIMING_CTRL)		\
> > > @@ -169,36 +178,36 @@ barebox.netx: barebox.bin
> > >  		--cookie=$(CONFIG_NETX_COOKIE);
> > >  
> > >  ifeq ($(machine-y),netx)
> > > -KBUILD_IMAGE := barebox.netx
> > > +KBUILD_TARGET := barebox.netx
> > > +KBUILD_BINARY := $(KBUILD_TARGET)
> > >  endif
> > >  
> > > -barebox.s5p: barebox.bin
> > > +barebox.s5p: $(KBUILD_BINARY)
> > >  	$(Q)scripts/s5p_cksum $< barebox.s5p
> > >  
> > >  ifeq ($(CONFIG_ARCH_S5PCxx),y)
> > > -KBUILD_IMAGE := barebox.s5p
> > > +KBUILD_TARGET := barebox.s5p
> > > +KBUILD_BINARY := $(KBUILD_TARGET)
> > >  endif
> > >  
> > > -MLO: barebox.bin
> > > +MLO: $(KBUILD_BINARY)
> > >  	@echo "  IFT    " $@
> > >  	$(Q)scripts/omap_signGP $< $(TEXT_BASE) 1
> > >  	$(Q)test -e $<.ift && mv $<.ift MLO
> > >  
> > >  ifeq ($(CONFIG_OMAP_BUILD_IFT),y)
> > > -KBUILD_IMAGE := MLO
> > > +KBUILD_TARGET := MLO
> > > +KBUILD_BINARY := $(KBUILD_TARGET)
> > >  endif
> > >  
> > > -barebox.ubl: barebox.bin
> > > +barebox.ubl: $(KBUILD_BINARY)
> > >  	@echo "  UBL    " $@
> > >  	$(Q)scripts/mkublheader $< > barebox.ubl
> > >  	$(Q)cat $< >> barebox.ubl
> > >  
> > >  ifeq ($(CONFIG_ARCH_DAVINCI),y)
> > > -KBUILD_IMAGE := barebox.ubl
> > > -endif
> > > -
> > > -ifdef CONFIG_IMAGE_COMPRESSION
> > > -KBUILD_IMAGE := zbarebox.bin
> > > +KBUILD_TARGET := barebox.ubl
> > > +KBUILD_BINARY := $(KBUILD_TARGET)
> > >  endif
> > >  
> > >  pbl := arch/arm/pbl
> > > @@ -208,7 +217,7 @@ zbarebox.S zbarebox.bin zbarebox: barebox.bin
> > >  archclean:
> > >  	$(MAKE) $(clean)=$(pbl)
> > >  
> > > -all: $(KBUILD_IMAGE)
> > > +all: $(KBUILD_BINARY)
> > >  
> > >  archprepare: maketools
> > >  maketools:
> > > -- 
> > > 1.7.10.4
> > > 
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
