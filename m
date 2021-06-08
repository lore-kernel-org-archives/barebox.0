Delivery-date: Tue, 08 Jun 2021 11:00:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqXag-0002KA-9R
	for lore@lore.pengutronix.de; Tue, 08 Jun 2021 11:00:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqXaf-0003mY-6B
	for lore@pengutronix.de; Tue, 08 Jun 2021 11:00:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcFXbrwWrD5hfbIIR3X7mrvZSVUmLJqYOi892StW2kY=; b=O9pdFEByStFg5L
	kP8j2qFICBE1NSB4WUTL726qQb9TsMo87eEAM9wmmzxyV0/ihpfOz8YDlegG/Sgu74zkTagJO/HHu
	Z4hg5CP2UhAlM1mHAZYonuoiNPINyHb5wJJz0YKtWNS9hAN9jjSPwJzhqhYoOO6r4TJvkX/ElhPBH
	kxwH6ikR2nEwJZg1BOixCiXSrtoX9RBkKSCwo6F29ZRHUmON4LIQUqlh8GuNy0rQxLihVJ3EMIl5L
	42v58MZ9a297wUmXf3ilDR6DV8osf10phdVycOECg8p3jYyeY0gj7H/uAlbtdpSnaeCf0KNGysytV
	dDb0ajeq6QCfJ/zC0lkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqXZ8-007Du0-1P; Tue, 08 Jun 2021 08:58:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqXZ0-007DrL-HQ
 for barebox@lists.infradead.org; Tue, 08 Jun 2021 08:58:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqXYv-0003Yb-Me; Tue, 08 Jun 2021 10:58:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqXYv-0003mS-Cv; Tue, 08 Jun 2021 10:58:17 +0200
Date: Tue, 8 Jun 2021 10:58:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210608085817.GD5267@pengutronix.de>
References: <20210607141057.23255-1-s.hauer@pengutronix.de>
 <e787566e-33cc-0b9e-73e3-74ab23812646@pengutronix.de>
 <20210607222233.GB5267@pengutronix.de>
 <2166dc52-64da-14bb-987c-7000c31c6882@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2166dc52-64da-14bb-987c-7000c31c6882@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:27:40 up 110 days, 11:51, 116 users,  load average: 0.08, 0.08,
 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_015822_622167_E76E5F5A 
X-CRM114-Status: GOOD (  44.49  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] net: designware: eqos: reset phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 08, 2021 at 09:31:03AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 08.06.21 00:22, Sascha Hauer wrote:
> > On Mon, Jun 07, 2021 at 05:59:02PM +0200, Ahmad Fatoum wrote:
> >> Hello Sascha,
> >>
> >> On 07.06.21 16:10, Sascha Hauer wrote:
> >>> The designware eqos DT binding has support for specifying reset GPIOs.
> >>> Add support for them.
> >>>
> >>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >>> ---
> >>>  drivers/net/designware_eqos.c | 33 +++++++++++++++++++++++++++++++++
> >>>  drivers/of/of_gpio.c          |  7 +++++++
> >>>  2 files changed, 40 insertions(+)
> >>>
> >>> diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
> >>> index d2baaeaf63..0321024169 100644
> >>> --- a/drivers/net/designware_eqos.c
> >>> +++ b/drivers/net/designware_eqos.c
> >>> @@ -8,9 +8,11 @@
> >>>  
> >>>  #include <common.h>
> >>>  #include <init.h>
> >>> +#include <gpio.h>
> >>>  #include <dma.h>
> >>>  #include <net.h>
> >>>  #include <of_net.h>
> >>> +#include <of_gpio.h>
> >>>  #include <linux/iopoll.h>
> >>>  #include <linux/time.h>
> >>>  #include <linux/sizes.h>
> >>> @@ -189,6 +191,33 @@ struct eqos_desc {
> >>>  
> >>>  #define MII_BUSY		(1 << 0)
> >>>  
> >>> +static int eqos_phy_reset(struct device_d *dev, struct eqos *eqos)
> >>> +{
> >>> +	int phy_reset;
> >>> +	int ret;
> >>> +	u32 delays[3] = { 0, 0, 0 };
> >>> +
> >>> +	phy_reset = of_get_named_gpio(dev->device_node, "snps,reset-gpio", 0);
> >>> +
> >>> +        if (!gpio_is_valid(phy_reset))
> >>> +		return 0;
> >>
> >> Whitespace is wrong.
> >>
> >>> +
> >>> +	ret = gpio_request(phy_reset, "phy-reset");
> >>> +	if (ret)
> >>> +		return ret;
> >>
> >> Can you use gpiod_get instead? This would reduce the boilerplate here.
> > 
> > Sure. I didn't realize I don't honour the active high/low flags the way
> > I did it.
> > 
> >>
> >>> +
> >>> +	of_property_read_u32_array(dev->device_node,
> >>> +				   "snps,reset-delays-us",
> >>> +				   delays, ARRAY_SIZE(delays));
> >>> +
> >>
> >> Looks strange to read out a delay and not act on it. I'd prefer
> >> waiting delays[0] here.
> > 
> > Yes, it looks strange, but that's because the binding doesn't make much
> > sense. Why should I insert a delay before doing anything?
> 
>                    .--------.
> 
>      POR --------->|R  flip |---- Regulator ----> PHY VDD
> 
>                 .->|S  flop |
> 
>                 |  `--------'
> 
>                 |   
> 
>                 |   
> 
>                 |
> 
> RESET GPIO -----'`-------------------------------> PHY Reset
> 
> (active low)
> 
> It's stupid, but it works with Linux and wouldn't with barebox
> (if PHY VDD takes too long to stabilize)... ^^'

What we are doing is:

1) RESET_GPIO has unknown state
2) gpio_request()
3) RESET_GPIO has the same unknown state
4) udelay(delays[0])
5) RESET_GPIO still has the same unknown state
6) gpio_set_active()
7) RESET_GPIO puts phy into reset

Your FLIPFLOP will also only set its output at step 7), so your
regulator stabilization time begins at 7), you would still have
to make delays[1] long enough for the regulator to stabilize and
the phy come up.
What matters here is the point where we put RESET_GPIO into a known
state. Whether you do step 4) or leave it out makes no difference.

> 
> > I can a delay here, it wouldn't make much difference as all users except
> > one specify zero delay here anyway. For the one exception I would bet
> > someone has inserted the first delay without a good reason, they are all
> > 10000.
> 
> That's probably true. I still think mimicking Linux' interpretation
> of bindings is a good general rule to follow.

As long as they make sense, yes.

> 
> >>
> >>> +	gpio_direction_active(phy_reset, 0);
> >>
> >> This always sets logical zero, because gpio_request above doesn't
> >> accept a flag telling it otherwise. You'll need of_get_named_gpio_flags
> >> here, at which point, you'll have basically open-coded gpiod_get(), so
> >> you could use that.
> > 
> > Right.
> > 
> >>
> >>> +	udelay(delays[1]);
> >>
> >> Linux rounds up to 1 msec granularity here. We should do likewise.
> > 
> > I don't see a good reason for that. The Linux driver used udelay()
> > initially, that was changed to msleep as the times were too long for
> > busy waiting. I have no clue why the author didn't use usleep_range
> > instead.
> 
> Same reason: Device trees are tested with Linux. They've a better chance
> of just working when we round up wait times the same way.

I am generally with you, but in this case the binding is very clear and
if you find a bug in the dts with this case, then be happy and fix it.

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

