Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo5.mail-out.ovh.net ([46.105.40.108]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZSOW-0004T2-Jc
 for barebox@lists.infradead.org; Mon, 06 May 2013 20:52:25 +0000
Received: from mail414.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 5F9F7FF9621
 for <barebox@lists.infradead.org>; Mon,  6 May 2013 22:52:02 +0200 (CEST)
Date: Mon, 6 May 2013 22:47:39 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130506204739.GD30509@game.jcrosoft.org>
References: <1367852182-28870-1-git-send-email-dev@lynxeye.de>
 <20130506152725.GP13393@game.jcrosoft.org>
 <20130506195903.GJ32299@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130506195903.GJ32299@pengutronix.de>
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
Subject: Re: [PATCH 1/2] tegra20: add pinctrl driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 21:59 Mon 06 May     , Sascha Hauer wrote:
> On Mon, May 06, 2013 at 05:27:25PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > +
> > > +static struct pinctrl_ops pinctrl_tegra20_ops = {
> > > +	.set_state = pinctrl_tegra20_set_state,
> > > +};
> > > +
> > > +static int pinctrl_tegra20_probe(struct device_d *dev)
> > > +{
> > > +	struct pinctrl_tegra20 *ctrl;
> > > +	int i, ret = 0;
> > no need the init of ret
> > > +
> > > +	ctrl = xzalloc(sizeof(*ctrl));
> > > +
> > > +	/*
> > > +	 * Tegra pincontrol is split out into four independent memory ranges:
> > > +	 * tristate control, function mux, pullup/down control, pad control
> > > +	 * (from lowest to highest hardware address).
> > > +	 * We are only interested in the first three for now.
> > > +	 */
> > > +	for (i = 0; i <= 2; i++) {
> > > +		ctrl->regs[i] = dev_request_mem_region(dev, i);
> 
> The return values of dev_request_mem_region should be checked for new
> drivers. I know 98% of the code currently does not do this and it was a
> mistake. The above may fail if regions overlap or there are other bugs
> in the devicetree. Having this silently fail means that the actual
> register accesses do a NULL pointer deref later.
why not simply put a BUG in the request_mem
> 
> > > +	}
> > drop {}
> > 
> > but use a specific name will simplify debug
> 
> I don't think this should be mandatory.
the issue is that a number can be easly endup to a hiden typo (no compile
error) where a ttypo in the name will no compile.

> 
> > 
> > and make the code easier
> > > +
> > > +	ctrl->pinctrl.dev = dev;
> > > +	ctrl->pinctrl.ops = &pinctrl_tegra20_ops;
> > > +
> > > +	ret = pinctrl_register(&ctrl->pinctrl);
> > > +	if (ret)
> > > +		free(ctrl);
> > report an error message
> 
> The core will answer with an error message here. There is no need to
> litter the code with error messages which only add to the binary size.
> The above may fail for a developer but really should not fail for a user.
> A developer has enough information with the probe functions error code.

pinctrl_register print no error message

it's good to known why we failled no just that the probe return -Exxx

and this will not impact the binary size if we put a dev_warn or dev_debug

as we can drop them with the printk level

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
