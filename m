Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x235.google.com ([2a00:1450:4008:c01::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uoqzf-0007eO-Gm
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 08:10:24 +0000
Received: by mail-bk0-f53.google.com with SMTP id e11so1587549bkh.40
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2013 01:09:59 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <51C00F29.1060601@ti.com>
References: <20130409132917.GX1568@game.jcrosoft.org>
 <1365706897.4136.24.camel@mars> <1370207222.5021.0.camel@lovely>
 <1371069946.25992.104.camel@mars>
 <B2329465-02EF-41CF-8B29-5C7A8BDFB349@jcrosoft.com>
 <1371163239.4055.180.camel@mars> <20130614062910.GA10743@x61s.8.8.8.8>
 <1371194628.3655.1.camel@lws-weitzel> <1371197742.3873.8.camel@mars>
 <20130614114312.GG27130@game.jcrosoft.org>
 <20130617161800.GI27130@game.jcrosoft.org>  <51C00F29.1060601@ti.com>
Date: Tue, 18 Jun 2013 10:09:55 +0200
Message-ID: <1371542995.4055.12.camel@mars>
Mime-Version: 1.0
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
Subject: Re: [PATCH v6] omap4-fb: add driver
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc: barebox@lists.infradead.org

Hi Tomi

On Tue, 2013-06-18 at 10:41 +0300, Tomi Valkeinen wrote:
> On 17/06/13 19:18, Christoph Fritz wrote:
> > This patch adds omap4 display controller support.
> 
> I haven't been following the discussions about this patch, so maybe
> these have been covered:
> 
> OMAP2/3/4/5 all have very similar DSS. Why did you go for omap_4_-fb
> driver, not omap-fb driver?

I'm currently only having an omap4 board here. But I could rename the
driver to the more generic name "omap-fb" and explain in the KCONFIG
that it currently only covers omap4 devices.

So we could go from there up to all other OMAP devices. Okay?

> > +config DRIVER_VIDEO_OMAP4
> > +	bool "OMAP4 framebuffer driver"
> > +	depends on ARCH_OMAP4
> > +	help
> > +	  Add support for the OMAP4 Display Controller.
> > +	  DSI is unsupported, only DISPC parallel mode on LCD2
> > +	  is supported.
> > +
> 
> Also HDMI, RFBI and VENC seem to be unsupported. The DISPC parallel mode
> you mention is MIPI DPI.
> 
> Supporting only the DPI output is "easy", do you have plans to support
> the other outputs and external encoders used in many boards?

No, at present I have no intention to do so.

>  That may
> require a more generic approach, with multiple display "entities" in the
> pipeline. Not that the first version should support that, but I just
> wanted to mention it so that you don't design the driver in too
> non-generic manner.

 Thanks
  -- Christoph



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
