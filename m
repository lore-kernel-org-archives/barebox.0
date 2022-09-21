Delivery-date: Wed, 21 Sep 2022 14:23:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaylG-00BJQe-Cx
	for lore@lore.pengutronix.de; Wed, 21 Sep 2022 14:23:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaylF-000761-1l
	for lore@pengutronix.de; Wed, 21 Sep 2022 14:23:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6gg6IsYR6yVMeL9b3Yb93YwsJA1410cdxRWGL6QnueE=; b=uayfz3t2Fl6FnpqJGF1wRQ27wu
	5BsBHtROlGpte5VPQsavBklcw1QLYuiy5vbdQI7wn0WGI4Nekd1Cbnua0Dg8R79LtpFz2h+IKy4Ms
	YhOhze/k5LowPBF+B35w6mxegJmzb1PSoAMQhynl4kTnBf4TLdt+t8D7HCh2dfJRRL1P48q8wRhpT
	rBErq9bXgwvw3cg+tLYcHlTZmo7/LFZ8kF1Wmf4ezYsSnMbyaas7dISR5p5WDh/RDWCDPrARIHaKF
	YEpzWEkBWXOXp8uORXYUeebfUHLSs7KAtVKMEE9NfG07sLmTX1hmrbgr7+TClpHynkVz1g7aGoQ59
	jXj8ij+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oayjj-00BGcf-8u; Wed, 21 Sep 2022 12:21:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oayje-00BGbK-17
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 12:21:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oayja-0006yI-RU; Wed, 21 Sep 2022 14:21:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oayja-0005pH-6F; Wed, 21 Sep 2022 14:21:46 +0200
Date: Wed, 21 Sep 2022 14:21:46 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
Message-ID: <20220921122146.GD986@pengutronix.de>
References: <20220919113948.991245-1-michael.riesch@wolfvision.net>
 <20220919113948.991245-7-michael.riesch@wolfvision.net>
 <20220921091724.GB986@pengutronix.de>
 <f78a05c7-3142-626c-3b02-f969c729b40f@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f78a05c7-3142-626c-3b02-f969c729b40f@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_052150_091204_E4FD1BF7 
X-CRM114-Status: GOOD (  30.62  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 6/7] arm: rockchip: rk3568: refactor common
 rk3568_start method
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Sep 21, 2022 at 01:57:25PM +0200, Michael Riesch wrote:
> Hi Sascha,
> 
> On 9/21/22 11:17, Sascha Hauer wrote:
> > On Mon, Sep 19, 2022 at 01:39:47PM +0200, Michael Riesch wrote:
> >> After the removal of the IO domain configuration code, the low-level
> >> initialization is the same for all RK356x boards. Add a common
> >> method rk3568_start to remove this code duplication.
> >>
> >> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> >> ---
> >>  arch/arm/boards/pine64-quartz64/lowlevel.c    | 30 +----------------
> >>  arch/arm/boards/radxa-rock3/lowlevel.c        | 27 ---------------
> >>  .../arm/boards/rockchip-rk3568-evb/lowlevel.c | 33 +------------------
> >>  .../arm/mach-rockchip/include/mach/rockchip.h |  1 +
> >>  arch/arm/mach-rockchip/rk3568.c               | 24 ++++++++++++++
> >>  5 files changed, 27 insertions(+), 88 deletions(-)
> >>
> >> diff --git a/arch/arm/boards/pine64-quartz64/lowlevel.c b/arch/arm/boards/pine64-quartz64/lowlevel.c
> >> index b295885522..e1beb3e624 100644
> >> --- a/arch/arm/boards/pine64-quartz64/lowlevel.c
> >> +++ b/arch/arm/boards/pine64-quartz64/lowlevel.c
> >> @@ -1,39 +1,11 @@
> >>  // SPDX-License-Identifier: GPL-2.0-only
> >>  #include <common.h>
> >> -#include <linux/sizes.h>
> >> -#include <asm/barebox-arm-head.h>
> >>  #include <asm/barebox-arm.h>
> >> -#include <mach/hardware.h>
> >> -#include <mach/atf.h>
> >> -#include <debug_ll.h>
> >>  #include <mach/rockchip.h>
> >>  
> >>  extern char __dtb_rk3566_quartz64_a_start[];
> >>  
> >> -static noinline void start_quartz64(void *fdt)
> >> -{
> >> -	/*
> >> -	 * Image execution starts at 0x0, but this is used for ATF and
> >> -	 * OP-TEE later, so move away from here.
> >> -	 */
> >> -	if (current_el() == 3)
> >> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> >> -	else
> >> -		relocate_to_current_adr();
> >> -
> >> -	setup_c();
> >> -
> >> -	if (current_el() == 3) {
> >> -		rk3568_lowlevel_init();
> >> -		rk3568_atf_load_bl31(fdt);
> >> -		/* not reached */
> >> -	}
> >> -
> >> -	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM,
> >> -			  fdt);
> >> -}
> >> -
> >>  ENTRY_FUNCTION(start_quartz64a, r0, r1, r2)
> >>  {
> >> -	start_quartz64(__dtb_rk3566_quartz64_a_start);
> >> +	rk3568_start(__dtb_rk3566_quartz64_a_start);
> >>  }
> > 
> > Here __dtb_rk3566_quartz64_a_start is accessed before setup_c() has been
> > called. That is not allowed, see the patch I just sent.
> 
> Does the refactoring make sense to you in general? Can I change it to
> 
> ENTRY_FUNCTION(start_my_fancy_board, r0, r1, r2)
> {
> 	setup_c();
> 	rk3568_start(__dtb_my_fancy_board_start);
> }

Well it's not only setup_c() but also the relocate_to_adr_full() or
relocate_to_current_adr() part that has to be called before setup_c().

At that point there is not much left to factor out to a common function.

Unless you want to turn this into preprocessor macros (and I don't
recommand doing that) my suggestion is that we just live with this bit
of code duplication.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


