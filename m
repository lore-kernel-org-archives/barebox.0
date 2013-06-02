Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x234.google.com ([2a00:1450:4008:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjFUw-0000kP-Ai
 for barebox@lists.infradead.org; Sun, 02 Jun 2013 21:07:31 +0000
Received: by mail-bk0-f52.google.com with SMTP id e11so454063bkh.39
 for <barebox@lists.infradead.org>; Sun, 02 Jun 2013 14:07:06 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <1365706897.4136.24.camel@mars>
References: <1365057762.3836.18.camel@mars>
 <20130405085917.GK1906@pengutronix.de> <1365372959.20809.6.camel@lovely>
 <20130408071715.GS1568@game.jcrosoft.org>
 <20130409071608.GD1906@pengutronix.de>
 <20130409132917.GX1568@game.jcrosoft.org>  <1365706897.4136.24.camel@mars>
Date: Sun, 02 Jun 2013 23:07:02 +0200
Message-ID: <1370207222.5021.0.camel@lovely>
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
Subject: Re: [PATCH v2] omap4-fb: add driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

*ping*

On Thu, 2013-04-11 at 21:01 +0200, Christoph Fritz wrote:
> Hi Jean-Christophe
> 
> On Tue, 2013-04-09 at 15:29 +0200, Jean-Christophe PLAGNIOL-VILLARD
> wrote:
> > On 09:16 Tue 09 Apr     , Sascha Hauer wrote:
> > > On Mon, Apr 08, 2013 at 09:17:15AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > On 00:15 Mon 08 Apr     , Christoph Fritz wrote:
> > > > > This patch adds omap4 display controller support.
> > > > > 
> > > > > +
> > > > > +static inline void fb_write(uint32_t v, void __iomem *addr)
> > > > > +{
> > > > > +	__raw_writel(v, addr);
> > > > > +}
> > > > > +
> > > > > +static inline uint32_t fb_read(void const __iomem *addr)
> > > > > +{
> > > > > +	return __raw_readl(addr);
> > > > > +}
> > > > what is the dif?
> > > 
> > > Maybe Christoph understands what you mean here. I don't
> > those 2 inline as useless
> 
> You want me to purge the "inline" because gcc is smart enough to use
> inlining on its own?
> 
> Or are you noting that using a function here is overkill for only one
> call inside?
> 
> I use functions here because it makes debugging more easy and if you
> have a weird hardware config, here you can easily adapt the read and
> write functions.
> 
> > > > > +
> > > > > +	fbi->regs.dss   = dev_request_mem_region(dev, OMAP4_FB_RESOURCE_DSS);
> > > > > +	fbi->regs.dispc = dev_request_mem_region(dev, OMAP4_FB_RESOURCE_DISPC);
> > > > use named dev_request
> > > 
> > > We don't have such a function.
> > yes we do
> > 
> > dev_request_mem_region_by_name
> 
> Ok
> 
>  Thanks
>   -- Christoph
> 




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
