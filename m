Delivery-date: Wed, 18 Mar 2026 11:33:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2oD1-0029Vq-0F
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 11:33:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2oD0-0007KS-F8
	for lore@pengutronix.de; Wed, 18 Mar 2026 11:33:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iV0i2ceK483ljH7nP9Ajrgf0maRmretnvoVHYEswPV8=; b=nuDbzbNT+du6N5Q6OJ8sYkXhlv
	A1LUbLIqjEFHkDnV1nLb0DmMZsRE6CbofOckMJC/Aon15fQP1Xzkm2hZoufyEQLgPMmeWKAIy/Wd/
	2uyusr3HJ1tYAj147Pl0auei2WN6o5XjQxCuXVaNuVD+xJy375DjUqwUh+1bmKyY80jaGvuXEOA9Y
	FjYpoTb7BBYekuVCe0WJXVvPeM0ZdiDGrKtsKWiHtNchX81+kDBRiqrRC2cycrKUUzKYxRsQPO03B
	JqbvEHyAmMthw7ns5AXjR1Zv6eZK1sm7peUGHbUkgqLHdq3Kmfpg2MgMp+wmkd+6DnLZ9ievICmqi
	VhvMNjJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2oCb-00000008DJz-1sHa;
	Wed, 18 Mar 2026 10:32:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2oCZ-00000008DJT-1gtC
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 10:32:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w2oCX-0007Eh-OK; Wed, 18 Mar 2026 11:32:33 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w2oCX-000tM3-1l;
	Wed, 18 Mar 2026 11:32:33 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w2oCX-000000098ee-1tXt;
	Wed, 18 Mar 2026 11:32:33 +0100
Date: Wed, 18 Mar 2026 11:32:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <abp_QTdP5UyvhdXq@pengutronix.de>
References: <20260317134755.3184029-1-s.hauer@pengutronix.de>
 <zr3s6fhjqpwnfzu5oat3bk2qniatbjp246qlazxz7cluu5qh3p@z4kbl43wq2je>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <zr3s6fhjqpwnfzu5oat3bk2qniatbjp246qlazxz7cluu5qh3p@z4kbl43wq2je>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_033235_439733_60107B89 
X-CRM114-Status: GOOD (  26.24  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvmem: rockchip-otp: implement SoC UID reading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Mar 17, 2026 at 10:44:32PM +0100, Marco Felsch wrote:
> Hi Sascha,
> 
> On 26-03-17, Sascha Hauer wrote:
> > The Rockchip SoCs supported by the rockchip-otp driver have a SoC UID in
> > the OTP data. Read it out and forward it to barebox. The raw SoC UID
> > goes through some crc32 code before it is used. This is based on U-Boot
> > code which itself is based on the Rockchip Downstream Linux support.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/nvmem/rockchip-otp.c | 54 ++++++++++++++++++++++++++++++++++--
> >  1 file changed, 51 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
> > index d2145bba52..041d628480 100644
> > --- a/drivers/nvmem/rockchip-otp.c
> > +++ b/drivers/nvmem/rockchip-otp.c
> > @@ -9,6 +9,7 @@
> >  #include <common.h>
> >  #include <driver.h>
> >  #include <init.h>
> > +#include <crc.h>
> >  #include <of.h>
> >  #include <of_device.h>
> >  #include <linux/clk.h>
> > @@ -86,6 +87,7 @@ struct rockchip_data {
> >  	const char * const *clks;
> >  	int num_clks;
> >  	int (*reg_read)(void *ctx, unsigned int reg, void *val, size_t val_size);
> > +	int cpuid_offset;
> 		^
> Would be nice to have it as function hook, like the reg_read() in case
> RK SoCs find just another way to readout the ID in the future or the ID
> gets more bits (like NXP did for the i.MX8MP).
> 
> In such cases the function hook is more future proof.

I think this is easy enough to refactor once we get in this situation
and once we really know in which way we have to adjust.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


