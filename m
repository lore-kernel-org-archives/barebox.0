Delivery-date: Wed, 13 Nov 2024 09:43:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tB8xs-001Mkb-2q
	for lore@lore.pengutronix.de;
	Wed, 13 Nov 2024 09:43:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tB8xs-0007DR-7O
	for lore@pengutronix.de; Wed, 13 Nov 2024 09:43:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cqGjIGmCY3doOQ7X+b7gGgv2phFbCSoZGSQhLQg86hU=; b=2q7pFUGf9N5ZkW2lpnvAaHi4F7
	LVNqdwSCHJVBL8aNDd8H5RTlSf61DRAXHve5+T4uKngS24cU33D65H6Y2EPjsx+I/YByPFUqHFyEo
	jcu0Xz0Zz/5m8uSKUzE5sw0GybRInOC20JF6bBEq/ZvZ9WNPb7cTxPnCvBCaocUyu85vKFz85hheO
	Oi5mxmQtRfTPCw1BmlqdBwnykV5IMcSHy094uqb0wHr6XzjlRt4FSf5rygMzCuqS9IOCBTSIXmmTD
	FNkE7Rwi/j3lp4TlwyzS83lt480s3b/Nx/4PX4oBwM/76jMb1eTc/RfLNkreruJ6j3Y2qZLfbO3GK
	iZzmY5cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8xO-000000068R0-2kPW;
	Wed, 13 Nov 2024 08:42:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8xM-000000068Qg-2rCV
	for barebox@lists.infradead.org;
	Wed, 13 Nov 2024 08:42:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tB8xJ-00076G-VP; Wed, 13 Nov 2024 09:42:29 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tB8xJ-000Y2x-2M;
	Wed, 13 Nov 2024 09:42:29 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tB8xJ-009dZ5-26;
	Wed, 13 Nov 2024 09:42:29 +0100
Date: Wed, 13 Nov 2024 09:42:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
Message-ID: <ZzRmdRndcIhe9D88@pengutronix.de>
References: <20241107145722.5145-1-jmaselbas@zdiv.net>
 <20241107145722.5145-4-jmaselbas@zdiv.net>
 <Zy3qa6TIqOYksP1K@pengutronix.de>
 <D5GR0OVKQLUS.3MJMS7VQJ356L@zdiv.net>
 <Zy4LSAP1EC_yQHH6@pengutronix.de>
 <D5KBOYOWSVP6.N4RAVEQKZM4U@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <D5KBOYOWSVP6.N4RAVEQKZM4U@zdiv.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_004232_742491_E5E00E72 
X-CRM114-Status: GOOD (  41.92  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/6] clk: Add clock driver for sun50i-a64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Nov 12, 2024 at 04:58:49PM +0100, Jules Maselbas wrote:
> resent, as i forgot barebox ml in CC
> 
> On Fri Nov 8, 2024 at 1:59 PM CET, Sascha Hauer wrote:
> > On Fri, Nov 08, 2024 at 12:08:45PM +0100, Jules Maselbas wrote:
> > > Hi Sascha,
> > >
> > > On Fri Nov 8, 2024 at 11:39 AM CET, Sascha Hauer wrote:
> > > > Hi Jules,
> > > >
> > > > On Thu, Nov 07, 2024 at 03:57:19PM +0100, Jules Maselbas wrote:
> > > > > Clock driver adapted from Linux.
> > > > > The pll-cpux is set to 816MHz and pll-periph0-2x is set to 1.2GHz.
> > > >
> > > > From which driver did you adapt this from? I tried copying
> > > > drivers/clk/sunxi-ng/ccu-sun50i-a64.c from Linux over your driver and it
> > > > looks quite different.
> > > Yes this is adapted from drivers/clk/sunxi-ng/ccu-sun50i-a64.c, but it is very
> > > different. This is a very stripped down version. I wanted to avoid having to
> > > porting all the clock/gate/div code for sunxi and use as much as possible the
> > > one available in barebox.
> > >
> > > > Would it be possible to get closer to the Linux driver? This would pay
> > > > off once we want to do an update from Linux.
> > > Humm...
> > > I could try to get it closer, i would like to not having to copy all the ccu*
> > > drivers, but maybe i could define barebox version of SUNXI_CCU_* macros
> >
> > In my experience Linux clk drivers fit quite nicely into barebox when
> > just blindly throwing the code into it. I haven't got any experience
> > with the allwinner clk code though, so your mileage may vary.
> 
> Allwinner clk driver doesn't uses any common clk such as generic div/mux/gate,
> but redefines a lot of different small clk driver.
> 
> I tried to port the Allwinner clk into barebox, but it requires some changes:
>  - get_parent function signatures doesn't match barebox's callback signatures
>  - include <linux/delay.h> is missing and should include clock.h
>  - clk drivers uses `struct notifier_block` which isn't supported
>  - clk drivers uses get_rate_range which isn't supported either

Yes, there are some more, like we don't support determine_rate and
likely other things as well.

> 
> > Putting the (mostly) unmodified versions into barebox has the advantage
> > that updating from Linux is easy and adding new SoC support is easy as
> > well.
> >
> > That said, it's fine to have heavily modified ckl driver versions in
> > barebox and we can try that if you like. We can always revisit this
> > decision should we have to.
> 
> I think that right now i don't have the energy to look further into porting
> the Linux sunxi clock code to barebox.
> I am fine with keeping this modified clk driver.
> However, i would like for the V2 to put some functions into a common file
> so they can be shared with other sunxi SoC.

Ok, let's go for it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


