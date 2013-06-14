Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UnOMv-0008QK-QW
 for barebox@lists.infradead.org; Fri, 14 Jun 2013 07:24:23 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 7D6B1BF0ED
 for <barebox@lists.infradead.org>; Fri, 14 Jun 2013 09:19:21 +0200 (CEST)
Message-ID: <1371194628.3655.1.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Fri, 14 Jun 2013 09:23:48 +0200
In-Reply-To: <20130614062910.GA10743@x61s.8.8.8.8>
References: <20130405085917.GK1906@pengutronix.de>
 <1365372959.20809.6.camel@lovely> <20130408071715.GS1568@game.jcrosoft.org>
 <20130409071608.GD1906@pengutronix.de>
 <20130409132917.GX1568@game.jcrosoft.org> <1365706897.4136.24.camel@mars>
 <1370207222.5021.0.camel@lovely> <1371069946.25992.104.camel@mars>
 <B2329465-02EF-41CF-8B29-5C7A8BDFB349@jcrosoft.com>
 <1371163239.4055.180.camel@mars> <20130614062910.GA10743@x61s.8.8.8.8>
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
Subject: Re: [PATCH v4] omap4-fb: add driver
To: barebox@lists.infradead.org

Am Freitag, den 14.06.2013, 08:29 +0200 schrieb Alexander Aring:
> Hi,
> 
> On Fri, Jun 14, 2013 at 12:40:39AM +0200, Christoph Fritz wrote:
> > This patch adds omap4 display controller support.
> > 
> > Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> > ---
> > changes since v2:
> >         - use dev_request_mem_region_by_name()
> > changes since v3:
> > 	- remove register struct
> > 	- use uncached screen_base
> > ---
> >  arch/arm/mach-omap/Makefile                |    1 +
> >  arch/arm/mach-omap/include/mach/omap4-fb.h |   46 +++
> >  arch/arm/mach-omap/omap4_fb.c              |   27 ++
> >  drivers/video/Kconfig                      |    8 +
> >  drivers/video/Makefile                     |    1 +
> >  drivers/video/omap4.c                      |  505 ++++++++++++++++++++++++++++
> >  drivers/video/omap4.h                      |  179 ++++++++++
> >  7 files changed, 767 insertions(+)
> >  create mode 100644 arch/arm/mach-omap/include/mach/omap4-fb.h
> >  create mode 100644 arch/arm/mach-omap/omap4_fb.c
> >  create mode 100644 drivers/video/omap4.c
> >  create mode 100644 drivers/video/omap4.h
> > 
> > diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> > index 94e42c6..e70ddbd 100644
> > --- a/arch/arm/mach-omap/Makefile
> > +++ b/arch/arm/mach-omap/Makefile
> > @@ -28,6 +28,7 @@ obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
> >  pbl-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
> >  obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
> >  obj-$(CONFIG_SHELL_NONE) += xload.o
> > +obj-$(CONFIG_DRIVER_VIDEO_OMAP4) += omap4_fb.o
> >  obj-$(CONFIG_I2C_TWL6030) += omap4_twl6030_mmc.o
> >  obj-$(CONFIG_OMAP4_USBBOOT) += omap4_rom_usb.o
> >  obj-y += gpio.o
> > diff --git a/arch/arm/mach-omap/include/mach/omap4-fb.h b/arch/arm/mach-omap/include/mach/omap4-fb.h
> > new file mode 100644
> > index 0000000..5c0a54b
> > --- /dev/null
> > +++ b/arch/arm/mach-omap/include/mach/omap4-fb.h
> > @@ -0,0 +1,46 @@
> 
> ...
> 
> > +	fb_write(1, fbi->dispc, O4_DISPC_VID1_PIXEL_INC);
> > +
> > +	fb_write(0xfff, fbi->dispc, O4_DISPC_VID1_PRELOAD);
> > +
> > +	fb_write(DSS_DISPC_VIDn_ATTRIBUTES_VIDFORMAT(fmt) |
> > +			 DSS_DISPC_VIDn_ATTRIBUTES_VIDBURSTSIZE_8x128 |
> > +			 DSS_DISPC_VIDn_ATTRIBUTES_ZORDERENABLE |
> > +			 DSS_DISPC_VIDn_ATTRIBUTES_CHANNELOUT2_SECONDARY_LCD,
> > +			 fbi->dispc, O4_DISPC_VID1_ATTRIBUTES);
> > +
> > +	while (fb_read(fbi->dispc, O4_DISPC_CONTROL2) & DSS_DISPC_CONTROL_GOLCD)
> > +		;			/* noop */
> 
> For busy waiting on statusbits I would prefer a mechanism like this:
> 
> start = get_time_ns();
> while (condition) {
> ...
> 	if (is_timeout(start, waiting_time)) {
> 		dev_err(dev, "foo"
> 		return -ETIMEOUT;
> 	}
> 	mdelay(interval);
> ...
> }
There is also a convenience wrapper: wait_on_timeout(timeout, condition)

Jan
> 
> I mean it avoid deadlocks in barebox and it's better to start linux
> without a display instead of a deadlock in barebox.
> On the other hand you need a waiting_time which works with all displays
> together. Don't know if there any hardware dependency.
> 
> }
> > +
> > +	fb_write(fb_read(fbi->dispc, O4_DISPC_CONTROL2) |
> > +		 DSS_DISPC_CONTROL_GOLCD,
> > +		 fbi->dispc, O4_DISPC_CONTROL2);
> > +
> > +	fbi->cur_display = new_display;
> > +	info->xres = mode->xres;
> > +	info->yres = mode->yres;
> > +
> > +	rc = 0;
> > +
> > +out:
> > +	return rc;
> > +}
> 
> ...
> 
> > +
> > +	omap4fb_reset(fbi);
> > +
> > +	dev_add_param(fbi->dev, "bootargs", NULL, NULL, 0);
> > +
> Jean-Christophe PLAGNIOL-VILLARD said why we need this here in the last
> mails. I don't saw any answer to this and asking myself... what do this
> function?
> 
> Regards
> Alex
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
