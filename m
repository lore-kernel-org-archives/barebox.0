Delivery-date: Thu, 04 May 2023 12:10:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puVuT-004Qq3-Om
	for lore@lore.pengutronix.de; Thu, 04 May 2023 12:10:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puVuR-0001GH-S0
	for lore@pengutronix.de; Thu, 04 May 2023 12:10:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ixa15FCX+6N9hpnkOcDKI5zSP2oAWJ8JXbWbvr++jVY=; b=BCche8Ew8QG9+TtYhcf5BgMW9Z
	NTqYeq+8D0vfknaMd8Oa3kGjZC6eiyX+gPaDCR6ib6D1cX4E9ixI1qmed4skd0AOvWTqC7JZCWd1B
	6NK+0oWCyaPL6kaXJxAqSy5bhki6bdc59VmUJAYH3vryWSp2O28QkBXtgDuPzMtrcokyIB6w4UhzU
	lTjThD6I4HxsW5zsrbeTlTUqy1MgKc9nLaC584myn9kRY0FFpqaTik9kIVpniYRC5hj/fqt6Ujv5n
	RYe3lcdygbEgkZe9ygwLfcpq8jcwsMruwsEVV9d3ZbNECf7f97pzE5ufDU1mNhCDM15p8bnZM5QxG
	PqOiTUPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puVtG-007NKs-2v;
	Thu, 04 May 2023 10:08:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puVtE-007NKL-05
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 10:08:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puVtC-00018M-Dv; Thu, 04 May 2023 12:08:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puVtB-0006GT-SM; Thu, 04 May 2023 12:08:41 +0200
Date: Thu, 4 May 2023 12:08:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230504100841.GQ29365@pengutronix.de>
References: <20230504081745.305841-1-s.hauer@pengutronix.de>
 <20230504081745.305841-19-s.hauer@pengutronix.de>
 <c134a95a-f454-1f53-cc65-bfebd86e4159@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c134a95a-f454-1f53-cc65-bfebd86e4159@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_030844_061381_ECFEE706 
X-CRM114-Status: GOOD (  23.01  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 18/18] ARM: rockchip: Add Radxa ROCK 5B support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 04, 2023 at 11:36:55AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 04.05.23 10:17, Sascha Hauer wrote:
> > Add support for the Radxa ROCK 5B board.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/Makefile               |   1 +
> >  arch/arm/boards/radxa-rock5/.gitignore |   1 +
> >  arch/arm/boards/radxa-rock5/Makefile   |   3 +
> >  arch/arm/boards/radxa-rock5/board.c    |  55 +++++++++++++
> >  arch/arm/boards/radxa-rock5/lowlevel.c |  25 ++++++
> >  arch/arm/dts/Makefile                  |   1 +
> >  arch/arm/dts/rk3588-rock-5b.dts        | 110 +++++++++++++++++++++++++
> >  arch/arm/mach-rockchip/Kconfig         |   6 ++
> >  images/Makefile.rockchip               |   7 ++
> 
> Can you enable it in the appropriate defconfigs as well?

Yes, sure.

> > +static int rock5_probe(struct device *dev)
> > +{
> > +	enum bootsource bootsource = bootsource_get();
> > +	int instance = bootsource_get_instance();
> > +	const struct rock5_model *model;
> > +
> > +	model = device_get_match_data(dev);
> > +
> > +	barebox_set_model(model->name);
> 
> This can be set in the DT via /model.
> 
> > +	barebox_set_hostname(model->shortname);
> 
> This would be rock-5b with the current machine compatible.
> Why set it in board code?

Wrong template copied. I'll just remove these lines.

> > +#include <arm64/rockchip/rk3588-rock-5b.dts>
> > +#include "rk3588.dtsi"
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +
> > +/ {
> > +	aliases {
> > +		mmc1 = &sdmmc;
> 
> Are there no aliases in the upstream DT? And why only
> mmc1 and not mmc0?

The upstream dts has:

		mmc0 = &sdhci;

sdmmc is not yet supported upstream, it's added in
arch/arm/dts/rk3588s.dtsi.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


