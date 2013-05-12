Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo5.mail-out.ovh.net ([178.32.124.100]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbWiJ-0003Jy-7L
 for barebox@lists.infradead.org; Sun, 12 May 2013 13:53:24 +0000
Received: from mail644.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 81A87FF9166
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 15:52:59 +0200 (CEST)
Date: Sun, 12 May 2013 15:48:41 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130512134841.GH19265@game.jcrosoft.org>
References: <1368210538-15286-1-git-send-email-dev@lynxeye.de>
 <20130510190309.GA1500@x61s.Speedport_W_921V_1_21_000>
 <20130511151700.GQ32299@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130511151700.GQ32299@pengutronix.de>
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
Subject: Re: [PATCH v2 1/2] tegra20: add pinctrl driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17:17 Sat 11 May     , Sascha Hauer wrote:
> On Fri, May 10, 2013 at 09:03:10PM +0200, Alexander Aring wrote:
> > Hi Lucas,
> > 
> > On Fri, May 10, 2013 at 08:28:57PM +0200, Lucas Stach wrote:
> > > This adds a pinctrl driver for the Tegra 20 line of SoCs. It only
> > > supports the three basic pinconfiguration settings function mux,
> > > tristate control and pullup/down control.
> > > 
> > > The driver understands the same devicetree bindings as the Linux one,
> > > unimplemented pinconfiguration options will be ignored.
> > > 
> > > Signed-off-by: Lucas Stach <dev@lynxeye.de>
> 
> [...]
> 
> > > +
> > > +static int pinctrl_tegra20_probe(struct device_d *dev)
> > > +{
> > > +	struct pinctrl_tegra20 *ctrl;
> > > +	int i, ret;
> > > +	u32 **regs;
> > > +
> > > +	ctrl = xzalloc(sizeof(*ctrl));
> > > +
> > > +	/*
> > > +	 * Tegra pincontrol is split out into four independent memory ranges:
> > > +	 * tristate control, function mux, pullup/down control, pad control
> > > +	 * (from lowest to highest hardware address).
> > > +	 * We are only interested in the first three for now.
> > > +	 */
> > > +	regs = (u32 **)&ctrl->regs;
> > > +	for (i = 0; i <= 2; i++) {
> > > +		regs[i] = dev_request_mem_region(dev, i);
> > > +		if (!regs[i]) {
> > > +			dev_err(dev, "Could not get iomem region %d\n", i);
> > Do we need a free(ctrl); here?
> 
> To be correct, yes, we would need a free() here.
> 
> I've never been very thoroughly with releasing the resources in the
> error pathes in the drivers in barebox though and I never felt bad about
> it.
> 
> The probe calls are called only once for each device and whether or not
> we have a few bytes of malloc space more doesn't really matter. Also you
> may have noticed that there even is no dev_release_mem_region in barebox
> which makes nearly all error pathes wrong in barebox anyway.
> 
> And no, I don't want to have -EPROBE_DEFER in barebox.
this can be problematic for some pinctrl as they will present late

that's why we introduce it in the kernel
> 
> So I don't really know what to do with the error pathes in driver probe
> functions. I don't really care about them, but I also don't feel like
> removing the freeing of resources either to reduce the binary size.
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
