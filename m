Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TLsHh-00016j-5B
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 09:08:59 +0000
Received: from mail611.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id EB7EADC082F
 for <barebox@lists.infradead.org>; Wed, 10 Oct 2012 11:15:19 +0200 (CEST)
Date: Wed, 10 Oct 2012 11:06:29 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121010090629.GE26553@game.jcrosoft.org>
References: <1349614983-12495-1-git-send-email-plagnioj@jcrosoft.com>
 <20121010090343.GV27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121010090343.GV27665@pengutronix.de>
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
Subject: Re: [PATCH 1/1] designware: add clock support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:03 Wed 10 Oct     , Sascha Hauer wrote:
> On Sun, Oct 07, 2012 at 03:03:03PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > allow the driver to request it's clock and enable it
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/net/designware.c |   20 +++++++++++++++++++-
> >  1 file changed, 19 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/net/designware.c b/drivers/net/designware.c
> > index ec51825..1cbcd5a 100644
> > --- a/drivers/net/designware.c
> > +++ b/drivers/net/designware.c
> > @@ -32,8 +32,10 @@
> >  #include <asm/mmu.h>
> >  #include <net/designware.h>
> >  #include <linux/phy.h>
> > -#include "designware.h"
> > +#include <linux/clk.h>
> > +#include <linux/err.h>
> >  
> > +#include "designware.h"
> >  
> >  struct dw_eth_dev {
> >  	struct eth_device netdev;
> > @@ -390,6 +392,8 @@ static int dwc_ether_probe(struct device_d *dev)
> >  	struct mii_bus *miibus;
> >  	void __iomem *base;
> >  	struct dwc_ether_platform_data *pdata = dev->platform_data;
> > +	struct clk *clk;
> > +	int ret;
> >  
> >  	if (!pdata) {
> >  		printf("dwc_ether: no platform_data\n");
> > @@ -427,6 +431,20 @@ static int dwc_ether_probe(struct device_d *dev)
> >  	miibus->write = dwc_ether_mii_write;
> >  	miibus->priv = priv;
> >  
> > +	clk = clk_get(dev, NULL);
> > +	if (IS_ERR(clk)) {
> > +		ret = PTR_ERR(clk);
> > +		dev_err(dev, "no clk ret = %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	ret = clk_enable(clk);
> > +	if (ret) {
> > +		dev_err(dev, "can not enable clk ret = %d\n", ret);
> > +		clk_put(clk);
> > +		return ret;
> > +	}
> 
> I really doubt it makes sense to request clks in drivers just to enable
> it in barebox. The clock ends up being enabled everytime anyway since
> the clk enable is done in the probe function and is never disabled
> again. This forces every user of this driver to provide the clk API for
> absolutely no gain.
I'm working on the phy and on specific part no ready yet but I net the rate
too as this IP support specific rate on SH4

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
