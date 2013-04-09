Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPSmq-0001mq-Or
 for barebox@lists.infradead.org; Tue, 09 Apr 2013 07:16:13 +0000
Date: Tue, 9 Apr 2013 09:16:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130409071608.GD1906@pengutronix.de>
References: <1365057762.3836.18.camel@mars>
 <20130405085917.GK1906@pengutronix.de>
 <1365372959.20809.6.camel@lovely>
 <20130408071715.GS1568@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130408071715.GS1568@game.jcrosoft.org>
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
Subject: Re: [PATCH v2] omap4-fb: add driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 08, 2013 at 09:17:15AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 00:15 Mon 08 Apr     , Christoph Fritz wrote:
> > This patch adds omap4 display controller support.
> > 
> > +
> > +static inline void fb_write(uint32_t v, void __iomem *addr)
> > +{
> > +	__raw_writel(v, addr);
> > +}
> > +
> > +static inline uint32_t fb_read(void const __iomem *addr)
> > +{
> > +	return __raw_readl(addr);
> > +}
> what is the dif?

Maybe Christoph understands what you mean here. I don't

> > +
> > +	fbi->regs.dss   = dev_request_mem_region(dev, OMAP4_FB_RESOURCE_DSS);
> > +	fbi->regs.dispc = dev_request_mem_region(dev, OMAP4_FB_RESOURCE_DISPC);
> use named dev_request

We don't have such a function.

Could you please trim the context to sensible limits when reviewing
patches? It's hard to find your comments when you keep the complete
patch.

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
