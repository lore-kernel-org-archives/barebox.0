Delivery-date: Tue, 08 Jun 2021 00:24:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqNfk-0000Cy-8S
	for lore@lore.pengutronix.de; Tue, 08 Jun 2021 00:24:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqNfg-0001pg-8Y
	for lore@pengutronix.de; Tue, 08 Jun 2021 00:24:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ydITLDy7SI9wwabcJTji7pDRA5qGz5RQyZJZXNAtKp4=; b=km8Ry63K1tJvdE
	h4rykNVyPBbJYw2TRtll/YndQxJXH9CS1U57BoBYxsdoTOhELjOG8qNDSdlKpDQGbRxxwFOyiSlDu
	B4WPGZ0FGfNSExSKFmkHE/L1Y2yEfwkGNQN/pUx8OwG48eTYKxfKYWtA9fNAvKAKiYVtZ9tBUf+yq
	e7Wrnf+ZhWhvnZMwRHy0dPxUpea66C1rPB9VK44dnNGiyjVvk4VXufHlPAlU0451lgHIoW4XC9mPS
	3Rxhxx7myvc1CMnwCGPrCAzjcFn9sSRVkWpcJOWBg1JvpZn3ZWWjSFp6+vnoLLtMk9IH9+27gvW1j
	NbO+4NM7LlxE5mfQChEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqNdt-005ZZY-Nv; Mon, 07 Jun 2021 22:22:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqNdm-005ZZ1-42
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 22:22:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqNdi-0001l9-AU; Tue, 08 Jun 2021 00:22:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqNdi-0008FU-17; Tue, 08 Jun 2021 00:22:34 +0200
Date: Tue, 8 Jun 2021 00:22:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210607222233.GB5267@pengutronix.de>
References: <20210607141057.23255-1-s.hauer@pengutronix.de>
 <e787566e-33cc-0b9e-73e3-74ab23812646@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e787566e-33cc-0b9e-73e3-74ab23812646@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 00:06:09 up 110 days,  1:30, 102 users,  load average: 0.04, 0.15,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_152238_191378_ED7ADBEA 
X-CRM114-Status: GOOD (  33.99  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] net: designware: eqos: reset phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 07, 2021 at 05:59:02PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 07.06.21 16:10, Sascha Hauer wrote:
> > The designware eqos DT binding has support for specifying reset GPIOs.
> > Add support for them.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/net/designware_eqos.c | 33 +++++++++++++++++++++++++++++++++
> >  drivers/of/of_gpio.c          |  7 +++++++
> >  2 files changed, 40 insertions(+)
> > 
> > diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
> > index d2baaeaf63..0321024169 100644
> > --- a/drivers/net/designware_eqos.c
> > +++ b/drivers/net/designware_eqos.c
> > @@ -8,9 +8,11 @@
> >  
> >  #include <common.h>
> >  #include <init.h>
> > +#include <gpio.h>
> >  #include <dma.h>
> >  #include <net.h>
> >  #include <of_net.h>
> > +#include <of_gpio.h>
> >  #include <linux/iopoll.h>
> >  #include <linux/time.h>
> >  #include <linux/sizes.h>
> > @@ -189,6 +191,33 @@ struct eqos_desc {
> >  
> >  #define MII_BUSY		(1 << 0)
> >  
> > +static int eqos_phy_reset(struct device_d *dev, struct eqos *eqos)
> > +{
> > +	int phy_reset;
> > +	int ret;
> > +	u32 delays[3] = { 0, 0, 0 };
> > +
> > +	phy_reset = of_get_named_gpio(dev->device_node, "snps,reset-gpio", 0);
> > +
> > +        if (!gpio_is_valid(phy_reset))
> > +		return 0;
> 
> Whitespace is wrong.
> 
> > +
> > +	ret = gpio_request(phy_reset, "phy-reset");
> > +	if (ret)
> > +		return ret;
> 
> Can you use gpiod_get instead? This would reduce the boilerplate here.

Sure. I didn't realize I don't honour the active high/low flags the way
I did it.

> 
> > +
> > +	of_property_read_u32_array(dev->device_node,
> > +				   "snps,reset-delays-us",
> > +				   delays, ARRAY_SIZE(delays));
> > +
> 
> Looks strange to read out a delay and not act on it. I'd prefer
> waiting delays[0] here.

Yes, it looks strange, but that's because the binding doesn't make much
sense. Why should I insert a delay before doing anything?
I can a delay here, it wouldn't make much difference as all users except
one specify zero delay here anyway. For the one exception I would bet
someone has inserted the first delay without a good reason, they are all
10000.

> 
> > +	gpio_direction_active(phy_reset, 0);
> 
> This always sets logical zero, because gpio_request above doesn't
> accept a flag telling it otherwise. You'll need of_get_named_gpio_flags
> here, at which point, you'll have basically open-coded gpiod_get(), so
> you could use that.

Right.

> 
> > +	udelay(delays[1]);
> 
> Linux rounds up to 1 msec granularity here. We should do likewise.

I don't see a good reason for that. The Linux driver used udelay()
initially, that was changed to msleep as the times were too long for
busy waiting. I have no clue why the author didn't use usleep_range
instead.

> 
> > +	gpio_set_active(phy_reset, 1);
> 
> Nitpick: true/false.

Ok.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

