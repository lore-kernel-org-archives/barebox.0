Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TFmAi-0000aj-U9
 for barebox@lists.infradead.org; Sun, 23 Sep 2012 13:24:34 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 217B11038106
 for <barebox@lists.infradead.org>; Sun, 23 Sep 2012 15:30:27 +0200 (CEST)
Date: Sun, 23 Sep 2012 15:22:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120923132200.GA26553@game.jcrosoft.org>
References: <20120922175346.GX26553@game.jcrosoft.org>
 <1348338408-26737-1-git-send-email-plagnioj@jcrosoft.com>
 <20120923110000.GJ1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120923110000.GJ1322@pengutronix.de>
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
Subject: Re: [PATCH 1/5] video: add atmel lcdc frambuffer support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>

On 13:00 Sun 23 Sep     , Sascha Hauer wrote:
> On Sat, Sep 22, 2012 at 08:26:44PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > This IP is present on the at91sam9 until the sam9g45, on the sam9x5 we use a
> > new IP.
> > 
> > This driver is based on the linux one.
> > 
> > +
> > +/* Way LCD wires are connected to the chip:
> > + * Some Atmel chips use BGR color mode (instead of standard RGB)
> > + * A swapped wiring onboard can bring to RGB mode.
> > + */
> > +#define ATMEL_LCDC_WIRING_BGR	0
> > +#define ATMEL_LCDC_WIRING_RGB	1
> > +#define ATMEL_LCDC_WIRING_RGB555	2
> > +
> > +
> > + /* LCD Controller info data structure, stored in device platform_data */
> > +struct atmel_lcdfb_info {
> > +	struct fb_info		*info;
> > +	void __iomem		*mmio;
> > +	struct device_d		*device;
> > +
> > +	unsigned int		guard_time;
> > +	unsigned int		smem_len;
> > +	struct clk		*bus_clk;
> > +	struct clk		*lcdc_clk;
> > +
> > +	bool			lcdcon_is_backlight;
> > +	bool			lcdcon_pol_negative;
> > +	u8			saved_lcdcon;
> > +
> > +	u8			default_bpp;
> > +	u8			lcd_wiring_mode;
> > +	unsigned int		default_lcdcon2;
> > +	unsigned int		default_dmacon;
> > +	void (*atmel_lcdfb_power_control)(int on);
> > +	struct fb_videomode	*mode_list;
> > +	unsigned		num_modes;
> > +	u32			pseudo_palette[16];
> > +};
> 
> Honestly, Passing in the driver internal data as platform_data is completely
> rubbish. If you want to have it the-same-like-in-Linux, then fix it in Linux
> first.
we will first linux but later with switch with DT that will be done after the
discussion about panel description. Once it's done I'll update barebox with it
as I alwasy do on at91

As we discuss before on IMX where you do not want to update barebox before
finish cleanup linux

So can you agree here on at91 too

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
